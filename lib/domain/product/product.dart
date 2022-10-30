import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:multi_store/domain/auth/value_objects.dart';

import '../core/failures.dart';
import 'value_objects.dart';

part 'product.freezed.dart';

@freezed
abstract class Product implements _$Product {
  const Product._();

  const factory Product({
    required UniqueId id,
    required UniqueId sId,
    required Category category,
    required SubCategory subCategory,
    required List<ImageUrl> imageUrls,
    required Price price,
    required Quantity quantity,
    required Name name,
    required Description description,
    required bool isFavorite,
    required Discount discount,
  }) = _Product;

  factory Product.empty() => Product(
        id: UniqueId(),
        sId: UniqueId(),
        category: Category(''),
        subCategory: SubCategory(''),
        imageUrls: <ImageUrl>[],
        price: Price(0),
        quantity: Quantity(0),
        name: Name(''),
        description: Description(''),
        isFavorite: false,
        discount: Discount(0),
      );

  ValueFailure<dynamic>? get failure {
    return category.failureOrUnit
        .andThen(subCategory.failureOrUnit)
        .andThen(_itemsFailureOrUnit(imageUrls))
        .andThen(price.failureOrUnit)
        .andThen(quantity.failureOrUnit)
        .andThen(name.failureOrUnit)
        .andThen(description.failureOrUnit)
        .andThen(discount.failureOrUnit)
        .fold((f) => f, (_) => null);
  }

  Either<ValueFailure<dynamic>, Unit> _itemsFailureOrUnit(
    List<ImageUrl> imageUrls,
  ) {
    final listOfFailures = imageUrls
        .map((orderItem) => orderItem.failureOrUnit)
        .where((f) => f != right(unit));
    if (listOfFailures.isEmpty) {
      return right(unit);
    } else {
      final f = listOfFailures.toList()[0];
      return f;
    }
  }
}
