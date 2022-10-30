import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dartz/dartz.dart' hide Order;
import 'package:multi_store/domain/order/i_order_repository.dart';
import 'package:injectable/injectable.dart';
import 'package:multi_store/domain/order/order.dart';
import 'package:multi_store/domain/order/order_failure.dart';
import 'package:multi_store/infrastructure/core/firestore_helpers.dart';
import 'package:multi_store/infrastructure/order/order_dtos.dart';
import 'package:rxdart/rxdart.dart';

@LazySingleton(as: IOrderRepository)
class OrderRepository implements IOrderRepository {
  final FirebaseFirestore firestore;

  OrderRepository({required this.firestore});

  @override
  Future<Either<OrderFailure, Unit>> create(Order order) async {
    final userDoc = await firestore.userDocument();

    final orderDto = OrderDto.fromDomain(order);
    final json = orderDto.toJson();

    try {
      final orderColl = userDoc.ordersCollection;
      await orderColl.doc(order.id.getOrCrash()).set(json);
      return right(unit);
    } catch (e) {
      if (e is FirebaseException && e.code.contains('permission-denied')) {
        return left(const OrderFailure.insufficientPermissions());
      } else {
        print(e);
        return left(const OrderFailure.unexpected());
      }
    }
  }

  @override
  Future<Either<OrderFailure, Unit>> update(Order order) async {
    final userDoc = await firestore.userDocument();

    final orderDto = OrderDto.fromDomain(order);
    final json = orderDto.toJson();

    try {
      userDoc.ordersCollection.doc(order.id.getOrCrash()).update(json);
      return right(unit);
    } catch (e) {
      if (e is FirebaseException && e.code.contains('permission-denied')) {
        return left(const OrderFailure.insufficientPermissions());
      } else if (e is FirebaseException && e.code.contains('not-found')) {
        return left(const OrderFailure.unableToUpdate());
      } else {
        print(e);
        return left(const OrderFailure.unexpected());
      }
    }
  }

  @override
  Stream<Either<OrderFailure, List<Order>>> watchAll() async* {
    final userDoc = await firestore.userDocument();
    yield* userDoc.ordersCollection
        .orderBy('orderDate', descending: true)
        .snapshots()
        .map(
          (snapshot) => right<OrderFailure, List<Order>>(
            snapshot.docs
                .map((doc) => OrderDto.fromFirestore(doc).toDomain())
                .toList(),
          ),
        )
        .onErrorReturnWith((e, _) {
      if (e is FirebaseException && e.code.contains('permission-denied')) {
        return left(const OrderFailure.insufficientPermissions());
      } else {
        print(e);
        return left(const OrderFailure.unexpected());
      }
    });
  }
}
