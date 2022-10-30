part of 'product_search_bloc.dart';

@freezed
abstract class ProductSearchState with _$ProductSearchState {
  const factory ProductSearchState.initial() = _Initial;

  const factory ProductSearchState.searchInProgress() = _SearchInProgress;

  const factory ProductSearchState.searchFailure(ProductFailure failure) =
      _SearchFailure;

  const factory ProductSearchState.searchSuccess() = _ProductSearchState;
}
