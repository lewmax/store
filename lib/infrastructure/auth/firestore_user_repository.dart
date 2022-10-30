import 'package:dartz/dartz.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:multi_store/domain/auth/auth_failure.dart';

import 'package:multi_store/domain/auth/value_objects.dart';
import 'package:rxdart/rxdart.dart';

import '../../domain/auth/i_user_repository.dart';
import '../../domain/auth/user.dart';
import 'auth_dtos.dart';
import 'package:injectable/injectable.dart';

@LazySingleton(as: IUserRepository)
class FirestoreUserRepository implements IUserRepository {
  final FirebaseFirestore firestore;

  FirestoreUserRepository({required this.firestore});

  @override
  Future<Either<AuthFailure, UserType>> getUserType(String id) async {
    final custResp = await firestore.collection('customers').doc(id).get();
    if (custResp.exists) {
      return right(UserType(UserTypeEnum.customer));
    }
    final suppResp = await firestore.collection('suppliers').doc(id).get();
    if (suppResp.exists) {
      return right(UserType(UserTypeEnum.supplier));
    }
    return left(const AuthFailure.userNotFound());
  }

  @override
  Future<Either<AuthFailure, Unit>> create(User user) async {
    final userDto = UserDto.fromDomain(user);

    final json = userDto.toJson();

    try {
      if (user.userType.getOrCrash() == UserTypeEnum.customer) {
        await firestore
            .collection('customers')
            .doc(user.id.getOrCrash())
            .set(json);
      } else {
        await firestore
            .collection('suppliers')
            .doc(user.id.getOrCrash())
            .set(json);
      }
      return right(unit);
    } catch (e) {
      if (e is FirebaseException && e.code.contains('permission-denied')) {
        return left(const AuthFailure.insufficientPermissions());
      } else {
        print(e);
        return left(const AuthFailure.unexpected());
      }
    }
  }

  @override
  Future<Either<AuthFailure, Unit>> update(User user) async {
    final userDto = UserDto.fromDomain(user);

    final json = userDto.toJson();

    try {
      final userId = user.id.getOrCrash();
      final userCollection = user.userType.userCollection;
      await firestore.collection(userCollection).doc(userId).update(json);
      return right(unit);
    } catch (e) {
      if (e is FirebaseException && e.code.contains('permission-denied')) {
        return left(const AuthFailure.insufficientPermissions());
      } else if (e is FirebaseException && e.code.contains('not-found')) {
        return left(const AuthFailure.unableToUpdate());
      } else {
        print(e);
        return left(const AuthFailure.unexpected());
      }
    }
  }

  @override
  Stream<Either<AuthFailure, User>> watchUser(
      UniqueId userId, UserType userType) async* {
    String collectionStr = userType.userCollection;

    final userDoc = firestore.collection(collectionStr).doc(
          userId.getOrCrash(),
        );

    yield* userDoc
        .snapshots()
        .map(
          (snapshot) => right<AuthFailure, User>(
            UserDto.fromFirestore(snapshot).toDomain(userType.getOrCrash()),
          ),
        )
        .onErrorReturnWith((e, _) {
      if (e is FirebaseException && e.code.contains('permission-denied')) {
        return left(const AuthFailure.insufficientPermissions());
      } else {
        print(e);
        return left(const AuthFailure.unexpected());
      }
    });
  }

  @override
  Stream<Either<AuthFailure, List<User>>> watchUsers() async* {
    final userCollection = firestore.collection('suppliers');

    yield* userCollection
        .snapshots()
        .map((snapshot) => right<AuthFailure, List<User>>(
              snapshot.docs
                  .map(
                    (doc) => UserDto.fromFirestore(doc)
                        .toDomain(UserTypeEnum.supplier),
                  )
                  .toList(),
            ))
        .onErrorReturnWith((e, _) {
      if (e is FirebaseException && e.code.contains('permission-denied')) {
        return left(const AuthFailure.insufficientPermissions());
      } else {
        print(e);
        return left(const AuthFailure.unexpected());
      }
    });
  }
}
