part of 'order_form_bloc.dart';

@freezed
abstract class OrderFormState with _$OrderFormState {
  const factory OrderFormState({
    required Order order,
    required bool showErrorMessages,
    required bool isSaving,
    required Either<OrderFailure, Unit>? saveFailureOrSuccess,
  }) = _OrderFormState;

  factory OrderFormState.initial() => OrderFormState(
    order: Order.empty(),
    showErrorMessages: false,
    isSaving: false,
    saveFailureOrSuccess: null,
  );
}
