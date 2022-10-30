import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:multi_store/domain/cart/cart_item.dart';
import 'package:multi_store/domain/product/value_objects.dart';

import '../../domain/auth/value_objects.dart';

part 'cart_item_dto.freezed.dart';

part 'cart_item_dto.g.dart';

@freezed
abstract class CartItemDto implements _$CartItemDto {
  const CartItemDto._();

  const factory CartItemDto({
    required String prodId,
    required String name,
    required double price,
    required int quantity,
    required int available,
    required String imageUrl,
  }) = _CartItemDto;

  factory CartItemDto.fromDomain(CartItem cartItem) {
    return CartItemDto(
      prodId: cartItem.prodId.getOrCrash(),
      name: cartItem.name.getOrCrash(),
      price: cartItem.price.getOrCrash(),
      quantity: cartItem.quantity.getOrCrash(),
      available: cartItem.available.getOrCrash(),
      imageUrl: cartItem.imageUrl.getOrCrash(),
    );
  }

  CartItem toDomain() {
    return CartItem(
      prodId: UniqueId.fromUniqueString(prodId),
      name: Name(name),
      price: Price(price),
      quantity: Quantity(quantity),
      available: Quantity(available),
      imageUrl: ImageUrl(imageUrl),
    );
  }

  factory CartItemDto.fromJson(Map<String, dynamic> json) =>
      _$CartItemDtoFromJson(json);

  factory CartItemDto.fromFirestore(DocumentSnapshot doc) {
    return CartItemDto.fromJson(doc.data() as Map<String, dynamic>)
        .copyWith(prodId: doc.id);
  }
}
