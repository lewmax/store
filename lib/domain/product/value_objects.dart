import 'package:dartz/dartz.dart';

import '../core/failures.dart';
import '../core/value_object.dart';
import '../core/value_validators.dart';
import 'values.dart';

class Category extends ValueObject<String> {
  static const List<String> categoriesList = categories;

  @override
  final Either<ValueFailure<String>, String> value;

  factory Category(String input) {
    return Category._(
      validateCategoryNotEmpty(input),
    );
  }

  const Category._(this.value);
}

class SubCategory extends ValueObject<String> {
  static const Map<String, List<String>> categoriesMap = subCategories;

  @override
  final Either<ValueFailure<String>, String> value;

  factory SubCategory(String input) {
    return SubCategory._(
      validateSubCategoryNotEmpty(input),
    );
  }

  const SubCategory._(this.value);
}

class Price extends ValueObject<double> {
  @override
  final Either<ValueFailure<double>, double> value;

  factory Price(double input) {
    return Price._(
      validateDouble(input.toString()),
    );
  }

  factory Price.fromString(String input) {
    return Price._(
      validateDouble(input),
    );
  }

  const Price._(this.value);
}

class Quantity extends ValueObject<int> {
  @override
  final Either<ValueFailure<int>, int> value;

  factory Quantity(int input) {
    return Quantity._(
      validateInteger(input.toString()),
    );
  }

  factory Quantity.fromString(String input) {
    return Quantity._(
      validateInteger(input),
    );
  }

  const Quantity._(this.value);
}

class Name extends ValueObject<String> {
  @override
  final Either<ValueFailure<String>, String> value;

  factory Name(String input) {
    return Name._(
      validateFullName(input),
    );
  }

  const Name._(this.value);
}

class Description extends ValueObject<String> {
  @override
  final Either<ValueFailure<String>, String> value;

  factory Description(String input) {
    return Description._(
      validateFullName(input),
    );
  }

  const Description._(this.value);
}

class Discount extends ValueObject<int> {
  @override
  final Either<ValueFailure<int>, int> value;

  factory Discount(int input) {
    return Discount._(
      validateDiscount(input.toString()),
    );
  }

  factory Discount.fromString(String input) {
    return Discount._(
      validateDiscount(input),
    );
  }

  const Discount._(this.value);
}
