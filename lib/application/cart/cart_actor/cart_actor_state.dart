part of 'cart_actor_bloc.dart';

@freezed
abstract class CartActorState with _$CartActorState {
  const factory CartActorState.initial() = _Initial;

  const factory CartActorState.actionInProgress() = _ActionInProgress;

  const factory CartActorState.actionFailure(CartFailure cartFailure) =
      _ActionFailure;

  const factory CartActorState.actionSuccess() = _ActionSuccess;
}
