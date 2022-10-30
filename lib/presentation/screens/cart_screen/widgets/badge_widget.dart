import 'package:badges/badges.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../application/cart/cart_watcher/cart_watcher_bloc.dart';

class BadgeWidget extends StatelessWidget {
  const BadgeWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CartWatcherBloc, CartWatcherState>(
      builder: (context, state) {
        return state.maybeMap(
          loadSuccess: (state) => Badge(
            showBadge: state.cart.cartItems.isNotEmpty,
            badgeColor: Colors.yellow,
            // animationType: BadgeAnimationType.scale,
            badgeContent: Text(
              state.cart.cartItems.length.toString(),
              style: const TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
            ),
            child: const Icon(Icons.shopping_cart),
          ),
          orElse: () => Container(),
        );
      },
    );
  }
}
