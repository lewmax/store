part of 'auth_bloc.dart';

@freezed
class AuthState with _$AuthState {
  const factory AuthState.initial() = _Initial;

  const factory AuthState.authenticatedCustomer(User user) =
      _AuthenticatedCustomer;

  const factory AuthState.authenticatedSupplier(User user) =
      _AuthenticatedSupplier;

  const factory AuthState.unauthenticated() = _Unauthenticated;
}
