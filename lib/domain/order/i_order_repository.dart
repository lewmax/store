import 'package:dartz/dartz.dart' hide Order;
import 'order.dart';
import 'order_failure.dart';

abstract class IOrderRepository {
  Stream<Either<OrderFailure, List<Order>>> watchAll();

  Future<Either<OrderFailure, Unit>> create(Order order);

  Future<Either<OrderFailure, Unit>> update(Order order);
}
