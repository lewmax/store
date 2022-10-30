import 'dart:io';

import 'package:dartz/dartz.dart';

import '../order/value_objects.dart';
import 'failures.dart';

Either<ValueFailure<String>, String> validateEmailAddress(String input) {
  const emailRegex =
      r"""^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+""";
  if (RegExp(emailRegex).hasMatch(input)) {
    return right(input);
  } else {
    return left(ValueFailure.invalidEmail(failedValue: input));
  }
}

Either<ValueFailure<String>, String> validatePassword(String input) {
  const passwordRegex =
      r'^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[!@#\$&*~]).{8,}$';
  if (RegExp(passwordRegex).hasMatch(input)) {
    return right(input);
  } else {
    return left(ValueFailure.invalidPassword(failedValue: input));
  }
}

Either<ValueFailure<String>, String> validateFullName(String input) {
  if (input.length > 4) {
    return right(input);
  } else {
    return left(ValueFailure.invalidFullName(failedValue: input));
  }
}

Either<ValueFailure<String>, String> validateAddress(String input) {
  if (input.length > 4) {
    return right(input);
  } else {
    return left(ValueFailure.invalidAddress(failedValue: input));
  }
}

Either<ValueFailure<String>, String> validateStringNotEmpty(String input) {
  if (input != '') {
    return right(input);
  } else {
    return left(ValueFailure.invalidImageUrl(failedValue: input));
  }
}

Either<ValueFailure<String>, String> validateCategoryNotEmpty(String input) {
  if (input != '') {
    return right(input);
  } else {
    return left(ValueFailure.invalidCategory(failedValue: input));
  }
}

Either<ValueFailure<String>, String> validateSubCategoryNotEmpty(String input) {
  if (input != '') {
    return right(input);
  } else {
    return left(ValueFailure.invalidSubCategory(failedValue: input));
  }
}

Either<ValueFailure<File>, File> validateImage(File? input) {
  if (input != null) {
    return right(input);
  } else {
    return left(ValueFailure.invalidImage(failedValue: input));
  }
}

Either<ValueFailure<double>, double> validateDouble(String input) {
  if (double.tryParse(input) != null && double.parse(input) > 0) {
    return right(double.parse(input));
  } else {
    return left(const ValueFailure.invalidDouble(failedValue: 0));
  }
}

Either<ValueFailure<int>, int> validateInteger(String input) {
  if (int.tryParse(input) != null && int.parse(input) > 0) {
    return right(int.parse(input));
  } else {
    return left(const ValueFailure.invalidInteger(failedValue: 0));
  }
}

Either<ValueFailure<int>, int> validateDiscount(String input) {
  if (int.tryParse(input) != null && int.parse(input) >= 0) {
    return right(int.parse(input));
  } else {
    return left(const ValueFailure.invalidInteger(failedValue: 0));
  }
}

Either<ValueFailure<List<T>>, List<T>> validateMinListLength<T>(List<T> input) {
  if (input.isNotEmpty) {
    return right(input);
  } else {
    return left(ValueFailure.invalidListTooShort(failedValue: input));
  }
}

Either<ValueFailure<String>, String> validatePhone(String input) {
  if (input.startsWith('+') && input.length > 10) {
    return right(input);
  } else {
    return left(ValueFailure.invalidPhone(failedValue: input));
  }
}

Either<ValueFailure<DeliverStatuses>, DeliverStatuses> validateDeliveryStatus(
    String input) {
  switch (input) {
    case 'Unpaid':
      return right(DeliverStatuses.Unpaid);
    case 'Confirming':
      return right(DeliverStatuses.Confirming);
    case 'Preparing':
      return right(DeliverStatuses.Preparing);
    case 'Delivered':
      return right(DeliverStatuses.Delivered);
    case 'Received':
      return right(DeliverStatuses.Received);
    default:
      return left(const ValueFailure.invalidDeliveryStatus(
        failedValue: DeliverStatuses.Unknown,
      ));
  }
}

Either<ValueFailure<PaymentStatuses>, PaymentStatuses> validatePaymentStatus(
    String input) {
  switch (input) {
    case 'Unpaid':
      return right(PaymentStatuses.Unpaid);
    case 'PaidOnline':
      return right(PaymentStatuses.PaidOnline);
    case 'CashOnDelivery':
      return right(PaymentStatuses.CashOnDelivery);
    default:
      return left(const ValueFailure.invalidPaymentStatus(
        failedValue: PaymentStatuses.Unknown,
      ));
  }
}
