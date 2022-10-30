import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:multi_store/application/auth/auth_bloc.dart';
import 'package:multi_store/application/cart/cart_actor/cart_actor_bloc.dart';
import 'package:multi_store/application/cart/cart_watcher/cart_watcher_bloc.dart';
import 'package:multi_store/domain/auth/user.dart';
import 'package:multi_store/domain/auth/value_objects.dart';
import 'package:multi_store/domain/order/order.dart';
import 'package:multi_store/domain/order/value_objects.dart';
import 'package:multi_store/injection.dart';
import 'package:multi_store/presentation/core/app_router.gr.dart';

import '../../../application/tab_navigation/tab_navigation_cubit.dart';
import '../../../domain/cart/cart.dart';
import '../../../domain/product/value_objects.dart';
import 'widgets/cart_list.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade200,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        centerTitle: true,
        iconTheme: const IconThemeData(
          color: Colors.black, //change your color here
        ),
        title: const Text(
          'Cart',
          style: TextStyle(color: Colors.black, fontSize: 22),
        ),
        actions: [
          IconButton(
            onPressed: () {
              showDialog(
                context: context,
                builder: (context) => AlertDialog(
                  content: const Text('Clear the cart?'),
                  actions: [
                    TextButton(
                      onPressed: () {
                        context
                            .read<CartActorBloc>()
                            .add(const CartActorEvent.removeAll());
                        Navigator.of(context).pop();
                      },
                      child: const Text('Yes'),
                    ),
                    TextButton(
                      onPressed: () {
                        Navigator.of(context).pop();
                      },
                      child: const Text('No'),
                    ),
                  ],
                ),
              );
            },
            icon: const Icon(Icons.delete_forever),
            color: Colors.black,
          ),
        ],
      ),
      body: BlocBuilder<CartWatcherBloc, CartWatcherState>(
        builder: (context, state) {
          return state.maybeMap(
            loadSuccess: (state) {
              final cart = state.cart;
              if (cart.cartItems.isEmpty) {
                return emptyCart(context);
              } else {
                return CartList(cart: cart);
              }
            },
            orElse: () => const Center(child: CircularProgressIndicator()),
          );
        },
      ),
      bottomSheet: bottomSheet(context),
    );
  }

  Widget bottomSheet(BuildContext context) {
    final cart = context.watch<CartWatcherBloc>().state.maybeMap(
        loadSuccess: (state) => state.cart, orElse: () => Cart.empty());
    final totalPrice = cart.totalPrice;
    return Padding(
      padding: const EdgeInsets.all(10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              const Text(
                'Total: \$ ',
                style: TextStyle(fontSize: 18, color: Colors.black),
              ),
              Text(
                totalPrice.toStringAsFixed(2),
                style: const TextStyle(
                  fontSize: 20,
                  color: Colors.red,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
          Container(
            height: 40,
            width: MediaQuery.of(context).size.width * 0.45,
            decoration: BoxDecoration(
              color: Colors.yellow,
              borderRadius: BorderRadius.circular(25),
            ),
            child: MaterialButton(
              onPressed: totalPrice == 0.0
                  ? null
                  : () {
                      final user = context.read<AuthBloc>().state.maybeMap(
                            authenticatedCustomer: (s) => s.user,
                            authenticatedSupplier: (s) => s.user,
                            orElse: () => User.empty(),
                          );
                      final order = Order(
                        id: UniqueId(),
                        orderDate: DateTime.now(),
                        deliveryDate:
                            DateTime.now().add(const Duration(days: 7)),
                        deliveryStatus:
                            DeliveryStatus(DeliverStatuses.Unpaid.toString()),
                        paymentStatus:
                            PaymentStatus(PaymentStatuses.Unpaid.toString()),
                        name: user.fullName,
                        email: user.emailAddress,
                        phone: Phone(user.phone),
                        address: Address(user.address),
                        orderImageUrl:
                            cart.cartItems.values.toList()[0].imageUrl,
                        orderItems: ListMin1(cart.cartItems.values.toList()),
                        deliveryFee: Price(2),
                      );
                      getIt<AppRouter>()
                          .push(CheckoutScreenRoute(order: order));
                    },
              child: const Text('CHECK OUT'),
            ),
          )
        ],
      ),
    );
  }

  Widget emptyCart(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text('Your cart is empty', style: TextStyle(fontSize: 30)),
          const SizedBox(height: 50),
          Material(
            color: Colors.lightBlueAccent,
            borderRadius: BorderRadius.circular(50),
            child: MaterialButton(
              minWidth: MediaQuery.of(context).size.width * 0.6,
              onPressed: () {
                context.read<TabNavigationCubit>().changeTabIndex(0);
              },
              child: const Text(
                'Continue shopping',
                style: TextStyle(fontSize: 18, color: Colors.white),
              ),
            ),
          )
        ],
      ),
    );
  }
}
