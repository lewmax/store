// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product_dtos.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ProductDto _$$_ProductDtoFromJson(Map<String, dynamic> json) =>
    _$_ProductDto(
      id: json['id'] as String? ?? '',
      sId: json['sId'] as String,
      category: json['category'] as String,
      subCategory: json['subCategory'] as String,
      imageUrls:
          (json['imageUrls'] as List<dynamic>).map((e) => e as String).toList(),
      price: (json['price'] as num).toDouble(),
      quantity: json['quantity'] as int,
      name: json['name'] as String,
      description: json['description'] as String,
      discount: json['discount'] as int,
    );

Map<String, dynamic> _$$_ProductDtoToJson(_$_ProductDto instance) =>
    <String, dynamic>{
      'id': instance.id,
      'sId': instance.sId,
      'category': instance.category,
      'subCategory': instance.subCategory,
      'imageUrls': instance.imageUrls,
      'price': instance.price,
      'quantity': instance.quantity,
      'name': instance.name,
      'description': instance.description,
      'discount': instance.discount,
    };
