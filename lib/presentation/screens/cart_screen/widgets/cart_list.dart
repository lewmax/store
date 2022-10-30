import 'package:flutter/material.dart';

import '../../../../domain/cart/cart.dart';
import 'cart_item_widget.dart';

class CartList extends StatelessWidget {
  final Cart cart;

  const CartList({super.key, required this.cart});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      padding: const EdgeInsets.only(top: 8, left: 8, right: 8, bottom: 50),
      itemCount: cart.cartItems.length,
      itemBuilder: (context, index) {
        final cartItem = cart.cartItems.values.toList()[index];
        return CartItemWidget(cartItem: cartItem);
      },
    );
  }
}
