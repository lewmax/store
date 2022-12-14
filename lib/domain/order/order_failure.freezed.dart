// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'order_failure.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$OrderFailure {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String error) paymentFailed,
    required TResult Function() unexpected,
    required TResult Function() insufficientPermissions,
    required TResult Function() unableToUpdate,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String error)? paymentFailed,
    TResult? Function()? unexpected,
    TResult? Function()? insufficientPermissions,
    TResult? Function()? unableToUpdate,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String error)? paymentFailed,
    TResult Function()? unexpected,
    TResult Function()? insufficientPermissions,
    TResult Function()? unableToUpdate,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_PaymentFailed value) paymentFailed,
    required TResult Function(_Unexpected value) unexpected,
    required TResult Function(_InsufficientPermissions value)
        insufficientPermissions,
    required TResult Function(_UnableToUpdate value) unableToUpdate,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_PaymentFailed value)? paymentFailed,
    TResult? Function(_Unexpected value)? unexpected,
    TResult? Function(_InsufficientPermissions value)? insufficientPermissions,
    TResult? Function(_UnableToUpdate value)? unableToUpdate,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_PaymentFailed value)? paymentFailed,
    TResult Function(_Unexpected value)? unexpected,
    TResult Function(_InsufficientPermissions value)? insufficientPermissions,
    TResult Function(_UnableToUpdate value)? unableToUpdate,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OrderFailureCopyWith<$Res> {
  factory $OrderFailureCopyWith(
          OrderFailure value, $Res Function(OrderFailure) then) =
      _$OrderFailureCopyWithImpl<$Res, OrderFailure>;
}

/// @nodoc
class _$OrderFailureCopyWithImpl<$Res, $Val extends OrderFailure>
    implements $OrderFailureCopyWith<$Res> {
  _$OrderFailureCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_PaymentFailedCopyWith<$Res> {
  factory _$$_PaymentFailedCopyWith(
          _$_PaymentFailed value, $Res Function(_$_PaymentFailed) then) =
      __$$_PaymentFailedCopyWithImpl<$Res>;
  @useResult
  $Res call({String error});
}

/// @nodoc
class __$$_PaymentFailedCopyWithImpl<$Res>
    extends _$OrderFailureCopyWithImpl<$Res, _$_PaymentFailed>
    implements _$$_PaymentFailedCopyWith<$Res> {
  __$$_PaymentFailedCopyWithImpl(
      _$_PaymentFailed _value, $Res Function(_$_PaymentFailed) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
  }) {
    return _then(_$_PaymentFailed(
      null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_PaymentFailed implements _PaymentFailed {
  const _$_PaymentFailed(this.error);

  @override
  final String error;

  @override
  String toString() {
    return 'OrderFailure.paymentFailed(error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PaymentFailed &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(runtimeType, error);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PaymentFailedCopyWith<_$_PaymentFailed> get copyWith =>
      __$$_PaymentFailedCopyWithImpl<_$_PaymentFailed>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String error) paymentFailed,
    required TResult Function() unexpected,
    required TResult Function() insufficientPermissions,
    required TResult Function() unableToUpdate,
  }) {
    return paymentFailed(error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String error)? paymentFailed,
    TResult? Function()? unexpected,
    TResult? Function()? insufficientPermissions,
    TResult? Function()? unableToUpdate,
  }) {
    return paymentFailed?.call(error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String error)? paymentFailed,
    TResult Function()? unexpected,
    TResult Function()? insufficientPermissions,
    TResult Function()? unableToUpdate,
    required TResult orElse(),
  }) {
    if (paymentFailed != null) {
      return paymentFailed(error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_PaymentFailed value) paymentFailed,
    required TResult Function(_Unexpected value) unexpected,
    required TResult Function(_InsufficientPermissions value)
        insufficientPermissions,
    required TResult Function(_UnableToUpdate value) unableToUpdate,
  }) {
    return paymentFailed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_PaymentFailed value)? paymentFailed,
    TResult? Function(_Unexpected value)? unexpected,
    TResult? Function(_InsufficientPermissions value)? insufficientPermissions,
    TResult? Function(_UnableToUpdate value)? unableToUpdate,
  }) {
    return paymentFailed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_PaymentFailed value)? paymentFailed,
    TResult Function(_Unexpected value)? unexpected,
    TResult Function(_InsufficientPermissions value)? insufficientPermissions,
    TResult Function(_UnableToUpdate value)? unableToUpdate,
    required TResult orElse(),
  }) {
    if (paymentFailed != null) {
      return paymentFailed(this);
    }
    return orElse();
  }
}

