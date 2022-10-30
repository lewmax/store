import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:multi_store/domain/auth/value_objects.dart';

import '../core/failures.dart';

part 'user.freezed.dart';

@freezed
abstract class User implements _$User {
  const User._();

  const factory User({
    required UniqueId id,
    required UserType userType,
    required ImageUrl imageUrl,
    required FullName fullName,
    required EmailAddress emailAddress,
    required List<String> favorites,
    required List<String> storesSubscription,
    required String address,
    required String phone,
    required bool isSubscribed,
  }) = _User;

  factory User.empty() => User(
      id: UniqueId(),
      userType: UserType(UserTypeEnum.customer),
      imageUrl: ImageUrl(''),
      fullName: FullName(''),
      emailAddress: EmailAddress(''),
      address: '',
      phone: '',
      favorites: [],
      storesSubscription: [],
      isSubscribed: false);

  ValueFailure<dynamic>? get failure {
    return userType.failureOrUnit
        .andThen(imageUrl.failureOrUnit)
        .andThen(fullName.failureOrUnit)
        .andThen(emailAddress.failureOrUnit)
        .fold((f) => f, (_) => null);
  }
}
