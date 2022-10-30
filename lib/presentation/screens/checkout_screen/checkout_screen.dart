import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:multi_store/application/cart/cart_actor/cart_actor_bloc.dart';
import 'package:multi_store/application/order/order_form_bloc/order_form_bloc.dart';
import 'package:multi_store/application/tab_navigation/tab_navigation_cubit.dart';
import 'package:multi_store/domain/order/order.dart';
import 'package:multi_store/domain/order/value_objects.dart';
import 'package:multi_store/injection.dart';

import 'sub_screens/select_payment_screen.dart';
import 'sub_screens/user_info_screen.dart';

class CheckoutScreen extends StatelessWidget {
  final Order order;

  const CheckoutScreen({Key? key, required this.order}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) =>
          getIt<OrderFormBloc>()..add(OrderFormEvent.initialised(order)),
      child: BlocListener<OrderFormBloc, OrderFormState>(
        listenWhen: (oldState, newState) =>
            oldState.isSaving != newState.isSaving,
        listener: (context, state) {
          state.order.failure?.maybeMap(
            invalidEmail: (_) => _showSnackBar(context, 'invalidEmail'),
            invalidFullName: (_) => _showSnackBar(context, 'invalidFullName'),
            invalidPhone: (_) => _showSnackBar(context, 'invalidPhone'),
            invalidAddress: (_) => _showSnackBar(context, 'invalidAddress'),
            invalidImageUrl: (_) => _showSnackBar(context, 'invalidImageUrl'),
            invalidDouble: (_) => _showSnackBar(context, 'invalid price'),
            invalidListTooShort: (_) =>
                _showSnackBar(context, 'invalid orders list'),
            invalidDeliveryStatus: (s) =>
                _showSnackBar(context, 'invalidDeliveryStatus'),
            invalidPaymentStatus: (s) =>
                _showSnackBar(context, 'invalidPaymentStatus'),
            orElse: () => _showSnackBar(context, 'error'),
          );
        },
        child: BlocConsumer<OrderFormBloc, OrderFormState>(
          listenWhen: (oldState, newState) =>
              oldState.saveFailureOrSuccess != newState.saveFailureOrSuccess,
          listener: (context, state) {
            state.saveFailureOrSuccess?.fold(
              (f) {
                f.map(
                  paymentFailed: (f) =>
                      _showSnackBar(context, 'Payment Failed'),
                  unexpected: (_) => _showSnackBar(context, 'Unexpected Error'),
                  insufficientPermissions: (_) =>
                      _showSnackBar(context, 'Insufficient Permissions'),
                  unableToUpdate: (_) =>
                      _showSnackBar(context, 'Unexpected Error'),
                );
              },
              (r) {
                getIt<CartActorBloc>().add(const CartActorEvent.removeAll());
                Navigator.pop(context);
                getIt<TabNavigationCubit>().changeTabIndex(0);
                _showSnackBar(context, 'Successful Order');
              },
            );
          },
          builder: (context, state) {
            return Material(
              child: SafeArea(
                child: Scaffold(
                  backgroundColor: Colors.grey.shade200,
                  appBar: AppBar(
                    elevation: 0,
                    backgroundColor: Colors.grey.shade200,
                    centerTitle: true,
                    iconTheme: const IconThemeData(
                      color: Colors.black, //change your color here
                    ),
                    title: const Text(
                      'Order Confirmation',
                      style: TextStyle(fontSize: 22, color: Colors.black),
                    ),
                  ),
                  body: Padding(
                    padding: const EdgeInsets.fromLTRB(16, 0, 16, 70),
                    child: Column(
                      children: [
                        userInfo(context, state.order),
                        const SizedBox(height: 10),
                        selectPayment(context, state.order),
                        const SizedBox(height: 10),
                        orderItems(state.order),
                        const SizedBox(height: 10),
                        summary(state.order),
                      ],
                    ),
                  ),
                  bottomSheet: bottomSheet(context, state),
                ),
              ),
            );
          },
        ),
      ),
    );
  }

  Widget bottomSheet(BuildContext context, OrderFormState state) {
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
                order.totalSum.toStringAsFixed(2),
                style: const TextStyle(
                  fontSize: 20,
                  color: Colors.red,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
          if (state.isSaving)
            const CircularProgressIndicator()
          else
            Container(
              height: 40,
              width: MediaQuery.of(context).size.width * 0.45,
              decoration: BoxDecoration(
                color: Colors.yellow,
                borderRadius: BorderRadius.circular(25),
              ),
              child: MaterialButton(
                onPressed: order.totalSum == 0.0
                    ? null
                    : () {
                        context
                            .read<OrderFormBloc>()
                            .add(const OrderFormEvent.saved());
                      },
                child: const Text('Pay Now'),
              ),
            ),
        ],
      ),
    );
  }

  Container summary(Order order) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        color: Colors.white,
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(
          vertical: 10,
          horizontal: 16,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                const Text('Subtotal:', style: TextStyle(fontSize: 16)),
                const Spacer(),
                Text(
                  '\$ ${order.subTotalPrice.toStringAsFixed(2)}',
                  style: const TextStyle(fontSize: 16),
                ),
              ],
            ),
            Row(
              children: [
                const Text(
                  'Shipping fee:',
                  style: TextStyle(fontSize: 16),
                ),
                const Spacer(),
                Text(
                  '\$ ${order.deliveryFee.getOrCrash().toStringAsFixed(2)}',
                  style: const TextStyle(fontSize: 16),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget orderItems(Order order) {
    return Expanded(
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          color: Colors.white,
        ),
        child: ListView.builder(
          itemCount: order.orderItems.length,
          itemBuilder: (context, index) {
            final orderItem =
                order.orderItems.value.fold((f) => null, (r) => r)?[index];
            if (orderItem == null) {
              return Container();
            } else {
              return Container(
                margin: const EdgeInsets.all(6),
                decoration: BoxDecoration(
                  border: Border.all(width: 0.3),
                  borderRadius: BorderRadius.circular(15),
                ),
                height: 100,
                child: Row(
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(15),
                      child: SizedBox(
                        height: 100,
                        width: 100,
                        child: Image.network(
                          orderItem.imageUrl.getOrCrash(),
                        ),
                      ),
                    ),
                    Flexible(
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          children: [
                            Text(
                              orderItem.name.getOrCrash(),
                              overflow: TextOverflow.ellipsis,
                              maxLines: 2,
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w400,
                                color: Colors.grey.shade600,
                              ),
                            ),
                            const SizedBox(height: 10),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  orderItem.price
                                      .getOrCrash()
                                      .toStringAsFixed(2),
                                  style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w400,
                                    color: Colors.grey.shade600,
                                  ),
                                ),
                                Text(
                                  'x ${orderItem.quantity.getOrCrash()}',
                                  style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w400,
                                    color: Colors.grey.shade600,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              );
            }
          },
        ),
      ),
    );
  }

  Widget selectPayment(BuildContext context, Order order) {
    String title = 'Select Payment';
    order.paymentStatus.value.fold(
      (l) => title = 'Select Payment',
      (r) {
        if (r == PaymentStatuses.CashOnDelivery) {
          title = 'Cash On Delivery';
        } else if(r == PaymentStatuses.Unpaid) {
          title = 'Visa / MasterCard';
        }
      },
    );

    return InkWell(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (_) => BlocProvider.value(
              value: BlocProvider.of<OrderFormBloc>(context),
              child: const SelectPaymentScreen(),
            ),
          ),
        );
      },
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          color: Colors.white,
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(
            vertical: 16,
            horizontal: 16,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                title,
                style: const TextStyle(fontSize: 16),
              ),
              const Icon(Icons.navigate_next),
            ],
          ),
        ),
      ),
    );
  }

  Widget userInfo(BuildContext context, Order order) {
    return InkWell(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (_) => BlocProvider.value(
              value: BlocProvider.of<OrderFormBloc>(context),
              child: const UserInfoScreen(),
            ),
          ),
        );
      },
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          color: Colors.white,
        ),
        height: 90,
        child: Padding(
          padding: const EdgeInsets.symmetric(
            vertical: 4,
            horizontal: 16,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text('Name: ${order.name.getOrCrash()}',
                      style: const TextStyle(fontSize: 16)),
                  Text('Phone: ${order.phone.value.fold((l) => '', (r) => r)}',
                      style: const TextStyle(fontSize: 16)),
                  Text(
                    'Address: ${order.address.value.fold((l) => '', (r) => r)}',
                    style: const TextStyle(fontSize: 16),
                  ),
                ],
              ),
              const Icon(Icons.navigate_next),
            ],
          ),
        ),
      ),
    );
  }

  void _showSnackBar(BuildContext context, String text) {
    ScaffoldMessenger.of(context).hideCurrentSnackBar();
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(text),
        duration: const Duration(seconds: 1),
      ),
    );
  }
}
