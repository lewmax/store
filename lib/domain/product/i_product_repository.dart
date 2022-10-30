import 'package:dartz/dartz.dart';
import 'package:multi_store/domain/product/product.dart';

import 'product_failure.dart';

abstract class IProductRepository {
  Stream<Either<ProductFailure, List<Product>>> watchAll();

  Stream<Either<ProductFailure, List<Product>>> watchByCategory(
      String category);

  Stream<Either<ProductFailure, List<Product>>> watchByCategoryAndSub(
      {required String category, required String subCategory});

  Stream<Either<ProductFailure, List<Product>>> watchBySupplierId(
      String suppId);

  Stream<Either<ProductFailure, List<Product>>> watchByQuery(String query);

  Stream<Either<ProductFailure, List<Product>>> watchByList(List<String> list);

  Future<Either<ProductFailure, Unit>> create(Product product);

  Future<Either<ProductFailure, Unit>> update(Product product);

  Future<Either<ProductFailure, Unit>> delete(Product product);

  Future<Either<ProductFailure, Unit>> subtractQuantity(
      String prodId, int leftNumber);
}
