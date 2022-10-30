// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'user_actor_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$UserActorEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(File image) editImageUrl,
    required TResult Function(String name, String address, String phone)
        editNameAddressPhone,
    required TResult Function(String emailAddress) editEmailAddress,
    required TResult Function(String prodId) toggleFavorites,
    required TResult Function(String storeId) addToSubscriptions,
    required TResult Function(User user) edited,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(File image)? editImageUrl,
    TResult? Function(String name, String address, String phone)?
        editNameAddressPhone,
    TResult? Function(String emailAddress)? editEmailAddress,
    TResult? Function(String prodId)? toggleFavorites,
    TResult? Function(String storeId)? addToSubscriptions,
    TResult? Function(User user)? edited,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(File image)? editImageUrl,
    TResult Function(String name, String address, String phone)?
        editNameAddressPhone,
    TResult Function(String emailAddress)? editEmailAddress,
    TResult Function(String prodId)? toggleFavorites,
    TResult Function(String storeId)? addToSubscriptions,
    TResult Function(User user)? edited,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_EditImageUrl value) editImageUrl,
    required TResult Function(_EditNameAddressPhone value) editNameAddressPhone,
    required TResult Function(_EditEmailAddress value) editEmailAddress,
    required TResult Function(_ToggleFavorites value) toggleFavorites,
    required TResult Function(_AddToSubscriptions value) addToSubscriptions,
    required TResult Function(_Edited value) edited,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_EditImageUrl value)? editImageUrl,
    TResult? Function(_EditNameAddressPhone value)? editNameAddressPhone,
    TResult? Function(_EditEmailAddress value)? editEmailAddress,
    TResult? Function(_ToggleFavorites value)? toggleFavorites,
    TResult? Function(_AddToSubscriptions value)? addToSubscriptions,
    TResult? Function(_Edited value)? edited,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_EditImageUrl value)? editImageUrl,
    TResult Function(_EditNameAddressPhone value)? editNameAddressPhone,
    TResult Function(_EditEmailAddress value)? editEmailAddress,
    TResult Function(_ToggleFavorites value)? toggleFavorites,
    TResult Function(_AddToSubscriptions value)? addToSubscriptions,
    TResult Function(_Edited value)? edited,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserActorEventCopyWith<$Res> {
  factory $UserActorEventCopyWith(
          UserActorEvent value, $Res Function(UserActorEvent) then) =
      _$UserActorEventCopyWithImpl<$Res, UserActorEvent>;
}

/// @nodoc
class _$UserActorEventCopyWithImpl<$Res, $Val extends UserActorEvent>
    implements $UserActorEventCopyWith<$Res> {
  _$UserActorEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_EditImageUrlCopyWith<$Res> {
  factory _$$_EditImageUrlCopyWith(
          _$_EditImageUrl value, $Res Function(_$_EditImageUrl) then) =
      __$$_EditImageUrlCopyWithImpl<$Res>;
  @useResult
  $Res call({File image});
}

/// @nodoc
class __$$_EditImageUrlCopyWithImpl<$Res>
    extends _$UserActorEventCopyWithImpl<$Res, _$_EditImageUrl>
    implements _$$_EditImageUrlCopyWith<$Res> {
  __$$_EditImageUrlCopyWithImpl(
      _$_EditImageUrl _value, $Res Function(_$_EditImageUrl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? image = null,
  }) {
    return _then(_$_EditImageUrl(
      null == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as File,
    ));
  }
}

/// @nodoc

class _$_EditImageUrl implements _EditImageUrl {
  const _$_EditImageUrl(this.image);

  @override
  final File image;

  @override
  String toString() {
    return 'UserActorEvent.editImageUrl(image: $image)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_EditImageUrl &&
            (identical(other.image, image) || other.image == image));
  }

  @override
  int get hashCode => Object.hash(runtimeType, image);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_EditImageUrlCopyWith<_$_EditImageUrl> get copyWith =>
      __$$_EditImageUrlCopyWithImpl<_$_EditImageUrl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(File image) editImageUrl,
    required TResult Function(String name, String address, String phone)
        editNameAddressPhone,
    required TResult Function(String emailAddress) editEmailAddress,
    required TResult Function(String prodId) toggleFavorites,
    required TResult Function(String storeId) addToSubscriptions,
    required TResult Function(User user) edited,
  }) {
    return editImageUrl(image);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(File image)? editImageUrl,
    TResult? Function(String name, String address, String phone)?
        editNameAddressPhone,
    TResult? Function(String emailAddress)? editEmailAddress,
    TResult? Function(String prodId)? toggleFavorites,
    TResult? Function(String storeId)? addToSubscriptions,
    TResult? Function(User user)? edited,
  }) {
    return editImageUrl?.call(image);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(File image)? editImageUrl,
    TResult Function(String name, String address, String phone)?
        editNameAddressPhone,
    TResult Function(String emailAddress)? editEmailAddress,
    TResult Function(String prodId)? toggleFavorites,
    TResult Function(String storeId)? addToSubscriptions,
    TResult Function(User user)? edited,
    required TResult orElse(),
  }) {
    if (editImageUrl != null) {
      return editImageUrl(image);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_EditImageUrl value) editImageUrl,
    required TResult Function(_EditNameAddressPhone value) editNameAddressPhone,
    required TResult Function(_EditEmailAddress value) editEmailAddress,
    required TResult Function(_ToggleFavorites value) toggleFavorites,
    required TResult Function(_AddToSubscriptions value) addToSubscriptions,
    required TResult Function(_Edited value) edited,
  }) {
    return editImageUrl(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_EditImageUrl value)? editImageUrl,
    TResult? Function(_EditNameAddressPhone value)? editNameAddressPhone,
    TResult? Function(_EditEmailAddress value)? editEmailAddress,
    TResult? Function(_ToggleFavorites value)? toggleFavorites,
    TResult? Function(_AddToSubscriptions value)? addToSubscriptions,
    TResult? Function(_Edited value)? edited,
  }) {
    return editImageUrl?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_EditImageUrl value)? editImageUrl,
    TResult Function(_EditNameAddressPhone value)? editNameAddressPhone,
    TResult Function(_EditEmailAddress value)? editEmailAddress,
    TResult Function(_ToggleFavorites value)? toggleFavorites,
    TResult Function(_AddToSubscriptions value)? addToSubscriptions,
    TResult Function(_Edited value)? edited,
    required TResult orElse(),
  }) {
    if (editImageUrl != null) {
      return editImageUrl(this);
    }
    return orElse();
  }
}

