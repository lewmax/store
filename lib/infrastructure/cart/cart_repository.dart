import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dartz/dartz.dart';
import 'package:multi_store/domain/auth/value_objects.dart';
import 'package:multi_store/domain/cart/cart.dart';
import 'package:multi_store/domain/cart/cart_failure.dart';
import 'package:multi_store/domain/cart/i_cart_repository.dart';
import 'package:multi_store/infrastructure/cart/cart_item_dto.dart';
import 'package:rxdart/rxdart.dart';
import '../../domain/cart/cart_item.dart';
import '../core/firestore_helpers.dart';
import 'package:injectable/injectable.dart';

@LazySingleton(as: ICartRepository)
class CartRepository implements ICartRepository {
  final FirebaseFirestore firestore;

  CartRepository({required this.firestore});

  @override
  Future<Either<CartFailure, Unit>> create(CartItem cartItem) async {
    final userDoc = await firestore.userDocument();

    final cartItemDto = CartItemDto.fromDomain(cartItem);
    final json = cartItemDto.toJson();

    try {
      userDoc.cartCollection.doc(cartItem.prodId.getOrCrash()).set(json);
      return right(unit);
    } catch (e) {
      if (e is FirebaseException && e.code.contains('permission-denied')) {
        return left(const CartFailure.insufficientPermissions());
      } else {
        print(e);
        return left(const CartFailure.unexpected());
      }
    }
  }

  @override
  Future<Either<CartFailure, Unit>> update(CartItem cartItem) async {
    final userDoc = await firestore.userDocument();
    final cartItemDto = CartItemDto.fromDomain(cartItem);

    final json = cartItemDto.toJson();

    try {
      userDoc.cartCollection.doc(cartItem.prodId.getOrCrash()).update(json);
      return right(unit);
    } catch (e) {
      if (e is FirebaseException && e.code.contains('permission-denied')) {
        return left(const CartFailure.insufficientPermissions());
      } else if (e is FirebaseException && e.code.contains('not-found')) {
        return left(const CartFailure.unableToUpdate());
      } else {
        print(e);
        return left(const CartFailure.unexpected());
      }
    }
  }

  @override
  Future<Either<CartFailure, Unit>> delete(UniqueId prodId) async {
    final userDoc = await firestore.userDocument();
    try {
      userDoc.cartCollection.doc(prodId.getOrCrash()).delete();
      return right(unit);
    } catch (e) {
      if (e is FirebaseException && e.code.contains('permission-denied')) {
        return left(const CartFailure.insufficientPermissions());
      } else if (e is FirebaseException && e.code.contains('not-found')) {
        return left(const CartFailure.unableToUpdate());
      } else {
        print(e);
        return left(const CartFailure.unexpected());
      }
    }
  }

  @override
  Future<Either<CartFailure, Unit>> deleteAll() async {
    try {
      final userDoc = await firestore.userDocument();
      final batch = firestore.batch();
      var snapshots = await userDoc.cartCollection.get();
      snapshots.docs.forEach((doc) {
        batch.delete(doc.reference);
      });
      await batch.commit();
      return right(unit);
    } catch (e) {
      if (e is FirebaseException && e.code.contains('permission-denied')) {
        return left(const CartFailure.insufficientPermissions());
      } else if (e is FirebaseException && e.code.contains('not-found')) {
        return left(const CartFailure.unableToUpdate());
      } else {
        print(e);
        return left(const CartFailure.unexpected());
      }
    }
  }

  @override
  Stream<Either<CartFailure, Cart>> watch() async* {
    final userDoc = await firestore.userDocument();
    yield* userDoc.cartCollection.snapshots().map((snapshot) {
      var cartItemsMap = <UniqueId, CartItem>{};
      snapshot.docs.forEach((doc) {
        cartItemsMap.putIfAbsent(
          UniqueId.fromUniqueString(doc.id),
          () => CartItemDto.fromFirestore(doc).toDomain(),
        );
      });
      return right<CartFailure, Cart>(Cart(cartItems: cartItemsMap));
    }).onErrorReturnWith((e, _) {
      if (e is FirebaseException && e.code.contains('permission-denied')) {
        return left(const CartFailure.insufficientPermissions());
      } else {
        print(e);
        return left(const CartFailure.unexpected());
      }
    });
  }
}
