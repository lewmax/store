part of 'cart_watcher_bloc.dart';

@freezed
abstract class CartWatcherEvent with _$CartWatcherEvent {
  const factory CartWatcherEvent.watch() = _Watch;

  const factory CartWatcherEvent.cartReceived(
      Either<CartFailure, Cart> failureOrCart,
      ) = _CartReceived;
}
