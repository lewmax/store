// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cart_item_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_CartItemDto _$$_CartItemDtoFromJson(Map<String, dynamic> json) =>
    _$_CartItemDto(
      prodId: json['prodId'] as String,
      name: json['name'] as String,
      price: (json['price'] as num).toDouble(),
      quantity: json['quantity'] as int,
      available: json['available'] as int,
      imageUrl: json['imageUrl'] as String,
    );

Map<String, dynamic> _$$_CartItemDtoToJson(_$_CartItemDto instance) =>
    <String, dynamic>{
      'prodId': instance.prodId,
      'name': instance.name,
      'price': instance.price,
      'quantity': instance.quantity,
      'available': instance.available,
      'imageUrl': instance.imageUrl,
    };
