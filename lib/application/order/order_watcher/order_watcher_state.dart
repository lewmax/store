part of 'order_watcher_bloc.dart';

@freezed
abstract class OrderWatcherState with _$OrderWatcherState {
  const factory OrderWatcherState.initial() = _Initial;

  const factory OrderWatcherState.loadInProgress() = _LoadInProgress;

  const factory OrderWatcherState.loadSuccess(List<Order> orders) =
      _LoadSuccess;

  const factory OrderWatcherState.loadFailure(OrderFailure orderFailure) =
      _LoadFailure;
}
