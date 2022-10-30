import 'package:dartz/dartz.dart';

import '../core/failures.dart';
import '../core/value_object.dart';
import '../core/value_validators.dart';

class Phone extends ValueObject<String> {
  @override
  final Either<ValueFailure<String>, String> value;

  factory Phone(String input) {
    return Phone._(
      validatePhone(input),
    );
  }

  const Phone._(this.value);
}

class Address extends ValueObject<String> {
  @override
  final Either<ValueFailure<String>, String> value;

  factory Address(String input) {
    return Address._(
      validateAddress(input),
    );
  }

  const Address._(this.value);
}

class DeliveryStatus extends ValueObject<DeliverStatuses> {
  @override
  final Either<ValueFailure<DeliverStatuses>, DeliverStatuses> value;

  factory DeliveryStatus(String input) {
    return DeliveryStatus._(
      validateDeliveryStatus(input),
    );
  }

  const DeliveryStatus._(this.value);
}

enum DeliverStatuses {
  Unknown,
  Unpaid,
  Confirming,
  Preparing,
  Delivered,
  Received
}

class PaymentStatus extends ValueObject<PaymentStatuses> {
  @override
  final Either<ValueFailure<PaymentStatuses>, PaymentStatuses> value;

  factory PaymentStatus(String input) {
    return PaymentStatus._(
      validatePaymentStatus(input),
    );
  }

  const PaymentStatus._(this.value);
}

enum PaymentStatuses {
  Unknown, Unpaid, PaidOnline, CashOnDelivery,
}