import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:multi_store/domain/auth/value_objects.dart';

import '../core/failures.dart';
import 'cart_item.dart';

part 'cart.freezed.dart';

@freezed
abstract class Cart implements _$Cart {
  const Cart._();

  const factory Cart({
    required Map<UniqueId, CartItem> cartItems,
  }) = _Cart;

  factory Cart.empty() => const Cart(
        cartItems: <UniqueId, CartItem>{},
      );

  ValueFailure<dynamic>? get failure {
    return cartItems.values
        .firstWhere(
          (cartItem) => cartItem.failure != null,
          orElse: () => CartItem.empty(),
        )
        .failure;
  }

  double get totalPrice {
    double total = 0;
    cartItems.forEach((prodId, cartItem) {
      total += cartItem.price.getOrCrash() * cartItem.quantity.getOrCrash();
    });
    return total;
  }
}
