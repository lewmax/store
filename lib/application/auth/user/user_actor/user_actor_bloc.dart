import 'dart:async';
import 'dart:io';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:multi_store/application/auth/auth_bloc.dart';
import 'package:multi_store/domain/auth/value_objects.dart';
import 'package:rxdart/rxdart.dart';

import '../../../../domain/auth/auth_failure.dart';
import '../../../../domain/auth/i_storage_service.dart';
import '../../../../domain/auth/i_user_repository.dart';
import '../../../../domain/auth/user.dart';
import 'package:injectable/injectable.dart';

part 'user_actor_event.dart';

part 'user_actor_state.dart';

part 'user_actor_bloc.freezed.dart';

@Injectable()
class UserActorBloc extends Bloc<UserActorEvent, UserActorState> {
  final IUserRepository userRepository;
  final IStorageService imageStorageService;

  final AuthBloc authBloc;
  StreamSubscription? streamSubscription;
  User user = User.empty();

  UserActorBloc({
    required this.userRepository,
    required this.imageStorageService,
    required this.authBloc,
  }) : super(const UserActorState.initial()) {
    streamSubscription =
        authBloc.stream.startWith(authBloc.state).listen((blocState) {
      blocState.maybeMap(
        authenticatedCustomer: (state) => user = state.user,
        authenticatedSupplier: (state) => user = state.user,
        orElse: () {},
      );
    });

    on<UserActorEvent>((event, emit) async {
      await event.map(
        editImageUrl: (e) async {
          emit(const UserActorState.actionInProgress());
          var possibleFailure = await imageStorageService.sendImage(
            image: e.image,
            folder: '',
            fileName: '',
          );
          possibleFailure.fold(
            (f) => emit(UserActorState.actionFailure(f)),
            (_) async {
              final failureOrImageUrl =
                  await imageStorageService.getDownloadURL();
              failureOrImageUrl.fold(
                (f) => emit(UserActorState.actionFailure(f)),
                (imageUrl) {
                  authBloc.state.maybeMap(
                    authenticatedCustomer: (state) {
                      final user = state.user.copyWith(imageUrl: imageUrl);
                      add(UserActorEvent.edited(user));
                    },
                    authenticatedSupplier: (state) {
                      final user = state.user.copyWith(imageUrl: imageUrl);
                      add(UserActorEvent.edited(user));
                    },
                    orElse: () => User.empty(),
                  );
                },
              );
            },
          );
        },
        editNameAddressPhone: (e) {
          emit(const UserActorState.actionInProgress());
          authBloc.state.maybeMap(
            authenticatedCustomer: (state) {
              final user = state.user.copyWith(
                  fullName: FullName(e.name),
                  phone: e.phone,
                  address: e.address);
              add(UserActorEvent.edited(user));
            },
            authenticatedSupplier: (state) {
              final user = state.user.copyWith(
                  fullName: FullName(e.name),
                  phone: e.phone,
                  address: e.address);
              add(UserActorEvent.edited(user));
            },
            orElse: () => User.empty(),
          );
        },
        editEmailAddress: (e) {
          emit(const UserActorState.actionInProgress());
          authBloc.state.maybeMap(
            authenticatedCustomer: (state) {
              final user = state.user.copyWith(
                emailAddress: EmailAddress(e.emailAddress),
              );
              add(UserActorEvent.edited(user));
            },
            authenticatedSupplier: (state) {
              final user = state.user.copyWith(
                emailAddress: EmailAddress(e.emailAddress),
              );
              add(UserActorEvent.edited(user));
            },
            orElse: () => User.empty(),
          );
        },
        toggleFavorites: (e) {
          emit(const UserActorState.actionInProgress());
          var favorites = [...user.favorites];
          if (favorites.contains(e.prodId)) {
            favorites.remove(e.prodId);
          } else {
            favorites.add(e.prodId);
          }
          add(UserActorEvent.edited(user.copyWith(favorites: favorites)));
        },
        addToSubscriptions: (e) {
          emit(const UserActorState.actionInProgress());
          var subscriptions = [...user.storesSubscription];
          if (subscriptions.contains(e.storeId)) {
            subscriptions.remove(e.storeId);
          } else {
            subscriptions.add(e.storeId);
          }
          add(UserActorEvent.edited(
            user.copyWith(storesSubscription: subscriptions),
          ));
        },
        edited: (e) async {
          final possibleFailure = await userRepository.update(e.user);
          possibleFailure.fold(
            (f) => emit(UserActorState.actionFailure(f)),
            (_) => emit(const UserActorState.actionSuccess()),
          );
        },
      );
    });
  }

  @override
  Future<void> close() {
    streamSubscription?.cancel();
    return super.close();
  }
}
