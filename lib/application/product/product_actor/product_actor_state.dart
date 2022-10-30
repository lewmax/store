part of 'product_actor_bloc.dart';

@freezed
abstract class ProductActorState with _$ProductActorState {
  const factory ProductActorState.initial() = _Initial;

  const factory ProductActorState.actionInProgress() = ActionInProgress;

  const factory ProductActorState.actionFailure(ProductFailure productFailure) =
  _ActionFailure;

  const factory ProductActorState.actionSuccess() = _ActionSuccess;
}
