import 'package:dartz/dartz.dart';
import 'package:multi_store/domain/cart/cart_failure.dart';
import '../auth/value_objects.dart';
import 'cart.dart';
import 'cart_item.dart';

abstract class ICartRepository {
  Stream<Either<CartFailure, Cart>> watch();

  Future<Either<CartFailure, Unit>> create(CartItem cartItem);

  Future<Either<CartFailure, Unit>> update(CartItem cartItem);

  Future<Either<CartFailure, Unit>> delete(UniqueId prodId);

  Future<Either<CartFailure, Unit>> deleteAll();
}