abstract class _EditImageUrl implements UserActorEvent {
  const factory _EditImageUrl(final File image) = _$_EditImageUrl;

  File get image;
  @JsonKey(ignore: true)
  _$$_EditImageUrlCopyWith<_$_EditImageUrl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_EditNameAddressPhoneCopyWith<$Res> {
  factory _$$_EditNameAddressPhoneCopyWith(_$_EditNameAddressPhone value,
          $Res Function(_$_EditNameAddressPhone) then) =
      __$$_EditNameAddressPhoneCopyWithImpl<$Res>;
  @useResult
  $Res call({String name, String address, String phone});
}

/// @nodoc
class __$$_EditNameAddressPhoneCopyWithImpl<$Res>
    extends _$UserActorEventCopyWithImpl<$Res, _$_EditNameAddressPhone>
    implements _$$_EditNameAddressPhoneCopyWith<$Res> {
  __$$_EditNameAddressPhoneCopyWithImpl(_$_EditNameAddressPhone _value,
      $Res Function(_$_EditNameAddressPhone) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? address = null,
    Object? phone = null,
  }) {
    return _then(_$_EditNameAddressPhone(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      address: null == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String,
      phone: null == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_EditNameAddressPhone implements _EditNameAddressPhone {
  const _$_EditNameAddressPhone(
      {required this.name, required this.address, required this.phone});

  @override
  final String name;
  @override
  final String address;
  @override
  final String phone;

  @override
  String toString() {
    return 'UserActorEvent.editNameAddressPhone(name: $name, address: $address, phone: $phone)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_EditNameAddressPhone &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.address, address) || other.address == address) &&
            (identical(other.phone, phone) || other.phone == phone));
  }

  @override
  int get hashCode => Object.hash(runtimeType, name, address, phone);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_EditNameAddressPhoneCopyWith<_$_EditNameAddressPhone> get copyWith =>
      __$$_EditNameAddressPhoneCopyWithImpl<_$_EditNameAddressPhone>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(File image) editImageUrl,
    required TResult Function(String name, String address, String phone)
        editNameAddressPhone,
    required TResult Function(String emailAddress) editEmailAddress,
    required TResult Function(String prodId) toggleFavorites,
    required TResult Function(String storeId) addToSubscriptions,
    required TResult Function(User user) edited,
  }) {
    return editNameAddressPhone(name, address, phone);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(File image)? editImageUrl,
    TResult? Function(String name, String address, String phone)?
        editNameAddressPhone,
    TResult? Function(String emailAddress)? editEmailAddress,
    TResult? Function(String prodId)? toggleFavorites,
    TResult? Function(String storeId)? addToSubscriptions,
    TResult? Function(User user)? edited,
  }) {
    return editNameAddressPhone?.call(name, address, phone);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(File image)? editImageUrl,
    TResult Function(String name, String address, String phone)?
        editNameAddressPhone,
    TResult Function(String emailAddress)? editEmailAddress,
    TResult Function(String prodId)? toggleFavorites,
    TResult Function(String storeId)? addToSubscriptions,
    TResult Function(User user)? edited,
    required TResult orElse(),
  }) {
    if (editNameAddressPhone != null) {
      return editNameAddressPhone(name, address, phone);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_EditImageUrl value) editImageUrl,
    required TResult Function(_EditNameAddressPhone value) editNameAddressPhone,
    required TResult Function(_EditEmailAddress value) editEmailAddress,
    required TResult Function(_ToggleFavorites value) toggleFavorites,
    required TResult Function(_AddToSubscriptions value) addToSubscriptions,
    required TResult Function(_Edited value) edited,
  }) {
    return editNameAddressPhone(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_EditImageUrl value)? editImageUrl,
    TResult? Function(_EditNameAddressPhone value)? editNameAddressPhone,
    TResult? Function(_EditEmailAddress value)? editEmailAddress,
    TResult? Function(_ToggleFavorites value)? toggleFavorites,
    TResult? Function(_AddToSubscriptions value)? addToSubscriptions,
    TResult? Function(_Edited value)? edited,
  }) {
    return editNameAddressPhone?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_EditImageUrl value)? editImageUrl,
    TResult Function(_EditNameAddressPhone value)? editNameAddressPhone,
    TResult Function(_EditEmailAddress value)? editEmailAddress,
    TResult Function(_ToggleFavorites value)? toggleFavorites,
    TResult Function(_AddToSubscriptions value)? addToSubscriptions,
    TResult Function(_Edited value)? edited,
    required TResult orElse(),
  }) {
    if (editNameAddressPhone != null) {
      return editNameAddressPhone(this);
    }
    return orElse();
  }
}