abstract class _PaymentFailed implements OrderFailure {
  const factory _PaymentFailed(final String error) = _$_PaymentFailed;

  String get error;
  @JsonKey(ignore: true)
  _$$_PaymentFailedCopyWith<_$_PaymentFailed> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_UnexpectedCopyWith<$Res> {
  factory _$$_UnexpectedCopyWith(
          _$_Unexpected value, $Res Function(_$_Unexpected) then) =
      __$$_UnexpectedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_UnexpectedCopyWithImpl<$Res>
    extends _$OrderFailureCopyWithImpl<$Res, _$_Unexpected>
    implements _$$_UnexpectedCopyWith<$Res> {
  __$$_UnexpectedCopyWithImpl(
      _$_Unexpected _value, $Res Function(_$_Unexpected) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_Unexpected implements _Unexpected {
  const _$_Unexpected();

  @override
  String toString() {
    return 'OrderFailure.unexpected()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_Unexpected);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String error) paymentFailed,
    required TResult Function() unexpected,
    required TResult Function() insufficientPermissions,
    required TResult Function() unableToUpdate,
  }) {
    return unexpected();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String error)? paymentFailed,
    TResult? Function()? unexpected,
    TResult? Function()? insufficientPermissions,
    TResult? Function()? unableToUpdate,
  }) {
    return unexpected?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String error)? paymentFailed,
    TResult Function()? unexpected,
    TResult Function()? insufficientPermissions,
    TResult Function()? unableToUpdate,
    required TResult orElse(),
  }) {
    if (unexpected != null) {
      return unexpected();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_PaymentFailed value) paymentFailed,
    required TResult Function(_Unexpected value) unexpected,
    required TResult Function(_InsufficientPermissions value)
        insufficientPermissions,
    required TResult Function(_UnableToUpdate value) unableToUpdate,
  }) {
    return unexpected(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_PaymentFailed value)? paymentFailed,
    TResult? Function(_Unexpected value)? unexpected,
    TResult? Function(_InsufficientPermissions value)? insufficientPermissions,
    TResult? Function(_UnableToUpdate value)? unableToUpdate,
  }) {
    return unexpected?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_PaymentFailed value)? paymentFailed,
    TResult Function(_Unexpected value)? unexpected,
    TResult Function(_InsufficientPermissions value)? insufficientPermissions,
    TResult Function(_UnableToUpdate value)? unableToUpdate,
    required TResult orElse(),
  }) {
    if (unexpected != null) {
      return unexpected(this);
    }
    return orElse();
  }
}

abstract class _Unexpected implements OrderFailure {
  const factory _Unexpected() = _$_Unexpected;
}

