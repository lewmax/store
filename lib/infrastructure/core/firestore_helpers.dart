import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:multi_store/domain/auth/i_user_repository.dart';
import 'package:multi_store/domain/auth/value_objects.dart';

import '../../domain/auth/i_auth_facade.dart';
import '../../domain/core/errors.dart';
import '../../injection.dart';

extension FirebaseFirestoreX on FirebaseFirestore {
  Future<DocumentReference> userDocument() async {
    final userIdOption = await getIt<IAuthFacade>().getSignedInUserId();
    if (userIdOption == null) {
      throw NotAuthenticatedError();
    } else {
      final userTypeOrFailure = await getIt<IUserRepository>().getUserType(
        userIdOption.getOrCrash(),
      );
      return userTypeOrFailure.fold(
        (f) {
          throw NotAuthenticatedError();
        },
        (userType) {
          if (userType.getOrCrash() == UserTypeEnum.customer) {
            return FirebaseFirestore.instance
                .collection('customers')
                .doc(userIdOption.getOrCrash());
          } else {
            return FirebaseFirestore.instance
                .collection('suppliers')
                .doc(userIdOption.getOrCrash());
          }
        },
      );
    }
  }

}

extension DocumentReferenceX on DocumentReference {
  CollectionReference get cartCollection => collection('cart');
  CollectionReference get ordersCollection => collection('orders');
}
