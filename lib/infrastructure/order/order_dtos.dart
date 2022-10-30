import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:multi_store/domain/product/value_objects.dart';
import 'package:multi_store/infrastructure/cart/cart_item_dto.dart';

import '../../domain/auth/value_objects.dart';
import '../../domain/order/order.dart';
import '../../domain/order/value_objects.dart';

part 'order_dtos.freezed.dart';

part 'order_dtos.g.dart';

@freezed
abstract class OrderDto with _$OrderDto {
  const OrderDto._();

  const factory OrderDto({
    @Default('') String id,
    required String orderDate,
    required String deliveryDate,
    required String deliveryStatus,
    required String paymentStatus,
    required String name,
    required String email,
    required String phone,
    required String address,
    required String orderImageUrl,
    required List<CartItemDto> orderItems,
    required double deliveryFee,
  }) = _OrderDto;

  factory OrderDto.fromDomain(Order order) {
    return OrderDto(
      id: order.id.getOrCrash(),
      orderDate: order.orderDate.toIso8601String(),
      deliveryDate: order.deliveryDate.toIso8601String(),
      deliveryStatus: order.deliveryStatus.getOrCrash().name,
      paymentStatus: order.paymentStatus.getOrCrash().name,
      name: order.name.getOrCrash(),
      email: order.email.getOrCrash(),
      phone: order.phone.getOrCrash(),
      address: order.address.getOrCrash(),
      orderImageUrl: order.orderImageUrl.getOrCrash(),
      orderItems: order.orderItems
          .getOrCrash()
          .map((orderItem) => CartItemDto.fromDomain(orderItem))
          .toList(),
      deliveryFee: order.deliveryFee.getOrCrash(),
    );
  }

  Order toDomain() {
    return Order(
      id: UniqueId.fromUniqueString(id),
      orderDate: DateTime.parse(orderDate),
      deliveryDate: DateTime.parse(deliveryDate),
      deliveryStatus: DeliveryStatus(deliveryStatus),
      paymentStatus: PaymentStatus(paymentStatus),
      name: FullName(name),
      email: EmailAddress(email),
      phone: Phone(phone),
      address: Address(address),
      orderImageUrl: ImageUrl(orderImageUrl),
      orderItems: ListMin1(orderItems.map((dto) => dto.toDomain()).toList()),
      deliveryFee: Price(deliveryFee),
    );
  }

  factory OrderDto.fromJson(Map<String, dynamic> json) =>
      _$OrderDtoFromJson(json);

  factory OrderDto.fromFirestore(DocumentSnapshot doc) {
    return OrderDto.fromJson(doc.data() as Map<String, dynamic>)
        .copyWith(id: doc.id);
  }
}
