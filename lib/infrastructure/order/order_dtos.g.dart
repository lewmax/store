// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'order_dtos.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_OrderDto _$$_OrderDtoFromJson(Map<String, dynamic> json) => _$_OrderDto(
      id: json['id'] as String? ?? '',
      orderDate: json['orderDate'] as String,
      deliveryDate: json['deliveryDate'] as String,
      deliveryStatus: json['deliveryStatus'] as String,
      paymentStatus: json['paymentStatus'] as String,
      name: json['name'] as String,
      email: json['email'] as String,
      phone: json['phone'] as String,
      address: json['address'] as String,
      orderImageUrl: json['orderImageUrl'] as String,
      orderItems: (json['orderItems'] as List<dynamic>)
          .map((e) => CartItemDto.fromJson(e as Map<String, dynamic>))
          .toList(),
      deliveryFee: (json['deliveryFee'] as num).toDouble(),
    );

Map<String, dynamic> _$$_OrderDtoToJson(_$_OrderDto instance) =>
    <String, dynamic>{
      'id': instance.id,
      'orderDate': instance.orderDate,
      'deliveryDate': instance.deliveryDate,
      'deliveryStatus': instance.deliveryStatus,
      'paymentStatus': instance.paymentStatus,
      'name': instance.name,
      'email': instance.email,
      'phone': instance.phone,
      'address': instance.address,
      'orderImageUrl': instance.orderImageUrl,
      'orderItems': instance.orderItems.map((e) => e.toJson()).toList(),
      'deliveryFee': instance.deliveryFee,
    };
