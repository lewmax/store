import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:multi_store/domain/auth/value_objects.dart';

import '../../domain/auth/user.dart';

part 'auth_dtos.freezed.dart';

part 'auth_dtos.g.dart';

@freezed
abstract class UserDto with _$UserDto {
  const UserDto._();

  const factory UserDto({
    @Default('') String userId,
    required String fullName,
    required String emailAddress,
    required String imageUrl,
    required String address,
    required String phone,
    required List<String> favorites,
    required List<String> storesSubscription,
  }) = _UserDto;

  factory UserDto.fromDomain(User user) {
    return UserDto(
      userId: user.id.getOrCrash(),
      fullName: user.fullName.getOrCrash(),
      emailAddress: user.emailAddress.getOrCrash(),
      imageUrl: user.imageUrl.getOrCrash(),
      address: user.address,
      phone: user.phone,
      favorites: user.favorites,
      storesSubscription: user.storesSubscription,
    );
  }

  User toDomain(UserTypeEnum userTypeEnum) {
    return User(
      id: UniqueId.fromUniqueString(userId),
      userType: UserType(userTypeEnum),
      imageUrl: ImageUrl(imageUrl),
      fullName: FullName(fullName),
      emailAddress: EmailAddress(emailAddress),
      address: address,
      phone: phone,
      favorites: favorites,
      storesSubscription: storesSubscription,
      isSubscribed: false
    );
  }

  factory UserDto.fromJson(Map<String, dynamic> json) =>
      _$UserDtoFromJson(json);

  factory UserDto.fromFirestore(DocumentSnapshot doc) {
    return UserDto.fromJson(doc.data() as Map<String, dynamic>)
        .copyWith(userId: doc.id);
  }
}
