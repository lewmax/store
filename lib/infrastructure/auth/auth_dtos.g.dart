// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'auth_dtos.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_UserDto _$$_UserDtoFromJson(Map<String, dynamic> json) => _$_UserDto(
      userId: json['userId'] as String? ?? '',
      fullName: json['fullName'] as String,
      emailAddress: json['emailAddress'] as String,
      imageUrl: json['imageUrl'] as String,
      address: json['address'] as String,
      phone: json['phone'] as String,
      favorites:
          (json['favorites'] as List<dynamic>).map((e) => e as String).toList(),
      storesSubscription: (json['storesSubscription'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
    );

Map<String, dynamic> _$$_UserDtoToJson(_$_UserDto instance) =>
    <String, dynamic>{
      'userId': instance.userId,
      'fullName': instance.fullName,
      'emailAddress': instance.emailAddress,
      'imageUrl': instance.imageUrl,
      'address': instance.address,
      'phone': instance.phone,
      'favorites': instance.favorites,
      'storesSubscription': instance.storesSubscription,
    };
