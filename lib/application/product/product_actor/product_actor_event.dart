part of 'product_actor_bloc.dart';

@freezed
abstract class ProductActorEvent with _$ProductActorEvent {
  const factory ProductActorEvent.quantityUpdated(
      String prodId, int leftNumber) = _QuantityUpdated;

  const factory ProductActorEvent.deleted(Product product) = _Deleted;
}
