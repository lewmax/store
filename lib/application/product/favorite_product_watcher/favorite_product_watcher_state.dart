part of 'favorite_product_watcher_bloc.dart';

@freezed
abstract class FavoriteProductWatcherState with _$FavoriteProductWatcherState {
  const factory FavoriteProductWatcherState.initial() = _Initial;

  const factory FavoriteProductWatcherState.loadInProgress() = _LoadInProgress;

  const factory FavoriteProductWatcherState.loadSuccess({
    required List<Product> products,
  }) = _LoadSuccess;

  const factory FavoriteProductWatcherState.loadFailure(
      ProductFailure productFailure) = _LoadFailure;
}
