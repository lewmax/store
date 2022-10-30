import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:multi_store/domain/auth/value_objects.dart';
import 'package:multi_store/domain/product/value_objects.dart';

import '../core/failures.dart';

part 'cart_item.freezed.dart';

@freezed
abstract class CartItem implements _$CartItem {
  const CartItem._();

  const factory CartItem({
    required UniqueId prodId,
    required Name name,
    required Price price,
    required Quantity quantity,
    required Quantity available,
    required ImageUrl imageUrl,
  }) = _CartItem;

  factory CartItem.empty() => CartItem(
        prodId: UniqueId(),
        name: Name('abcasfasfas'),
        price: Price(0.1),
        quantity: Quantity(1),
        available: Quantity(1),
        imageUrl: ImageUrl(
          'https://firebasestorage.googleapis.com/v0/b/multi-store-12a51.appspot.com/o/customers%2Fcustomer3%40gmail.com.jpg?alt=media&token=10838fc3-af45-4e37-b225-f7b506d593f1',
        ),
      );

  ValueFailure<dynamic>? get failure {
    return name.failureOrUnit
        .andThen(price.failureOrUnit)
        .andThen(quantity.failureOrUnit)
        .andThen(available.failureOrUnit)
        .andThen(imageUrl.failureOrUnit)
        .fold((f) => f, (_) => null);
  }
}
