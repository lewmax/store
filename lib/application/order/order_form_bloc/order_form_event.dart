part of 'order_form_bloc.dart';

@freezed
abstract class OrderFormEvent with _$OrderFormEvent {
  const factory OrderFormEvent.initialised(Order order) = _Initialised;

  const factory OrderFormEvent.nameChanged(String nameStr) = _NameChanged;

  const factory OrderFormEvent.emailChanged(String emailStr) = _EmailChanged;

  const factory OrderFormEvent.phoneChanged(String phoneStr) = _PhoneChanged;

  const factory OrderFormEvent.addressChanged(String addressStr) =
      _AddressChanged;

  const factory OrderFormEvent.paymentStatusChanged(PaymentStatuses status) =
      _PaymentStatusChanged;

  const factory OrderFormEvent.deliveryStatusChanged(DeliverStatuses status) =
      _DeliveryStatusChanged;

  const factory OrderFormEvent.saved() = _Saved;
}
