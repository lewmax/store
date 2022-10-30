part of 'product_search_bloc.dart';

@freezed
abstract class ProductSearchEvent with _$ProductSearchEvent {
  const factory ProductSearchEvent.searchStarted(String query) = _SearchStarted;
}
