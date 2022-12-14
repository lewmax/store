part of 'auth_bloc.dart';

@freezed
abstract class AuthEvent with _$AuthEvent {
  const factory AuthEvent.authCheckRequested() = _AuthCheckRequested;

  const factory AuthEvent.authReceived(
      Either<AuthFailure, User> failureOrUser) = _AuthReceived;

  const factory AuthEvent.signedOut() = _SignedOut;
}