abstract class _EditNameAddressPhone implements UserActorEvent {
  const factory _EditNameAddressPhone(
      {required final String name,
      required final String address,
      required final String phone}) = _$_EditNameAddressPhone;

  String get name;
  String get address;
  String get phone;
  @JsonKey(ignore: true)
  _$$_EditNameAddressPhoneCopyWith<_$_EditNameAddressPhone> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_EditEmailAddressCopyWith<$Res> {
  factory _$$_EditEmailAddressCopyWith(
          _$_EditEmailAddress value, $Res Function(_$_EditEmailAddress) then) =
      __$$_EditEmailAddressCopyWithImpl<$Res>;
  @useResult
  $Res call({String emailAddress});
}

/// @nodoc
class __$$_EditEmailAddressCopyWithImpl<$Res>
    extends _$UserActorEventCopyWithImpl<$Res, _$_EditEmailAddress>
    implements _$$_EditEmailAddressCopyWith<$Res> {
  __$$_EditEmailAddressCopyWithImpl(
      _$_EditEmailAddress _value, $Res Function(_$_EditEmailAddress) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? emailAddress = null,
  }) {
    return _then(_$_EditEmailAddress(
      null == emailAddress
          ? _value.emailAddress
          : emailAddress // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_EditEmailAddress implements _EditEmailAddress {
  const _$_EditEmailAddress(this.emailAddress);

  @override
  final String emailAddress;

  @override
  String toString() {
    return 'UserActorEvent.editEmailAddress(emailAddress: $emailAddress)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_EditEmailAddress &&
            (identical(other.emailAddress, emailAddress) ||
                other.emailAddress == emailAddress));
  }

  @override
  int get hashCode => Object.hash(runtimeType, emailAddress);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_EditEmailAddressCopyWith<_$_EditEmailAddress> get copyWith =>
      __$$_EditEmailAddressCopyWithImpl<_$_EditEmailAddress>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(File image) editImageUrl,
    required TResult Function(String name, String address, String phone)
        editNameAddressPhone,
    required TResult Function(String emailAddress) editEmailAddress,
    required TResult Function(String prodId) toggleFavorites,
    required TResult Function(String storeId) addToSubscriptions,
    required TResult Function(User user) edited,
  }) {
    return editEmailAddress(emailAddress);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(File image)? editImageUrl,
    TResult? Function(String name, String address, String phone)?
        editNameAddressPhone,
    TResult? Function(String emailAddress)? editEmailAddress,
    TResult? Function(String prodId)? toggleFavorites,
    TResult? Function(String storeId)? addToSubscriptions,
    TResult? Function(User user)? edited,
  }) {
    return editEmailAddress?.call(emailAddress);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(File image)? editImageUrl,
    TResult Function(String name, String address, String phone)?
        editNameAddressPhone,
    TResult Function(String emailAddress)? editEmailAddress,
    TResult Function(String prodId)? toggleFavorites,
    TResult Function(String storeId)? addToSubscriptions,
    TResult Function(User user)? edited,
    required TResult orElse(),
  }) {
    if (editEmailAddress != null) {
      return editEmailAddress(emailAddress);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_EditImageUrl value) editImageUrl,
    required TResult Function(_EditNameAddressPhone value) editNameAddressPhone,
    required TResult Function(_EditEmailAddress value) editEmailAddress,
    required TResult Function(_ToggleFavorites value) toggleFavorites,
    required TResult Function(_AddToSubscriptions value) addToSubscriptions,
    required TResult Function(_Edited value) edited,
  }) {
    return editEmailAddress(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_EditImageUrl value)? editImageUrl,
    TResult? Function(_EditNameAddressPhone value)? editNameAddressPhone,
    TResult? Function(_EditEmailAddress value)? editEmailAddress,
    TResult? Function(_ToggleFavorites value)? toggleFavorites,
    TResult? Function(_AddToSubscriptions value)? addToSubscriptions,
    TResult? Function(_Edited value)? edited,
  }) {
    return editEmailAddress?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_EditImageUrl value)? editImageUrl,
    TResult Function(_EditNameAddressPhone value)? editNameAddressPhone,
    TResult Function(_EditEmailAddress value)? editEmailAddress,
    TResult Function(_ToggleFavorites value)? toggleFavorites,
    TResult Function(_AddToSubscriptions value)? addToSubscriptions,
    TResult Function(_Edited value)? edited,
    required TResult orElse(),
  }) {
    if (editEmailAddress != null) {
      return editEmailAddress(this);
    }
    return orElse();
  }
}

