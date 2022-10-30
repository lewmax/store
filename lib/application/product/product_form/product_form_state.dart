part of 'product_form_bloc.dart';

@freezed
abstract class ProductFormState with _$ProductFormState {
  const factory ProductFormState({
    required Product product,
    required ListMin1<LogoImage> imagesList,
    required bool showErrorMessages,
    required bool isSaving,
    required bool isEditing,
    required Either<ProductFailure, Unit>? saveFailureOrSuccess,
  }) = _ProductFormState;

  factory ProductFormState.initial() => ProductFormState(
        product: Product.empty(),
        imagesList: ListMin1(const <LogoImage>[]),
        showErrorMessages: false,
        isSaving: false,
        isEditing: false,
        saveFailureOrSuccess: null,
      );
}
