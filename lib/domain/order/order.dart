import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:multi_store/domain/cart/cart_item.dart';
import 'package:multi_store/domain/product/value_objects.dart';

import '../auth/value_objects.dart';
import '../core/failures.dart';
import 'value_objects.dart';

part 'order.freezed.dart';

@freezed
abstract class Order implements _$Order {
  const Order._();

  const factory Order({
    required UniqueId id,
    required DateTime orderDate,
    required DateTime deliveryDate,
    required DeliveryStatus deliveryStatus,
    required PaymentStatus paymentStatus,
    required FullName name,
    required EmailAddress email,
    required Phone phone,
    required Address address,
    required ImageUrl orderImageUrl,
    required ListMin1<CartItem> orderItems,
    required Price deliveryFee,
  }) = _Order;

  factory Order.empty() => Order(
        id: UniqueId(),
        orderDate: DateTime.now(),
        deliveryDate: DateTime.now(),
        deliveryStatus: DeliveryStatus(DeliverStatuses.Unknown.toString()),
        paymentStatus: PaymentStatus(PaymentStatuses.Unknown.toString()),
        name: FullName('aaaaaaaaaa'),
        email: EmailAddress('customer1@gmail.com'),
        phone: Phone('+380032949843435234'),
        address: Address('aaaaaaaaaaaa'),
        orderImageUrl: ImageUrl('aaaaaaaaa'),
        orderItems: ListMin1(<CartItem>[CartItem.empty()]),
        deliveryFee: Price(123),
      );

  ValueFailure<dynamic>? get failure {
    return name.failureOrUnit
        .andThen(email.failureOrUnit)
        .andThen(phone.failureOrUnit)
        .andThen(address.failureOrUnit)
        .andThen(orderImageUrl.failureOrUnit)
        .andThen(orderItems.failureOrUnit)
        .andThen(_itemsFailureOrUnit(orderItems.getOrCrash()))
        .andThen(deliveryStatus.failureOrUnit)
        .andThen(paymentStatus.failureOrUnit)
        .andThen(deliveryFee.failureOrUnit)
        .fold((f) => f, (_) => null);
  }

  Either<ValueFailure<dynamic>, Unit> _itemsFailureOrUnit(
    List<CartItem> orderItems,
  ) {
    final listOfFailures = orderItems
        .map((orderItem) => orderItem.failure)
        .where((f) => f != null);
    if (listOfFailures.isEmpty) {
      return right(unit);
    } else {
      final f = listOfFailures.toList()[0];
      return left(f!);
    }
  }

  double get subTotalPrice {
    double total = 0;
    orderItems.getOrCrash().forEach((cartItem) {
      total += cartItem.price.getOrCrash() * cartItem.quantity.getOrCrash();
    });
    return total;
  }

  double get totalSum {
    final total = subTotalPrice + deliveryFee.getOrCrash();
    return total;
  }
}