abstract class _EditEmailAddress implements UserActorEvent {
  const factory _EditEmailAddress(final String emailAddress) =
      _$_EditEmailAddress;

  String get emailAddress;
  @JsonKey(ignore: true)
  _$$_EditEmailAddressCopyWith<_$_EditEmailAddress> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_ToggleFavoritesCopyWith<$Res> {
  factory _$$_ToggleFavoritesCopyWith(
          _$_ToggleFavorites value, $Res Function(_$_ToggleFavorites) then) =
      __$$_ToggleFavoritesCopyWithImpl<$Res>;
  @useResult
  $Res call({String prodId});
}

/// @nodoc
class __$$_ToggleFavoritesCopyWithImpl<$Res>
    extends _$UserActorEventCopyWithImpl<$Res, _$_ToggleFavorites>
    implements _$$_ToggleFavoritesCopyWith<$Res> {
  __$$_ToggleFavoritesCopyWithImpl(
      _$_ToggleFavorites _value, $Res Function(_$_ToggleFavorites) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? prodId = null,
  }) {
    return _then(_$_ToggleFavorites(
      null == prodId
          ? _value.prodId
          : prodId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_ToggleFavorites implements _ToggleFavorites {
  const _$_ToggleFavorites(this.prodId);

  @override
  final String prodId;

  @override
  String toString() {
    return 'UserActorEvent.toggleFavorites(prodId: $prodId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ToggleFavorites &&
            (identical(other.prodId, prodId) || other.prodId == prodId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, prodId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ToggleFavoritesCopyWith<_$_ToggleFavorites> get copyWith =>
      __$$_ToggleFavoritesCopyWithImpl<_$_ToggleFavorites>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(File image) editImageUrl,
    required TResult Function(String name, String address, String phone)
        editNameAddressPhone,
    required TResult Function(String emailAddress) editEmailAddress,
    required TResult Function(String prodId) toggleFavorites,
    required TResult Function(String storeId) addToSubscriptions,
    required TResult Function(User user) edited,
  }) {
    return toggleFavorites(prodId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(File image)? editImageUrl,
    TResult? Function(String name, String address, String phone)?
        editNameAddressPhone,
    TResult? Function(String emailAddress)? editEmailAddress,
    TResult? Function(String prodId)? toggleFavorites,
    TResult? Function(String storeId)? addToSubscriptions,
    TResult? Function(User user)? edited,
  }) {
    return toggleFavorites?.call(prodId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(File image)? editImageUrl,
    TResult Function(String name, String address, String phone)?
        editNameAddressPhone,
    TResult Function(String emailAddress)? editEmailAddress,
    TResult Function(String prodId)? toggleFavorites,
    TResult Function(String storeId)? addToSubscriptions,
    TResult Function(User user)? edited,
    required TResult orElse(),
  }) {
    if (toggleFavorites != null) {
      return toggleFavorites(prodId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_EditImageUrl value) editImageUrl,
    required TResult Function(_EditNameAddressPhone value) editNameAddressPhone,
    required TResult Function(_EditEmailAddress value) editEmailAddress,
    required TResult Function(_ToggleFavorites value) toggleFavorites,
    required TResult Function(_AddToSubscriptions value) addToSubscriptions,
    required TResult Function(_Edited value) edited,
  }) {
    return toggleFavorites(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_EditImageUrl value)? editImageUrl,
    TResult? Function(_EditNameAddressPhone value)? editNameAddressPhone,
    TResult? Function(_EditEmailAddress value)? editEmailAddress,
    TResult? Function(_ToggleFavorites value)? toggleFavorites,
    TResult? Function(_AddToSubscriptions value)? addToSubscriptions,
    TResult? Function(_Edited value)? edited,
  }) {
    return toggleFavorites?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_EditImageUrl value)? editImageUrl,
    TResult Function(_EditNameAddressPhone value)? editNameAddressPhone,
    TResult Function(_EditEmailAddress value)? editEmailAddress,
    TResult Function(_ToggleFavorites value)? toggleFavorites,
    TResult Function(_AddToSubscriptions value)? addToSubscriptions,
    TResult Function(_Edited value)? edited,
    required TResult orElse(),
  }) {
    if (toggleFavorites != null) {
      return toggleFavorites(this);
    }
    return orElse();
  }
}

abstract class _ToggleFavorites implements UserActorEvent {
  const factory _ToggleFavorites(final String prodId) = _$_ToggleFavorites;

