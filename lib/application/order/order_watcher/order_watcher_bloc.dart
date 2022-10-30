import 'dart:async';

import 'package:dartz/dartz.dart' hide Order;
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:multi_store/domain/order/i_order_repository.dart';
import 'package:injectable/injectable.dart';

import '../../../domain/order/order.dart';
import '../../../domain/order/order_failure.dart';

part 'order_watcher_event.dart';

part 'order_watcher_state.dart';

part 'order_watcher_bloc.freezed.dart';

@Singleton()
class OrderWatcherBloc extends Bloc<OrderWatcherEvent, OrderWatcherState> {
  final IOrderRepository orderRepository;
  StreamSubscription<Either<OrderFailure, List<Order>>>?
      ordersStreamSubscription;

  OrderWatcherBloc({required this.orderRepository})
      : super(const OrderWatcherState.initial()) {
    on<OrderWatcherEvent>((event, emit) async {
      await event.map(
        watch: (e) async {
          emit(const OrderWatcherState.loadInProgress());
          await ordersStreamSubscription?.cancel();
          ordersStreamSubscription =
              orderRepository.watchAll().listen((failureOrOrder) {
            add(OrderWatcherEvent.ordersReceived(failureOrOrder));
          });
        },
        ordersReceived: (e) {
          e.failureOrOrders.fold(
            (f) => emit(OrderWatcherState.loadFailure(f)),
            (orders) => emit(OrderWatcherState.loadSuccess(orders)),
          );
        },
      );
    });
  }

  @override
  Future<void> close() async {
    await ordersStreamSubscription?.cancel();
    return super.close();
  }
}
