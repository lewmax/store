import 'package:dartz/dartz.dart';

import 'order_failure.dart';

abstract class IPaymentFacade {
  Future<Either<OrderFailure, Unit>> pay(double price);
}