  String get prodId;
  @JsonKey(ignore: true)
  _$$_ToggleFavoritesCopyWith<_$_ToggleFavorites> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_AddToSubscriptionsCopyWith<$Res> {
  factory _$$_AddToSubscriptionsCopyWith(_$_AddToSubscriptions value,
          $Res Function(_$_AddToSubscriptions) then) =
      __$$_AddToSubscriptionsCopyWithImpl<$Res>;
  @useResult
  $Res call({String storeId});
}

/// @nodoc
class __$$_AddToSubscriptionsCopyWithImpl<$Res>
    extends _$UserActorEventCopyWithImpl<$Res, _$_AddToSubscriptions>
    implements _$$_AddToSubscriptionsCopyWith<$Res> {
  __$$_AddToSubscriptionsCopyWithImpl(
      _$_AddToSubscriptions _value, $Res Function(_$_AddToSubscriptions) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? storeId = null,
  }) {
    return _then(_$_AddToSubscriptions(
      null == storeId
          ? _value.storeId
          : storeId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_AddToSubscriptions implements _AddToSubscriptions {
  const _$_AddToSubscriptions(this.storeId);

  @override
  final String storeId;

  @override
  String toString() {
    return 'UserActorEvent.addToSubscriptions(storeId: $storeId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AddToSubscriptions &&
            (identical(other.storeId, storeId) || other.storeId == storeId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, storeId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AddToSubscriptionsCopyWith<_$_AddToSubscriptions> get copyWith =>
      __$$_AddToSubscriptionsCopyWithImpl<_$_AddToSubscriptions>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(File image) editImageUrl,
    required TResult Function(String name, String address, String phone)
        editNameAddressPhone,
    required TResult Function(String emailAddress) editEmailAddress,
    required TResult Function(String prodId) toggleFavorites,
    required TResult Function(String storeId) addToSubscriptions,
    required TResult Function(User user) edited,
  }) {
    return addToSubscriptions(storeId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(File image)? editImageUrl,
    TResult? Function(String name, String address, String phone)?
        editNameAddressPhone,
    TResult? Function(String emailAddress)? editEmailAddress,
    TResult? Function(String prodId)? toggleFavorites,
    TResult? Function(String storeId)? addToSubscriptions,
    TResult? Function(User user)? edited,
  }) {
    return addToSubscriptions?.call(storeId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(File image)? editImageUrl,
    TResult Function(String name, String address, String phone)?
        editNameAddressPhone,
    TResult Function(String emailAddress)? editEmailAddress,
    TResult Function(String prodId)? toggleFavorites,
    TResult Function(String storeId)? addToSubscriptions,
    TResult Function(User user)? edited,
    required TResult orElse(),
  }) {
    if (addToSubscriptions != null) {
      return addToSubscriptions(storeId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_EditImageUrl value) editImageUrl,
    required TResult Function(_EditNameAddressPhone value) editNameAddressPhone,
    required TResult Function(_EditEmailAddress value) editEmailAddress,
    required TResult Function(_ToggleFavorites value) toggleFavorites,
    required TResult Function(_AddToSubscriptions value) addToSubscriptions,
    required TResult Function(_Edited value) edited,
  }) {
    return addToSubscriptions(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_EditImageUrl value)? editImageUrl,
    TResult? Function(_EditNameAddressPhone value)? editNameAddressPhone,
    TResult? Function(_EditEmailAddress value)? editEmailAddress,
    TResult? Function(_ToggleFavorites value)? toggleFavorites,
    TResult? Function(_AddToSubscriptions value)? addToSubscriptions,
    TResult? Function(_Edited value)? edited,
  }) {
    return addToSubscriptions?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_EditImageUrl value)? editImageUrl,
    TResult Function(_EditNameAddressPhone value)? editNameAddressPhone,
    TResult Function(_EditEmailAddress value)? editEmailAddress,
    TResult Function(_ToggleFavorites value)? toggleFavorites,
    TResult Function(_AddToSubscriptions value)? addToSubscriptions,
    TResult Function(_Edited value)? edited,
    required TResult orElse(),
  }) {
    if (addToSubscriptions != null) {
      return addToSubscriptions(this);
    }
    return orElse();
  }
}

abstract class _AddToSubscriptions implements UserActorEvent {
  const factory _AddToSubscriptions(final String storeId) =
      _$_AddToSubscriptions;

