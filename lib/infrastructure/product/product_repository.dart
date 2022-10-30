import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dartz/dartz.dart';
import 'package:multi_store/domain/auth/i_auth_facade.dart';
import 'package:multi_store/domain/auth/i_user_repository.dart';
import 'package:multi_store/domain/product/i_product_repository.dart';
import 'package:multi_store/domain/product/product.dart';
import 'package:multi_store/domain/product/product_failure.dart';
import 'product_dtos.dart';
import 'package:rxdart/rxdart.dart';
import 'package:injectable/injectable.dart';

@LazySingleton(as: IProductRepository)
class ProductRepository implements IProductRepository {
  final FirebaseFirestore firestore;
  final IAuthFacade authFacade;
  final IUserRepository userRepository;

  ProductRepository({
    required this.authFacade,
    required this.userRepository,
    required this.firestore,
  });

  @override
  Stream<Either<ProductFailure, List<Product>>> watchAll() async* {
    final prodCollection = firestore.collection('products');
    yield* prodCollection
        .snapshots()
        .map((snapshot) => right<ProductFailure, List<Product>>(snapshot.docs
            .map((doc) => ProductDto.fromFirestore(doc).toDomain())
            .toList()))
        .onErrorReturnWith((e, _) {
      if (e is FirebaseException && e.code.contains('permission-denied')) {
        return left(const ProductFailure.insufficientPermissions());
      } else {
        print(e);
        return left(const ProductFailure.unexpected());
      }
    });
  }

  @override
  Stream<Either<ProductFailure, List<Product>>> watchBySupplierId(
      String suppId) async* {
    final prodCollection = firestore.collection('products');
    yield* prodCollection
        .where('sId', isEqualTo: suppId)
        .snapshots()
        .map((snapshot) => right<ProductFailure, List<Product>>(snapshot.docs
            .map((doc) => ProductDto.fromFirestore(doc).toDomain())
            .toList()))
        .onErrorReturnWith((e, _) {
      if (e is FirebaseException && e.code.contains('permission-denied')) {
        return left(const ProductFailure.insufficientPermissions());
      } else {
        print(e);
        return left(const ProductFailure.unexpected());
      }
    });
  }

  @override
  Stream<Either<ProductFailure, List<Product>>> watchByCategory(
    String category,
  ) async* {
    final prodCollection = firestore.collection('products');
    yield* prodCollection
        .where('category', isEqualTo: category)
        .snapshots()
        .map((snapshot) => right<ProductFailure, List<Product>>(snapshot.docs
            .map((doc) => ProductDto.fromFirestore(doc).toDomain())
            .toList()))
        .onErrorReturnWith((e, _) {
      if (e is FirebaseException && e.code.contains('permission-denied')) {
        return left(const ProductFailure.insufficientPermissions());
      } else {
        print(e);
        return left(const ProductFailure.unexpected());
      }
    });
  }

  @override
  Stream<Either<ProductFailure, List<Product>>> watchByCategoryAndSub(
      {required String category, required String subCategory}) async* {
    final prodCollection = firestore.collection('products');
    yield* prodCollection
        .where('category', isEqualTo: category)
        .where('subCategory', isEqualTo: subCategory)
        .snapshots()
        .map((snapshot) => right<ProductFailure, List<Product>>(snapshot.docs
            .map((doc) => ProductDto.fromFirestore(doc).toDomain())
            .toList()))
        .onErrorReturnWith((e, _) {
      if (e is FirebaseException && e.code.contains('permission-denied')) {
        return left(const ProductFailure.insufficientPermissions());
      } else {
        print(e);
        return left(const ProductFailure.unexpected());
      }
    });
  }

  @override
  Stream<Either<ProductFailure, List<Product>>> watchByQuery(
      String query) async* {
    final prodCollection = firestore.collection('products');
    yield* prodCollection
        .orderBy('name')
        .snapshots()
        .map((snapshot) => right<ProductFailure, List<Product>>(snapshot.docs
            .map((doc) => ProductDto.fromFirestore(doc).toDomain())
            .where((product) => product.name.getOrCrash().toLowerCase().contains(query))
            .toList()))
        .onErrorReturnWith((e, _) {
      if (e is FirebaseException && e.code.contains('permission-denied')) {
        return left(const ProductFailure.insufficientPermissions());
      } else {
        print(e);
        return left(const ProductFailure.unexpected());
      }
    });
  }

  @override
  Stream<Either<ProductFailure, List<Product>>> watchByList(
      List<String> list) async* {
    final prodCollection = firestore.collection('products');
    yield* prodCollection
        .where(FieldPath.documentId, whereIn: list)
        .snapshots()
        .map((snapshot) => right<ProductFailure, List<Product>>(snapshot.docs
            .map((doc) => ProductDto.fromFirestore(doc).toDomain())
            .toList()))
        .onErrorReturnWith((e, _) {
      if (e is FirebaseException && e.code.contains('permission-denied')) {
        return left(const ProductFailure.insufficientPermissions());
      } else {
        print(e);
        return left(const ProductFailure.unexpected());
      }
    });
  }

  @override
  Future<Either<ProductFailure, Unit>> create(Product product) async {
    final prodCollection = firestore.collection('products');
    final productDto = ProductDto.fromDomain(product);
    final json = productDto.toJson();
    try {
      await prodCollection.doc(product.id.getOrCrash()).set(json);
      return (right(unit));
    } catch (e) {
      if (e is FirebaseException && e.code.contains('permission-denied')) {
        return left(const ProductFailure.insufficientPermissions());
      } else {
        print(e);
        return left(const ProductFailure.unexpected());
      }
    }
  }

  @override
  Future<Either<ProductFailure, Unit>> delete(Product product) async {
    final prodCollection = firestore.collection('products');
    try {
      prodCollection.doc(product.id.getOrCrash()).delete();
      return (right(unit));
    } catch (e) {
      if (e is FirebaseException && e.code.contains('permission-denied')) {
        return left(const ProductFailure.insufficientPermissions());
      } else if (e is FirebaseException && e.code.contains('not-found')) {
        return left(const ProductFailure.unableToUpdate());
      } else {
        print(e);
        return left(const ProductFailure.unexpected());
      }
    }
  }

  @override
  Future<Either<ProductFailure, Unit>> update(Product product) async {
    final prodCollection = firestore.collection('products');
    final productDto = ProductDto.fromDomain(product);
    final json = productDto.toJson();
    try {
      prodCollection.doc(product.id.getOrCrash()).update(json);
      return (right(unit));
    } catch (e) {
      if (e is FirebaseException && e.code.contains('permission-denied')) {
        return left(const ProductFailure.insufficientPermissions());
      } else if (e is FirebaseException && e.code.contains('not-found')) {
        return left(const ProductFailure.unableToUpdate());
      } else {
        print(e);
        return left(const ProductFailure.unexpected());
      }
    }
  }

  @override
  Future<Either<ProductFailure, Unit>> subtractQuantity(
    String prodId,
    int leftNumber,
  ) async {
    final prodCollection = firestore.collection('products');
    try {
      prodCollection.doc(prodId).update({'quantity': leftNumber});
      return (right(unit));
    } catch (e) {
      if (e is FirebaseException && e.code.contains('permission-denied')) {
        return left(const ProductFailure.insufficientPermissions());
      } else if (e is FirebaseException && e.code.contains('not-found')) {
        return left(const ProductFailure.unableToUpdate());
      } else {
        print(e);
        return left(const ProductFailure.unexpected());
      }
    }
  }
}
