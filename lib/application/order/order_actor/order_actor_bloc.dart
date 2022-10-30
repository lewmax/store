import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:multi_store/application/order/order_watcher/order_watcher_bloc.dart';
import 'package:multi_store/domain/order/i_order_repository.dart';
import 'package:multi_store/domain/order/order_failure.dart';
import 'package:injectable/injectable.dart';
import 'package:rxdart/rxdart.dart';

import '../../../domain/order/order.dart';

part 'order_actor_event.dart';

part 'order_actor_state.dart';

part 'order_actor_bloc.freezed.dart';

@Injectable()
class OrderActorBloc extends Bloc<OrderActorEvent, OrderActorState> {
  final IOrderRepository orderRepository;

  final OrderWatcherBloc orderWatcherBloc;
  StreamSubscription? streamSubscription;
  var orders = <Order>[];

  OrderActorBloc(
      {required this.orderRepository, required this.orderWatcherBloc})
      : super(const OrderActorState.initial()) {
    streamSubscription = orderWatcherBloc.stream
        .startWith(orderWatcherBloc.state)
        .listen((blocState) {
      blocState.maybeMap(
        loadSuccess: (state) => orders = state.orders,
        orElse: () {},
      );
    });
    on<OrderActorEvent>((event, emit) async {
      await event.map(
        create: (e) async {
          emit(const OrderActorState.actionInProgress());
          final possibleFailure = await orderRepository.create(e.order);
          possibleFailure.fold(
            (f) => emit(OrderActorState.actionFailure(f)),
            (_) => emit(const OrderActorState.actionSuccess()),
          );
        },
        update: (e) async {
          emit(const OrderActorState.actionInProgress());
          final possibleFailure = await orderRepository.update(e.order);
          possibleFailure.fold(
            (f) => emit(OrderActorState.actionFailure(f)),
            (_) => emit(const OrderActorState.actionSuccess()),
          );
        },
      );
    });
  }

  @override
  Future<void> close() async {
    await streamSubscription?.cancel();
    return super.close();
  }
}