  String get storeId;
  @JsonKey(ignore: true)
  _$$_AddToSubscriptionsCopyWith<_$_AddToSubscriptions> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_EditedCopyWith<$Res> {
  factory _$$_EditedCopyWith(_$_Edited value, $Res Function(_$_Edited) then) =
      __$$_EditedCopyWithImpl<$Res>;
  @useResult
  $Res call({User user});

  $UserCopyWith<$Res> get user;
}

/// @nodoc
class __$$_EditedCopyWithImpl<$Res>
    extends _$UserActorEventCopyWithImpl<$Res, _$_Edited>
    implements _$$_EditedCopyWith<$Res> {
  __$$_EditedCopyWithImpl(_$_Edited _value, $Res Function(_$_Edited) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? user = null,
  }) {
    return _then(_$_Edited(
      null == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as User,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $UserCopyWith<$Res> get user {
    return $UserCopyWith<$Res>(_value.user, (value) {
      return _then(_value.copyWith(user: value));
    });
  }
}

/// @nodoc

class _$_Edited implements _Edited {
  const _$_Edited(this.user);

  @override
  final User user;

  @override
  String toString() {
    return 'UserActorEvent.edited(user: $user)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Edited &&
            (identical(other.user, user) || other.user == user));
  }

  @override
  int get hashCode => Object.hash(runtimeType, user);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_EditedCopyWith<_$_Edited> get copyWith =>
      __$$_EditedCopyWithImpl<_$_Edited>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(File image) editImageUrl,
    required TResult Function(String name, String address, String phone)
        editNameAddressPhone,
    required TResult Function(String emailAddress) editEmailAddress,
    required TResult Function(String prodId) toggleFavorites,
    required TResult Function(String storeId) addToSubscriptions,
    required TResult Function(User user) edited,
  }) {
    return edited(user);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(File image)? editImageUrl,
    TResult? Function(String name, String address, String phone)?
        editNameAddressPhone,
    TResult? Function(String emailAddress)? editEmailAddress,
    TResult? Function(String prodId)? toggleFavorites,
    TResult? Function(String storeId)? addToSubscriptions,
    TResult? Function(User user)? edited,
  }) {
    return edited?.call(user);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(File image)? editImageUrl,
    TResult Function(String name, String address, String phone)?
        editNameAddressPhone,
    TResult Function(String emailAddress)? editEmailAddress,
    TResult Function(String prodId)? toggleFavorites,
    TResult Function(String storeId)? addToSubscriptions,
    TResult Function(User user)? edited,
    required TResult orElse(),
  }) {
    if (edited != null) {
      return edited(user);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_EditImageUrl value) editImageUrl,
    required TResult Function(_EditNameAddressPhone value) editNameAddressPhone,
    required TResult Function(_EditEmailAddress value) editEmailAddress,
    required TResult Function(_ToggleFavorites value) toggleFavorites,
    required TResult Function(_AddToSubscriptions value) addToSubscriptions,
    required TResult Function(_Edited value) edited,
  }) {
    return edited(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_EditImageUrl value)? editImageUrl,
    TResult? Function(_EditNameAddressPhone value)? editNameAddressPhone,
    TResult? Function(_EditEmailAddress value)? editEmailAddress,
    TResult? Function(_ToggleFavorites value)? toggleFavorites,
    TResult? Function(_AddToSubscriptions value)? addToSubscriptions,
    TResult? Function(_Edited value)? edited,
  }) {
    return edited?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_EditImageUrl value)? editImageUrl,
    TResult Function(_EditNameAddressPhone value)? editNameAddressPhone,
    TResult Function(_EditEmailAddress value)? editEmailAddress,
    TResult Function(_ToggleFavorites value)? toggleFavorites,
    TResult Function(_AddToSubscriptions value)? addToSubscriptions,
    TResult Function(_Edited value)? edited,
    required TResult orElse(),
  }) {
    if (edited != null) {
      return edited(this);
    }
    return orElse();
  }
}

abstract class _Edited implements UserActorEvent {
  const factory _Edited(final User user) = _$_Edited;

