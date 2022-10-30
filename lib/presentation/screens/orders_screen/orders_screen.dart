import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';
import 'package:multi_store/application/order/order_watcher/order_watcher_bloc.dart';
import 'package:multi_store/injection.dart';

class OrdersScreen extends StatelessWidget {
  const OrdersScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        centerTitle: true,
        iconTheme: const IconThemeData(
          color: Colors.black, //change your color here
        ),
        title: const Text(
          'Orders',
          style: TextStyle(color: Colors.black, fontSize: 22),
        ),
      ),
      body: BlocBuilder<OrderWatcherBloc, OrderWatcherState>(
        bloc: getIt<OrderWatcherBloc>()..add(const OrderWatcherEvent.watch()),
        builder: (context, state) {
          return state.maybeMap(
            loadSuccess: (state) {
              return ListView.builder(
                itemCount: state.orders.length,
                itemBuilder: (context, index) {
                  final order = state.orders[index];
                  return Container(
                    margin: const EdgeInsets.all(8),
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.yellow),
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: ExpansionTile(
                      title: Container(
                        constraints: const BoxConstraints(maxHeight: 80),
                        width: double.infinity,
                        child: Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(right: 15),
                              child: Container(
                                constraints: const BoxConstraints(
                                  maxHeight: 80,
                                  maxWidth: 80,
                                ),
                                child: Image.network(
                                  order.orderImageUrl.getOrCrash(),
                                ),
                              ),
                            ),
                            Flexible(
                              child: Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    order.name.getOrCrash(),
                                    overflow: TextOverflow.ellipsis,
                                    maxLines: 2,
                                    style: TextStyle(
                                      fontSize: 16,
                                      color: Colors.grey.shade600,
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text(
                                          '\$ ${order.totalSum.toStringAsFixed(2)}',
                                        ),
                                        Text('x ${order.orderItems.length}'),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      subtitle: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Text(
                            'See more',
                            style: TextStyle(fontSize: 14),
                          ),
                          Text(
                            order.deliveryStatus.getOrCrash().name,
                            style: const TextStyle(fontSize: 14),
                          ),
                        ],
                      ),
                      children: [
                        Container(
                          height: 200,
                          width: double.infinity,
                          decoration: BoxDecoration(
                            color: Colors.yellow.withOpacity(0.2),
                            borderRadius: BorderRadius.circular(15),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Name: ${order.name.getOrCrash()}',
                                  style: const TextStyle(fontSize: 15),
                                ),
                                Text(
                                  'Phone: ${order.phone.getOrCrash()}',
                                  style: const TextStyle(fontSize: 15),
                                ),
                                Text(
                                  'Email: ${order.email.getOrCrash()}',
                                  style: const TextStyle(fontSize: 15),
                                ),
                                Text(
                                  'Delivery status: ${order.deliveryStatus.getOrCrash().name}',
                                  style: const TextStyle(fontSize: 15),
                                ),
                                Text(
                                  'Payment status: ${order.paymentStatus.getOrCrash().name}',
                                  style: const TextStyle(fontSize: 15),
                                ),
                                Text(
                                  'Order date: ${DateFormat('yyyy-MM-dd, kk:mm').format(order.orderDate)}',
                                  style: const TextStyle(fontSize: 15),
                                ),
                                Text(
                                  'Delivery date: ${order.deliveryDate}',
                                  style: const TextStyle(fontSize: 15),
                                ),
                              ],
                            ),

                            // Column(
                            //   crossAxisAlignment: CrossAxisAlignment.start,
                            //   children: order.orderItems.getOrCrash().map(
                            //         (orderItem) {
                            //       return Text(orderItem.name.getOrCrash());
                            //     },
                            //   ).toList(),
                            // ),
                          ),
                        ),
                      ],
                    ),
                  );
                },
              );
            },
            orElse: () => const Center(child: CircularProgressIndicator()),
          );
        },
      ),
    );
  }
}
