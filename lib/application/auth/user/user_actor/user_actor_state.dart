part of 'user_actor_bloc.dart';

@freezed
abstract class UserActorState with _$UserActorState {
  const factory UserActorState.initial() = _Initial;

  const factory UserActorState.actionInProgress() = ActionInProgress;

  const factory UserActorState.actionFailure(AuthFailure userFailure) =
  _ActionFailure;

  const factory UserActorState.actionSuccess() = _ActionSuccess;
}