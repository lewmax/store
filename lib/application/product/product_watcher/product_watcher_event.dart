part of 'product_watcher_bloc.dart';

@freezed
abstract class ProductWatcherEvent with _$ProductWatcherEvent {
  const factory ProductWatcherEvent.watchAllStarted() = _WatchAllStarted;

  const factory ProductWatcherEvent.watchByCategoryStarted(String category) =
      _WatchByCategoryStarted;

  const factory ProductWatcherEvent.watchByCategoryAndSubStarted(
      String category, String subCategory) = _WatchByCategoryAndSubStarted;

  const factory ProductWatcherEvent.watchBySupplierIdStarted(
      String supplierId) = _WatchBySupplierIdStarted;

  const factory ProductWatcherEvent.watchByQuery(String query) = _WatchByQuery;

  const factory ProductWatcherEvent.productsReceived(
    Either<ProductFailure, List<Product>> failureOrProductList,
  ) = _ProductsReceived;
}
