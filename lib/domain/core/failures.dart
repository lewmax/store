import 'package:freezed_annotation/freezed_annotation.dart';

part 'failures.freezed.dart';

@freezed
abstract class ValueFailure<T> with _$ValueFailure<T> {
  const factory ValueFailure.invalidEmail({
    required T failedValue,
  }) = InvalidEmail<T>;

  const factory ValueFailure.invalidPassword({
    required T failedValue,
  }) = ShortPassword<T>;

  const factory ValueFailure.invalidFullName({
    required T failedValue,
  }) = InvalidFullName<T>;
  const factory ValueFailure.invalidAddress({
    required T failedValue,
  }) = InvalidAddress<T>;

  const factory ValueFailure.invalidPhone({
    required T failedValue,
  }) = InvalidPhone<T>;

  const factory ValueFailure.invalidImageUrl({
    required T failedValue,
  }) = InvalidImageUrl<T>;

  const factory ValueFailure.invalidString({
    required T failedValue,
  }) = InvalidString<T>;

  const factory ValueFailure.invalidCategory({
    required T failedValue,
  }) = InvalidCategory<T>;

  const factory ValueFailure.invalidSubCategory({
    required T failedValue,
  }) = InvalidSubCategory<T>;

  const factory ValueFailure.invalidImage({
    required T? failedValue,
  }) = InvalidImage<T>;

  const factory ValueFailure.invalidDouble({
    required T failedValue,
  }) = InvalidDouble<T>;

  const factory ValueFailure.invalidInteger({
    required T failedValue,
  }) = InvalidInteger<T>;

  const factory ValueFailure.invalidListTooShort({
    required T failedValue,
  }) = InvalidListTooShort<T>;

  const factory ValueFailure.invalidDeliveryStatus({
    required T failedValue,
  }) = InvalidDeliveryStatus<T>;

  const factory ValueFailure.invalidPaymentStatus({
    required T failedValue,
  }) = InvalidPaymentStatus<T>;
}
