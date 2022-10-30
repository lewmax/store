part of 'product_form_bloc.dart';

@freezed
abstract class ProductFormEvent with _$ProductFormEvent {
  const factory ProductFormEvent.initialised(Product? initialProductOption) =
      _Initialised;

  const factory ProductFormEvent.categoryChanged(String categoryStr) =
      _CategoryChanged;

  const factory ProductFormEvent.subCategoryChanged(String subCategoryStr) =
      _SubCategoryStr;

  const factory ProductFormEvent.imagesListChanged(List<File> imagesList) =
      _ImagesListChanged;

  const factory ProductFormEvent.priceChanged(String priceStr) =
      _PriceChanged;

  const factory ProductFormEvent.quantityChanged(String quantityStr) =
      _QuantityChanged;

  const factory ProductFormEvent.nameChanged(String nameStr) = _NameChanged;

  const factory ProductFormEvent.descriptionChanged(String descriptionStr) =
      _DescriptionChanged;

  const factory ProductFormEvent.discountChanged(String discountStr) =
      _DiscountChanged;

  const factory ProductFormEvent.saved() = _Saved;

  const factory ProductFormEvent.formCleared() = _FormCleared;

  const factory ProductFormEvent.imagesCleared() = _ImagesCleared;
}