  User get user;
  @JsonKey(ignore: true)
  _$$_EditedCopyWith<_$_Edited> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$UserActorState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() actionInProgress,
    required TResult Function(AuthFailure userFailure) actionFailure,
    required TResult Function() actionSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? actionInProgress,
    TResult? Function(AuthFailure userFailure)? actionFailure,
    TResult? Function()? actionSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? actionInProgress,
    TResult Function(AuthFailure userFailure)? actionFailure,
    TResult Function()? actionSuccess,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(ActionInProgress value) actionInProgress,
    required TResult Function(_ActionFailure value) actionFailure,
    required TResult Function(_ActionSuccess value) actionSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(ActionInProgress value)? actionInProgress,
    TResult? Function(_ActionFailure value)? actionFailure,
    TResult? Function(_ActionSuccess value)? actionSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(ActionInProgress value)? actionInProgress,
    TResult Function(_ActionFailure value)? actionFailure,
    TResult Function(_ActionSuccess value)? actionSuccess,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserActorStateCopyWith<$Res> {
  factory $UserActorStateCopyWith(
          UserActorState value, $Res Function(UserActorState) then) =
      _$UserActorStateCopyWithImpl<$Res, UserActorState>;
}

/// @nodoc
class _$UserActorStateCopyWithImpl<$Res, $Val extends UserActorState>
    implements $UserActorStateCopyWith<$Res> {
  _$UserActorStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_InitialCopyWith<$Res> {
  factory _$$_InitialCopyWith(
          _$_Initial value, $Res Function(_$_Initial) then) =
      __$$_InitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_InitialCopyWithImpl<$Res>
    extends _$UserActorStateCopyWithImpl<$Res, _$_Initial>
    implements _$$_InitialCopyWith<$Res> {
  __$$_InitialCopyWithImpl(_$_Initial _value, $Res Function(_$_Initial) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_Initial implements _Initial {
  const _$_Initial();

  @override
  String toString() {
    return 'UserActorState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_Initial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() actionInProgress,
    required TResult Function(AuthFailure userFailure) actionFailure,
    required TResult Function() actionSuccess,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? actionInProgress,
    TResult? Function(AuthFailure userFailure)? actionFailure,
    TResult? Function()? actionSuccess,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? actionInProgress,
    TResult Function(AuthFailure userFailure)? actionFailure,
    TResult Function()? actionSuccess,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(ActionInProgress value) actionInProgress,
    required TResult Function(_ActionFailure value) actionFailure,
    required TResult Function(_ActionSuccess value) actionSuccess,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(ActionInProgress value)? actionInProgress,
    TResult? Function(_ActionFailure value)? actionFailure,
    TResult? Function(_ActionSuccess value)? actionSuccess,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(ActionInProgress value)? actionInProgress,
    TResult Function(_ActionFailure value)? actionFailure,
    TResult Function(_ActionSuccess value)? actionSuccess,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements UserActorState {
  const factory _Initial() = _$_Initial;
}

/// @nodoc
abstract class _$$ActionInProgressCopyWith<$Res> {
  factory _$$ActionInProgressCopyWith(
          _$ActionInProgress value, $Res Function(_$ActionInProgress) then) =
      __$$ActionInProgressCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ActionInProgressCopyWithImpl<$Res>
    extends _$UserActorStateCopyWithImpl<$Res, _$ActionInProgress>
    implements _$$ActionInProgressCopyWith<$Res> {
  __$$ActionInProgressCopyWithImpl(
      _$ActionInProgress _value, $Res Function(_$ActionInProgress) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ActionInProgress implements ActionInProgress {
  const _$ActionInProgress();

  @override
  String toString() {
    return 'UserActorState.actionInProgress()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ActionInProgress);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() actionInProgress,
    required TResult Function(AuthFailure userFailure) actionFailure,
    required TResult Function() actionSuccess,
  }) {
    return actionInProgress();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? actionInProgress,
    TResult? Function(AuthFailure userFailure)? actionFailure,
    TResult? Function()? actionSuccess,
  }) {
    return actionInProgress?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? actionInProgress,
    TResult Function(AuthFailure userFailure)? actionFailure,
    TResult Function()? actionSuccess,
    required TResult orElse(),
  }) {
    if (actionInProgress != null) {
      return actionInProgress();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(ActionInProgress value) actionInProgress,
    required TResult Function(_ActionFailure value) actionFailure,
    required TResult Function(_ActionSuccess value) actionSuccess,
  }) {
    return actionInProgress(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(ActionInProgress value)? actionInProgress,
    TResult? Function(_ActionFailure value)? actionFailure,
    TResult? Function(_ActionSuccess value)? actionSuccess,
  }) {
    return actionInProgress?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(ActionInProgress value)? actionInProgress,
    TResult Function(_ActionFailure value)? actionFailure,
    TResult Function(_ActionSuccess value)? actionSuccess,
    required TResult orElse(),
  }) {
    if (actionInProgress != null) {
      return actionInProgress(this);
    }
    return orElse();
  }
}

abstract class ActionInProgress implements UserActorState {
  const factory ActionInProgress() = _$ActionInProgress;
}

/// @nodoc
abstract class _$$_ActionFailureCopyWith<$Res> {
  factory _$$_ActionFailureCopyWith(
          _$_ActionFailure value, $Res Function(_$_ActionFailure) then) =
      __$$_ActionFailureCopyWithImpl<$Res>;
  @useResult
  $Res call({AuthFailure userFailure});

  $AuthFailureCopyWith<$Res> get userFailure;
}

/// @nodoc
class __$$_ActionFailureCopyWithImpl<$Res>
    extends _$UserActorStateCopyWithImpl<$Res, _$_ActionFailure>
    implements _$$_ActionFailureCopyWith<$Res> {
  __$$_ActionFailureCopyWithImpl(
      _$_ActionFailure _value, $Res Function(_$_ActionFailure) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userFailure = null,
  }) {
    return _then(_$_ActionFailure(
      null == userFailure
          ? _value.userFailure
          : userFailure // ignore: cast_nullable_to_non_nullable
              as AuthFailure,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $AuthFailureCopyWith<$Res> get userFailure {
    return $AuthFailureCopyWith<$Res>(_value.userFailure, (value) {
      return _then(_value.copyWith(userFailure: value));
    });
  }
}

/// @nodoc

class _$_ActionFailure implements _ActionFailure {
  const _$_ActionFailure(this.userFailure);

  @override
  final AuthFailure userFailure;

  @override
  String toString() {
    return 'UserActorState.actionFailure(userFailure: $userFailure)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ActionFailure &&
            (identical(other.userFailure, userFailure) ||
                other.userFailure == userFailure));
  }

  @override
  int get hashCode => Object.hash(runtimeType, userFailure);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ActionFailureCopyWith<_$_ActionFailure> get copyWith =>
      __$$_ActionFailureCopyWithImpl<_$_ActionFailure>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() actionInProgress,
    required TResult Function(AuthFailure userFailure) actionFailure,
    required TResult Function() actionSuccess,
  }) {
    return actionFailure(userFailure);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? actionInProgress,
    TResult? Function(AuthFailure userFailure)? actionFailure,
    TResult? Function()? actionSuccess,
  }) {
    return actionFailure?.call(userFailure);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? actionInProgress,
    TResult Function(AuthFailure userFailure)? actionFailure,
    TResult Function()? actionSuccess,
    required TResult orElse(),
  }) {
    if (actionFailure != null) {
      return actionFailure(userFailure);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(ActionInProgress value) actionInProgress,
    required TResult Function(_ActionFailure value) actionFailure,
    required TResult Function(_ActionSuccess value) actionSuccess,
  }) {
    return actionFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(ActionInProgress value)? actionInProgress,
    TResult? Function(_ActionFailure value)? actionFailure,
    TResult? Function(_ActionSuccess value)? actionSuccess,
  }) {
    return actionFailure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(ActionInProgress value)? actionInProgress,
    TResult Function(_ActionFailure value)? actionFailure,
    TResult Function(_ActionSuccess value)? actionSuccess,
    required TResult orElse(),
  }) {
    if (actionFailure != null) {
      return actionFailure(this);
    }
    return orElse();
  }
}

abstract class _ActionFailure implements UserActorState {
  const factory _ActionFailure(final AuthFailure userFailure) =
      _$_ActionFailure;

