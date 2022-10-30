part of 'favorite_product_watcher_bloc.dart';

@freezed
abstract class FavoriteProductWatcherEvent with _$FavoriteProductWatcherEvent {
  const factory FavoriteProductWatcherEvent.watchStarted() = _WatchStarted;

  const factory FavoriteProductWatcherEvent.productsReceived(
      Either<ProductFailure, List<Product>> failureOrProductList,
      ) = _ProductsReceived;
}

