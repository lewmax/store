import 'dart:io';

import 'package:dartz/dartz.dart';
import 'package:uuid/uuid.dart';
import '../core/failures.dart';
import '../core/value_object.dart';
import '../core/value_validators.dart';

class EmailAddress extends ValueObject<String> {
  @override
  final Either<ValueFailure<String>, String> value;

  factory EmailAddress(String input) {
    return EmailAddress._(
      validateEmailAddress(input),
    );
  }

  const EmailAddress._(this.value);
}

class Password extends ValueObject<String> {
  @override
  final Either<ValueFailure<String>, String> value;

  factory Password(String input) {
    return Password._(
      validatePassword(input),
    );
  }

  const Password._(this.value);
}

class UniqueId extends ValueObject<String> {
  @override
  final Either<ValueFailure<String>, String> value;

  factory UniqueId() {
    return UniqueId._(
      right(const Uuid().v1()),
    );
  }

  factory UniqueId.fromUniqueString(String uniqueId) {
    return UniqueId._(
      right(uniqueId),
    );
  }

  const UniqueId._(this.value);
}

class UserType extends ValueObject<UserTypeEnum> {
  @override
  final Either<ValueFailure<UserTypeEnum>, UserTypeEnum> value;

  factory UserType(UserTypeEnum userTypeEnum) {
    return UserType._(
      right(userTypeEnum),
    );
  }

  String get userCollection {
    return value.fold(
      (_) => '',
      (userType) {
        if (userType == UserTypeEnum.customer) {
          return 'customers';
        } else {
          return 'suppliers';
        }
      },
    );
  }

  const UserType._(this.value);
}

enum UserTypeEnum { customer, supplier }

class FullName extends ValueObject<String> {
  @override
  final Either<ValueFailure<String>, String> value;

  factory FullName(String input) {
    return FullName._(
      validateFullName(input),
    );
  }

  const FullName._(this.value);
}

class ImageUrl extends ValueObject<String> {
  @override
  final Either<ValueFailure<String>, String> value;

  factory ImageUrl(String input) {
    return ImageUrl._(
      validateStringNotEmpty(input),
    );
  }

  const ImageUrl._(this.value);
}

class LogoImage extends ValueObject<File?> {
  @override
  final Either<ValueFailure<File?>, File?> value;

  factory LogoImage(File? input) {
    return LogoImage._(
      validateImage(input),
    );
  }

  const LogoImage._(this.value);
}

class ListMin1<T> extends ValueObject<List<T>> {
  @override
  final Either<ValueFailure<List<T>>, List<T>> value;

  factory ListMin1(List<T> input) {
    return ListMin1._(
      validateMinListLength(input),
    );
  }

  const ListMin1._(this.value);

  int get length {
    return value.fold((f) => 0, (list) => list.length);
  }
}
