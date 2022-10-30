part of 'order_watcher_bloc.dart';

@freezed
abstract class OrderWatcherEvent with _$OrderWatcherEvent {
  const factory OrderWatcherEvent.watch() = _Watch;

  const factory OrderWatcherEvent.ordersReceived(
      Either<OrderFailure, List<Order>> failureOrOrders,
      ) = _OrdersReceived;
}