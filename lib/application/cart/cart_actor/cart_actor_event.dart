part of 'cart_actor_bloc.dart';

@freezed
abstract class CartActorEvent with _$CartActorEvent {
  const factory CartActorEvent.addNewToCart(Product product) = _AddNewToCart;

  const factory CartActorEvent.increase(CartItem cartItem) = _Increase;

  const factory CartActorEvent.removeFromCart(CartItem cartItem) =
      _RemoveFromCart;

  const factory CartActorEvent.removeAll() = _RemoveAll;
}
