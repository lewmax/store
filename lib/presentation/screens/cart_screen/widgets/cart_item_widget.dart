import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../application/cart/cart_actor/cart_actor_bloc.dart';
import '../../../../domain/cart/cart_item.dart';

class CartItemWidget extends StatelessWidget {
  const CartItemWidget({
    Key? key,
    required this.cartItem,
  }) : super(key: key);

  final CartItem cartItem;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(5)),
      child: Card(
        child: Row(
          children: [
            Flexible(
              child: ClipRRect(
                borderRadius: BorderRadius.circular(5),
                child: SizedBox(
                  width: 120,
                  height: 100,
                  child: Image.network(
                    cartItem.imageUrl.getOrCrash(),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
            Flexible(
              flex: 4,
              child: Container(
                padding: const EdgeInsets.all(6.0),
                height: 100,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      cartItem.name.getOrCrash(),
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                        color: Colors.grey.shade700,
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          cartItem.price.getOrCrash().toStringAsFixed(2),
                          style: const TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.red,
                            fontSize: 16,
                          ),
                        ),
                        Container(
                          height: 35,
                          decoration: BoxDecoration(
                            color: Colors.grey.shade200,
                            borderRadius: BorderRadius.circular(15),
                          ),
                          child: Row(
                            children: [
                              IconButton(
                                onPressed: () {
                                  context.read<CartActorBloc>().add(
                                      CartActorEvent.removeFromCart(cartItem));
                                },
                                icon: Icon(
                                    cartItem.quantity.getOrCrash() == 1
                                        ? Icons.delete
                                        : Icons.remove,
                                    size: 22),
                              ),
                              Text(
                                cartItem.quantity.getOrCrash().toString(),
                                style: TextStyle(
                                  fontSize: 20,
                                  color: cartItem.quantity.getOrCrash() ==
                                          cartItem.available.getOrCrash()
                                      ? Colors.red
                                      : Colors.black,
                                ),
                              ),
                              IconButton(
                                onPressed: cartItem.quantity.getOrCrash() <
                                        cartItem.available.getOrCrash()
                                    ? () {
                                        context.read<CartActorBloc>().add(
                                              CartActorEvent.increase(cartItem),
                                            );
                                      }
                                    : null,
                                icon: const Icon(
                                  Icons.add,
                                  size: 22,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
