import 'dart:async';

import 'package:dartz/dartz.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:rxdart/rxdart.dart';

import '../../../../domain/auth/auth_failure.dart';
import '../../../../domain/auth/i_user_repository.dart';
import '../../../../domain/auth/user.dart';
import 'package:injectable/injectable.dart';

import '../../auth_bloc.dart';

part 'users_watcher_event.dart';

part 'users_watcher_state.dart';

part 'users_watcher_bloc.freezed.dart';

@LazySingleton()
class UsersWatcherBloc extends Bloc<UsersWatcherEvent, UsersWatcherState> {
  final IUserRepository userRepository;
  StreamSubscription<Either<AuthFailure, List<User>>>? _userStreamSubscription;

  final AuthBloc authBloc;
  StreamSubscription? streamSubscription;
  var storeSubscriptions = <String>[];

  UsersWatcherBloc({required this.authBloc, required this.userRepository})
      : super(const UsersWatcherState.initial()) {
    streamSubscription =
        authBloc.stream.startWith(authBloc.state).listen((blocState) {
      blocState.maybeMap(
        authenticatedCustomer: (state) =>
            storeSubscriptions = state.user.storesSubscription,
        authenticatedSupplier: (state) =>
            storeSubscriptions = state.user.storesSubscription,
        orElse: () {},
      );
      state.maybeMap(
        loadSuccess: (state) {
          add(UsersWatcherEvent.usersReceived(right(state.users)));
        },
        orElse: () {},
      );
    });

    on<UsersWatcherEvent>((event, emit) async {
      await event.map(
        watchUsers: (e) async {
          emit(const UsersWatcherState.loadInProgress());
          await _userStreamSubscription?.cancel();
          _userStreamSubscription =
              userRepository.watchUsers().listen((failureOrUsers) {
            add(UsersWatcherEvent.usersReceived(failureOrUsers));
          });
        },
        usersReceived: (e) {
          e.failureOrUsers.fold(
            (f) => emit(UsersWatcherState.loadFailure(f)),
            (usersList) {
              final users = usersList
                  .map(
                    (store) =>
                        storeSubscriptions.contains(store.id.getOrCrash())
                            ? store.copyWith(isSubscribed: true)
                            : store.copyWith(isSubscribed: false),
                  )
                  .toList();
              emit(UsersWatcherState.loadSuccess(users));
            },
          );
        },
      );
    });
  }

  @override
  Future<void> close() async {
    await streamSubscription?.cancel();
    await _userStreamSubscription?.cancel();
    return super.close();
  }
}
