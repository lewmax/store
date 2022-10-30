part of 'order_actor_bloc.dart';

@freezed
abstract class OrderActorState with _$OrderActorState {
  const factory OrderActorState.initial() = _Initial;

  const factory OrderActorState.actionInProgress() = _ActionInProgress;

  const factory OrderActorState.actionFailure(OrderFailure orderFailure) =
  _ActionFailure;

  const factory OrderActorState.actionSuccess() = _ActionSuccess;
}