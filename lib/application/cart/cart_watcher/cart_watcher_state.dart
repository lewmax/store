part of 'cart_watcher_bloc.dart';

@freezed
abstract class CartWatcherState with _$CartWatcherState {
  const factory CartWatcherState.initial() = _Initial;

  const factory CartWatcherState.loadInProgress() = _LoadInProgress;

  const factory CartWatcherState.loadSuccess(Cart cart) = _LoadSuccess;

  const factory CartWatcherState.loadFailure(CartFailure cartFailure) =
      _LoadFailure;
}