/// @nodoc
abstract class _$$_InsufficientPermissionsCopyWith<$Res> {
  factory _$$_InsufficientPermissionsCopyWith(_$_InsufficientPermissions value,
          $Res Function(_$_InsufficientPermissions) then) =
      __$$_InsufficientPermissionsCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_InsufficientPermissionsCopyWithImpl<$Res>
    extends _$OrderFailureCopyWithImpl<$Res, _$_InsufficientPermissions>
    implements _$$_InsufficientPermissionsCopyWith<$Res> {
  __$$_InsufficientPermissionsCopyWithImpl(_$_InsufficientPermissions _value,
      $Res Function(_$_InsufficientPermissions) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_InsufficientPermissions implements _InsufficientPermissions {
  const _$_InsufficientPermissions();

  @override
  String toString() {
    return 'OrderFailure.insufficientPermissions()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_InsufficientPermissions);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String error) paymentFailed,
    required TResult Function() unexpected,
    required TResult Function() insufficientPermissions,
    required TResult Function() unableToUpdate,
  }) {
    return insufficientPermissions();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String error)? paymentFailed,
    TResult? Function()? unexpected,
    TResult? Function()? insufficientPermissions,
    TResult? Function()? unableToUpdate,
  }) {
    return insufficientPermissions?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String error)? paymentFailed,
    TResult Function()? unexpected,
    TResult Function()? insufficientPermissions,
    TResult Function()? unableToUpdate,
    required TResult orElse(),
  }) {
    if (insufficientPermissions != null) {
      return insufficientPermissions();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_PaymentFailed value) paymentFailed,
    required TResult Function(_Unexpected value) unexpected,
    required TResult Function(_InsufficientPermissions value)
        insufficientPermissions,
    required TResult Function(_UnableToUpdate value) unableToUpdate,
  }) {
    return insufficientPermissions(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_PaymentFailed value)? paymentFailed,
    TResult? Function(_Unexpected value)? unexpected,
    TResult? Function(_InsufficientPermissions value)? insufficientPermissions,
    TResult? Function(_UnableToUpdate value)? unableToUpdate,
  }) {
    return insufficientPermissions?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_PaymentFailed value)? paymentFailed,
    TResult Function(_Unexpected value)? unexpected,
    TResult Function(_InsufficientPermissions value)? insufficientPermissions,
    TResult Function(_UnableToUpdate value)? unableToUpdate,
    required TResult orElse(),
  }) {
    if (insufficientPermissions != null) {
      return insufficientPermissions(this);
    }
    return orElse();
  }
}

abstract class _InsufficientPermissions implements OrderFailure {
  const factory _InsufficientPermissions() = _$_InsufficientPermissions;
}

/// @nodoc
abstract class _$$_UnableToUpdateCopyWith<$Res> {
  factory _$$_UnableToUpdateCopyWith(
          _$_UnableToUpdate value, $Res Function(_$_UnableToUpdate) then) =
      __$$_UnableToUpdateCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_UnableToUpdateCopyWithImpl<$Res>
    extends _$OrderFailureCopyWithImpl<$Res, _$_UnableToUpdate>
    implements _$$_UnableToUpdateCopyWith<$Res> {
  __$$_UnableToUpdateCopyWithImpl(
      _$_UnableToUpdate _value, $Res Function(_$_UnableToUpdate) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_UnableToUpdate implements _UnableToUpdate {
  const _$_UnableToUpdate();

  @override
  String toString() {
    return 'OrderFailure.unableToUpdate()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_UnableToUpdate);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String error) paymentFailed,
    required TResult Function() unexpected,
    required TResult Function() insufficientPermissions,
    required TResult Function() unableToUpdate,
  }) {
    return unableToUpdate();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String error)? paymentFailed,
    TResult? Function()? unexpected,
    TResult? Function()? insufficientPermissions,
    TResult? Function()? unableToUpdate,
  }) {
    return unableToUpdate?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String error)? paymentFailed,
    TResult Function()? unexpected,
    TResult Function()? insufficientPermissions,
    TResult Function()? unableToUpdate,
    required TResult orElse(),
  }) {
    if (unableToUpdate != null) {
      return unableToUpdate();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_PaymentFailed value) paymentFailed,
    required TResult Function(_Unexpected value) unexpected,
    required TResult Function(_InsufficientPermissions value)
        insufficientPermissions,
    required TResult Function(_UnableToUpdate value) unableToUpdate,
  }) {
    return unableToUpdate(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_PaymentFailed value)? paymentFailed,
    TResult? Function(_Unexpected value)? unexpected,
    TResult? Function(_InsufficientPermissions value)? insufficientPermissions,
    TResult? Function(_UnableToUpdate value)? unableToUpdate,
  }) {
    return unableToUpdate?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_PaymentFailed value)? paymentFailed,
    TResult Function(_Unexpected value)? unexpected,
    TResult Function(_InsufficientPermissions value)? insufficientPermissions,
    TResult Function(_UnableToUpdate value)? unableToUpdate,
    required TResult orElse(),
  }) {
    if (unableToUpdate != null) {
      return unableToUpdate(this);
    }
    return orElse();
  }
}

abstract class _UnableToUpdate implements OrderFailure {
  const factory _UnableToUpdate() = _$_UnableToUpdate;
}