  AuthFailure get userFailure;
  @JsonKey(ignore: true)
  _$$_ActionFailureCopyWith<_$_ActionFailure> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_ActionSuccessCopyWith<$Res> {
  factory _$$_ActionSuccessCopyWith(
          _$_ActionSuccess value, $Res Function(_$_ActionSuccess) then) =
      __$$_ActionSuccessCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_ActionSuccessCopyWithImpl<$Res>
    extends _$UserActorStateCopyWithImpl<$Res, _$_ActionSuccess>
    implements _$$_ActionSuccessCopyWith<$Res> {
  __$$_ActionSuccessCopyWithImpl(
      _$_ActionSuccess _value, $Res Function(_$_ActionSuccess) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_ActionSuccess implements _ActionSuccess {
  const _$_ActionSuccess();

  @override
  String toString() {
    return 'UserActorState.actionSuccess()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_ActionSuccess);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() actionInProgress,
    required TResult Function(AuthFailure userFailure) actionFailure,
    required TResult Function() actionSuccess,
  }) {
    return actionSuccess();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? actionInProgress,
    TResult? Function(AuthFailure userFailure)? actionFailure,
    TResult? Function()? actionSuccess,
  }) {
    return actionSuccess?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? actionInProgress,
    TResult Function(AuthFailure userFailure)? actionFailure,
    TResult Function()? actionSuccess,
    required TResult orElse(),
  }) {
    if (actionSuccess != null) {
      return actionSuccess();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(ActionInProgress value) actionInProgress,
    required TResult Function(_ActionFailure value) actionFailure,
    required TResult Function(_ActionSuccess value) actionSuccess,
  }) {
    return actionSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(ActionInProgress value)? actionInProgress,
    TResult? Function(_ActionFailure value)? actionFailure,
    TResult? Function(_ActionSuccess value)? actionSuccess,
  }) {
    return actionSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(ActionInProgress value)? actionInProgress,
    TResult Function(_ActionFailure value)? actionFailure,
    TResult Function(_ActionSuccess value)? actionSuccess,
    required TResult orElse(),
  }) {
    if (actionSuccess != null) {
      return actionSuccess(this);
    }
    return orElse();
  }
}

abstract class _ActionSuccess implements UserActorState {
  const factory _ActionSuccess() = _$_ActionSuccess;
}
