import 'dart:async';

import 'package:dartz/dartz.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:multi_store/domain/auth/auth_failure.dart';

import '../../domain/auth/i_auth_facade.dart';
import '../../domain/auth/i_user_repository.dart';
import '../../domain/auth/user.dart';
import '../../domain/auth/value_objects.dart';
import 'package:injectable/injectable.dart';

part 'auth_event.dart';

part 'auth_state.dart';

part 'auth_bloc.freezed.dart';

@Singleton()
class AuthBloc extends Bloc<AuthEvent, AuthState> {
  final IAuthFacade authFacade;
  final IUserRepository userRepository;

  StreamSubscription<Either<AuthFailure, User>>? _userStreamSubscription;

  AuthBloc({required this.authFacade, required this.userRepository})
      : super(const AuthState.initial()) {
    on<AuthEvent>((event, emit) async {
      await event.map(
        authCheckRequested: (e) async {
          final userId = await authFacade.getSignedInUserId();

          if (userId != null) {
            final userTypeOrFailure = await userRepository.getUserType(
              userId.getOrCrash(),
            );
            await userTypeOrFailure.fold(
              (_) async {
                emit(const AuthState.unauthenticated());
              },
              (userType) async {
                await _userStreamSubscription?.cancel();
                _userStreamSubscription = userRepository
                    .watchUser(userId, userType)
                    .listen((failureOrUser) {
                  add(AuthEvent.authReceived(failureOrUser));
                });
              },
            );
          } else {
            emit(const AuthState.unauthenticated());
          }
        },
        authReceived: (e) {
          e.failureOrUser.fold(
            (_) async => emit(const AuthState.unauthenticated()),
            (user) {
              if (user.userType.getOrCrash() == UserTypeEnum.customer) {
                emit(AuthState.authenticatedCustomer(user));
              } else {
                emit(AuthState.authenticatedSupplier(user));
              }
            },
          );
        },
        signedOut: (e) async {
          final failureOrSuccess = await authFacade.signOut();
          failureOrSuccess.fold(
            (_) {},
            (r) => emit(const AuthState.unauthenticated()),
          );
        },
      );
    });
  }

  @override
  Future<void> close() async {
    _userStreamSubscription?.cancel();
    super.close();
  }
}
