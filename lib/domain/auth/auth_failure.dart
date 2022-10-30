import 'package:freezed_annotation/freezed_annotation.dart';

part 'auth_failure.freezed.dart';

@freezed
abstract class AuthFailure with _$AuthFailure {
  const factory AuthFailure.cancelledByUser() = _CancelledByUser;

  const factory AuthFailure.serverError() = _ServerError;

  const factory AuthFailure.insufficientPermissions() =
      _InsufficientPermissions;

  const factory AuthFailure.unableToUpdate() = _UnableToUpdate;

  const factory AuthFailure.unexpected() = _Unexpected;

  const factory AuthFailure.userNotFound() = _UserNotFound;

  const factory AuthFailure.emailAlreadyInUse() = _EmailAlreadyInUse;

  const factory AuthFailure.invalidEmailAndPasswordCombination() =
      _InvalidEmailAndPasswordCombination;
}
