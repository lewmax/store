import 'package:dartz/dartz.dart';
import 'package:multi_store/domain/auth/user.dart';
import 'package:multi_store/domain/auth/value_objects.dart';

import 'auth_failure.dart';

abstract class IUserRepository {
  Future<Either<AuthFailure, UserType>> getUserType(String id);

  Future<Either<AuthFailure, Unit>> create(User user);

  Future<Either<AuthFailure, Unit>> update(User user);

  Stream<Either<AuthFailure, User>> watchUser(
      UniqueId userId, UserType userType);

  Stream<Either<AuthFailure, List<User>>> watchUsers();
}
