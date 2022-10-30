import 'package:freezed_annotation/freezed_annotation.dart';

part 'order_failure.freezed.dart';

@freezed
abstract class OrderFailure with _$OrderFailure {
  const factory OrderFailure.paymentFailed(String error) = _PaymentFailed;

  const factory OrderFailure.unexpected() = _Unexpected;

  const factory OrderFailure.insufficientPermissions() =
      _InsufficientPermissions;

  const factory OrderFailure.unableToUpdate() = _UnableToUpdate;
}
