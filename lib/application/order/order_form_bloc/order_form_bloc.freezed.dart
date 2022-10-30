// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'order_form_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$OrderFormEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Order order) initialised,
    required TResult Function(String nameStr) nameChanged,
    required TResult Function(String emailStr) emailChanged,
    required TResult Function(String phoneStr) phoneChanged,
    required TResult Function(String addressStr) addressChanged,
    required TResult Function(PaymentStatuses status) paymentStatusChanged,
    required TResult Function(DeliverStatuses status) deliveryStatusChanged,
    required TResult Function() saved,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Order order)? initialised,
    TResult? Function(String nameStr)? nameChanged,
    TResult? Function(String emailStr)? emailChanged,
    TResult? Function(String phoneStr)? phoneChanged,
    TResult? Function(String addressStr)? addressChanged,
    TResult? Function(PaymentStatuses status)? paymentStatusChanged,
    TResult? Function(DeliverStatuses status)? deliveryStatusChanged,
    TResult? Function()? saved,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Order order)? initialised,
    TResult Function(String nameStr)? nameChanged,
    TResult Function(String emailStr)? emailChanged,
    TResult Function(String phoneStr)? phoneChanged,
    TResult Function(String addressStr)? addressChanged,
    TResult Function(PaymentStatuses status)? paymentStatusChanged,
    TResult Function(DeliverStatuses status)? deliveryStatusChanged,
    TResult Function()? saved,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialised value) initialised,
    required TResult Function(_NameChanged value) nameChanged,
    required TResult Function(_EmailChanged value) emailChanged,
    required TResult Function(_PhoneChanged value) phoneChanged,
    required TResult Function(_AddressChanged value) addressChanged,
    required TResult Function(_PaymentStatusChanged value) paymentStatusChanged,
    required TResult Function(_DeliveryStatusChanged value)
        deliveryStatusChanged,
    required TResult Function(_Saved value) saved,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initialised value)? initialised,
    TResult? Function(_NameChanged value)? nameChanged,
    TResult? Function(_EmailChanged value)? emailChanged,
    TResult? Function(_PhoneChanged value)? phoneChanged,
    TResult? Function(_AddressChanged value)? addressChanged,
    TResult? Function(_PaymentStatusChanged value)? paymentStatusChanged,
    TResult? Function(_DeliveryStatusChanged value)? deliveryStatusChanged,
    TResult? Function(_Saved value)? saved,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialised value)? initialised,
    TResult Function(_NameChanged value)? nameChanged,
    TResult Function(_EmailChanged value)? emailChanged,
    TResult Function(_PhoneChanged value)? phoneChanged,
    TResult Function(_AddressChanged value)? addressChanged,
    TResult Function(_PaymentStatusChanged value)? paymentStatusChanged,
    TResult Function(_DeliveryStatusChanged value)? deliveryStatusChanged,
    TResult Function(_Saved value)? saved,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OrderFormEventCopyWith<$Res> {
  factory $OrderFormEventCopyWith(
          OrderFormEvent value, $Res Function(OrderFormEvent) then) =
      _$OrderFormEventCopyWithImpl<$Res, OrderFormEvent>;
}

/// @nodoc
class _$OrderFormEventCopyWithImpl<$Res, $Val extends OrderFormEvent>
    implements $OrderFormEventCopyWith<$Res> {
  _$OrderFormEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_InitialisedCopyWith<$Res> {
  factory _$$_InitialisedCopyWith(
          _$_Initialised value, $Res Function(_$_Initialised) then) =
      __$$_InitialisedCopyWithImpl<$Res>;
  @useResult
  $Res call({Order order});

  $OrderCopyWith<$Res> get order;
}

/// @nodoc
class __$$_InitialisedCopyWithImpl<$Res>
    extends _$OrderFormEventCopyWithImpl<$Res, _$_Initialised>
    implements _$$_InitialisedCopyWith<$Res> {
  __$$_InitialisedCopyWithImpl(
      _$_Initialised _value, $Res Function(_$_Initialised) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? order = null,
  }) {
    return _then(_$_Initialised(
      null == order
          ? _value.order
          : order // ignore: cast_nullable_to_non_nullable
              as Order,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $OrderCopyWith<$Res> get order {
    return $OrderCopyWith<$Res>(_value.order, (value) {
      return _then(_value.copyWith(order: value));
    });
  }
}

/// @nodoc

class _$_Initialised implements _Initialised {
  const _$_Initialised(this.order);

  @override
  final Order order;

  @override
  String toString() {
    return 'OrderFormEvent.initialised(order: $order)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Initialised &&
            (identical(other.order, order) || other.order == order));
  }

  @override
  int get hashCode => Object.hash(runtimeType, order);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_InitialisedCopyWith<_$_Initialised> get copyWith =>
      __$$_InitialisedCopyWithImpl<_$_Initialised>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Order order) initialised,
    required TResult Function(String nameStr) nameChanged,
    required TResult Function(String emailStr) emailChanged,
    required TResult Function(String phoneStr) phoneChanged,
    required TResult Function(String addressStr) addressChanged,
    required TResult Function(PaymentStatuses status) paymentStatusChanged,
    required TResult Function(DeliverStatuses status) deliveryStatusChanged,
    required TResult Function() saved,
  }) {
    return initialised(order);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Order order)? initialised,
    TResult? Function(String nameStr)? nameChanged,
    TResult? Function(String emailStr)? emailChanged,
    TResult? Function(String phoneStr)? phoneChanged,
    TResult? Function(String addressStr)? addressChanged,
    TResult? Function(PaymentStatuses status)? paymentStatusChanged,
    TResult? Function(DeliverStatuses status)? deliveryStatusChanged,
    TResult? Function()? saved,
  }) {
    return initialised?.call(order);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Order order)? initialised,
    TResult Function(String nameStr)? nameChanged,
    TResult Function(String emailStr)? emailChanged,
    TResult Function(String phoneStr)? phoneChanged,
    TResult Function(String addressStr)? addressChanged,
    TResult Function(PaymentStatuses status)? paymentStatusChanged,
    TResult Function(DeliverStatuses status)? deliveryStatusChanged,
    TResult Function()? saved,
    required TResult orElse(),
  }) {
    if (initialised != null) {
      return initialised(order);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialised value) initialised,
    required TResult Function(_NameChanged value) nameChanged,
    required TResult Function(_EmailChanged value) emailChanged,
    required TResult Function(_PhoneChanged value) phoneChanged,
    required TResult Function(_AddressChanged value) addressChanged,
    required TResult Function(_PaymentStatusChanged value) paymentStatusChanged,
    required TResult Function(_DeliveryStatusChanged value)
        deliveryStatusChanged,
    required TResult Function(_Saved value) saved,
  }) {
    return initialised(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initialised value)? initialised,
    TResult? Function(_NameChanged value)? nameChanged,
    TResult? Function(_EmailChanged value)? emailChanged,
    TResult? Function(_PhoneChanged value)? phoneChanged,
    TResult? Function(_AddressChanged value)? addressChanged,
    TResult? Function(_PaymentStatusChanged value)? paymentStatusChanged,
    TResult? Function(_DeliveryStatusChanged value)? deliveryStatusChanged,
    TResult? Function(_Saved value)? saved,
  }) {
    return initialised?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialised value)? initialised,
    TResult Function(_NameChanged value)? nameChanged,
    TResult Function(_EmailChanged value)? emailChanged,
    TResult Function(_PhoneChanged value)? phoneChanged,
    TResult Function(_AddressChanged value)? addressChanged,
    TResult Function(_PaymentStatusChanged value)? paymentStatusChanged,
    TResult Function(_DeliveryStatusChanged value)? deliveryStatusChanged,
    TResult Function(_Saved value)? saved,
    required TResult orElse(),
  }) {
    if (initialised != null) {
      return initialised(this);
    }
    return orElse();
  }
}

abstract class _Initialised implements OrderFormEvent {
  const factory _Initialised(final Order order) = _$_Initialised;

  Order get order;
  @JsonKey(ignore: true)
  _$$_InitialisedCopyWith<_$_Initialised> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_NameChangedCopyWith<$Res> {
  factory _$$_NameChangedCopyWith(
          _$_NameChanged value, $Res Function(_$_NameChanged) then) =
      __$$_NameChangedCopyWithImpl<$Res>;
  @useResult
  $Res call({String nameStr});
}

/// @nodoc
class __$$_NameChangedCopyWithImpl<$Res>
    extends _$OrderFormEventCopyWithImpl<$Res, _$_NameChanged>
    implements _$$_NameChangedCopyWith<$Res> {
  __$$_NameChangedCopyWithImpl(
      _$_NameChanged _value, $Res Function(_$_NameChanged) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? nameStr = null,
  }) {
    return _then(_$_NameChanged(
      null == nameStr
          ? _value.nameStr
          : nameStr // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_NameChanged implements _NameChanged {
  const _$_NameChanged(this.nameStr);

  @override
  final String nameStr;

  @override
  String toString() {
    return 'OrderFormEvent.nameChanged(nameStr: $nameStr)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_NameChanged &&
            (identical(other.nameStr, nameStr) || other.nameStr == nameStr));
  }

  @override
  int get hashCode => Object.hash(runtimeType, nameStr);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_NameChangedCopyWith<_$_NameChanged> get copyWith =>
      __$$_NameChangedCopyWithImpl<_$_NameChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Order order) initialised,
    required TResult Function(String nameStr) nameChanged,
    required TResult Function(String emailStr) emailChanged,
    required TResult Function(String phoneStr) phoneChanged,
    required TResult Function(String addressStr) addressChanged,
    required TResult Function(PaymentStatuses status) paymentStatusChanged,
    required TResult Function(DeliverStatuses status) deliveryStatusChanged,
    required TResult Function() saved,
  }) {
    return nameChanged(nameStr);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Order order)? initialised,
    TResult? Function(String nameStr)? nameChanged,
    TResult? Function(String emailStr)? emailChanged,
    TResult? Function(String phoneStr)? phoneChanged,
    TResult? Function(String addressStr)? addressChanged,
    TResult? Function(PaymentStatuses status)? paymentStatusChanged,
    TResult? Function(DeliverStatuses status)? deliveryStatusChanged,
    TResult? Function()? saved,
  }) {
    return nameChanged?.call(nameStr);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Order order)? initialised,
    TResult Function(String nameStr)? nameChanged,
    TResult Function(String emailStr)? emailChanged,
    TResult Function(String phoneStr)? phoneChanged,
    TResult Function(String addressStr)? addressChanged,
    TResult Function(PaymentStatuses status)? paymentStatusChanged,
    TResult Function(DeliverStatuses status)? deliveryStatusChanged,
    TResult Function()? saved,
    required TResult orElse(),
  }) {
    if (nameChanged != null) {
      return nameChanged(nameStr);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialised value) initialised,
    required TResult Function(_NameChanged value) nameChanged,
    required TResult Function(_EmailChanged value) emailChanged,
    required TResult Function(_PhoneChanged value) phoneChanged,
    required TResult Function(_AddressChanged value) addressChanged,
    required TResult Function(_PaymentStatusChanged value) paymentStatusChanged,
    required TResult Function(_DeliveryStatusChanged value)
        deliveryStatusChanged,
    required TResult Function(_Saved value) saved,
  }) {
    return nameChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initialised value)? initialised,
    TResult? Function(_NameChanged value)? nameChanged,
    TResult? Function(_EmailChanged value)? emailChanged,
    TResult? Function(_PhoneChanged value)? phoneChanged,
    TResult? Function(_AddressChanged value)? addressChanged,
    TResult? Function(_PaymentStatusChanged value)? paymentStatusChanged,
    TResult? Function(_DeliveryStatusChanged value)? deliveryStatusChanged,
    TResult? Function(_Saved value)? saved,
  }) {
    return nameChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialised value)? initialised,
    TResult Function(_NameChanged value)? nameChanged,
    TResult Function(_EmailChanged value)? emailChanged,
    TResult Function(_PhoneChanged value)? phoneChanged,
    TResult Function(_AddressChanged value)? addressChanged,
    TResult Function(_PaymentStatusChanged value)? paymentStatusChanged,
    TResult Function(_DeliveryStatusChanged value)? deliveryStatusChanged,
    TResult Function(_Saved value)? saved,
    required TResult orElse(),
  }) {
    if (nameChanged != null) {
      return nameChanged(this);
    }
    return orElse();
  }
}

abstract class _NameChanged implements OrderFormEvent {
  const factory _NameChanged(final String nameStr) = _$_NameChanged;

  String get nameStr;
  @JsonKey(ignore: true)
  _$$_NameChangedCopyWith<_$_NameChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_EmailChangedCopyWith<$Res> {
  factory _$$_EmailChangedCopyWith(
          _$_EmailChanged value, $Res Function(_$_EmailChanged) then) =
      __$$_EmailChangedCopyWithImpl<$Res>;
  @useResult
  $Res call({String emailStr});
}

/// @nodoc
class __$$_EmailChangedCopyWithImpl<$Res>
    extends _$OrderFormEventCopyWithImpl<$Res, _$_EmailChanged>
    implements _$$_EmailChangedCopyWith<$Res> {
  __$$_EmailChangedCopyWithImpl(
      _$_EmailChanged _value, $Res Function(_$_EmailChanged) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? emailStr = null,
  }) {
    return _then(_$_EmailChanged(
      null == emailStr
          ? _value.emailStr
          : emailStr // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_EmailChanged implements _EmailChanged {
  const _$_EmailChanged(this.emailStr);

  @override
  final String emailStr;

  @override
  String toString() {
    return 'OrderFormEvent.emailChanged(emailStr: $emailStr)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_EmailChanged &&
            (identical(other.emailStr, emailStr) ||
                other.emailStr == emailStr));
  }

  @override
  int get hashCode => Object.hash(runtimeType, emailStr);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_EmailChangedCopyWith<_$_EmailChanged> get copyWith =>
      __$$_EmailChangedCopyWithImpl<_$_EmailChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Order order) initialised,
    required TResult Function(String nameStr) nameChanged,
    required TResult Function(String emailStr) emailChanged,
    required TResult Function(String phoneStr) phoneChanged,
    required TResult Function(String addressStr) addressChanged,
    required TResult Function(PaymentStatuses status) paymentStatusChanged,
    required TResult Function(DeliverStatuses status) deliveryStatusChanged,
    required TResult Function() saved,
  }) {
    return emailChanged(emailStr);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Order order)? initialised,
    TResult? Function(String nameStr)? nameChanged,
    TResult? Function(String emailStr)? emailChanged,
    TResult? Function(String phoneStr)? phoneChanged,
    TResult? Function(String addressStr)? addressChanged,
    TResult? Function(PaymentStatuses status)? paymentStatusChanged,
    TResult? Function(DeliverStatuses status)? deliveryStatusChanged,
    TResult? Function()? saved,
  }) {
    return emailChanged?.call(emailStr);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Order order)? initialised,
    TResult Function(String nameStr)? nameChanged,
    TResult Function(String emailStr)? emailChanged,
    TResult Function(String phoneStr)? phoneChanged,
    TResult Function(String addressStr)? addressChanged,
    TResult Function(PaymentStatuses status)? paymentStatusChanged,
    TResult Function(DeliverStatuses status)? deliveryStatusChanged,
    TResult Function()? saved,
    required TResult orElse(),
  }) {
    if (emailChanged != null) {
      return emailChanged(emailStr);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialised value) initialised,
    required TResult Function(_NameChanged value) nameChanged,
    required TResult Function(_EmailChanged value) emailChanged,
    required TResult Function(_PhoneChanged value) phoneChanged,
    required TResult Function(_AddressChanged value) addressChanged,
    required TResult Function(_PaymentStatusChanged value) paymentStatusChanged,
    required TResult Function(_DeliveryStatusChanged value)
        deliveryStatusChanged,
    required TResult Function(_Saved value) saved,
  }) {
    return emailChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initialised value)? initialised,
    TResult? Function(_NameChanged value)? nameChanged,
    TResult? Function(_EmailChanged value)? emailChanged,
    TResult? Function(_PhoneChanged value)? phoneChanged,
    TResult? Function(_AddressChanged value)? addressChanged,
    TResult? Function(_PaymentStatusChanged value)? paymentStatusChanged,
    TResult? Function(_DeliveryStatusChanged value)? deliveryStatusChanged,
    TResult? Function(_Saved value)? saved,
  }) {
    return emailChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialised value)? initialised,
    TResult Function(_NameChanged value)? nameChanged,
    TResult Function(_EmailChanged value)? emailChanged,
    TResult Function(_PhoneChanged value)? phoneChanged,
    TResult Function(_AddressChanged value)? addressChanged,
    TResult Function(_PaymentStatusChanged value)? paymentStatusChanged,
    TResult Function(_DeliveryStatusChanged value)? deliveryStatusChanged,
    TResult Function(_Saved value)? saved,
    required TResult orElse(),
  }) {
    if (emailChanged != null) {
      return emailChanged(this);
    }
    return orElse();
  }
}

abstract class _EmailChanged implements OrderFormEvent {
  const factory _EmailChanged(final String emailStr) = _$_EmailChanged;

  String get emailStr;
  @JsonKey(ignore: true)
  _$$_EmailChangedCopyWith<_$_EmailChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_PhoneChangedCopyWith<$Res> {
  factory _$$_PhoneChangedCopyWith(
          _$_PhoneChanged value, $Res Function(_$_PhoneChanged) then) =
      __$$_PhoneChangedCopyWithImpl<$Res>;
  @useResult
  $Res call({String phoneStr});
}

/// @nodoc
class __$$_PhoneChangedCopyWithImpl<$Res>
    extends _$OrderFormEventCopyWithImpl<$Res, _$_PhoneChanged>
    implements _$$_PhoneChangedCopyWith<$Res> {
  __$$_PhoneChangedCopyWithImpl(
      _$_PhoneChanged _value, $Res Function(_$_PhoneChanged) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? phoneStr = null,
  }) {
    return _then(_$_PhoneChanged(
      null == phoneStr
          ? _value.phoneStr
          : phoneStr // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_PhoneChanged implements _PhoneChanged {
  const _$_PhoneChanged(this.phoneStr);

  @override
  final String phoneStr;

  @override
  String toString() {
    return 'OrderFormEvent.phoneChanged(phoneStr: $phoneStr)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PhoneChanged &&
            (identical(other.phoneStr, phoneStr) ||
                other.phoneStr == phoneStr));
  }

  @override
  int get hashCode => Object.hash(runtimeType, phoneStr);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PhoneChangedCopyWith<_$_PhoneChanged> get copyWith =>
      __$$_PhoneChangedCopyWithImpl<_$_PhoneChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Order order) initialised,
    required TResult Function(String nameStr) nameChanged,
    required TResult Function(String emailStr) emailChanged,
    required TResult Function(String phoneStr) phoneChanged,
    required TResult Function(String addressStr) addressChanged,
    required TResult Function(PaymentStatuses status) paymentStatusChanged,
    required TResult Function(DeliverStatuses status) deliveryStatusChanged,
    required TResult Function() saved,
  }) {
    return phoneChanged(phoneStr);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Order order)? initialised,
    TResult? Function(String nameStr)? nameChanged,
    TResult? Function(String emailStr)? emailChanged,
    TResult? Function(String phoneStr)? phoneChanged,
    TResult? Function(String addressStr)? addressChanged,
    TResult? Function(PaymentStatuses status)? paymentStatusChanged,
    TResult? Function(DeliverStatuses status)? deliveryStatusChanged,
    TResult? Function()? saved,
  }) {
    return phoneChanged?.call(phoneStr);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Order order)? initialised,
    TResult Function(String nameStr)? nameChanged,
    TResult Function(String emailStr)? emailChanged,
    TResult Function(String phoneStr)? phoneChanged,
    TResult Function(String addressStr)? addressChanged,
    TResult Function(PaymentStatuses status)? paymentStatusChanged,
    TResult Function(DeliverStatuses status)? deliveryStatusChanged,
    TResult Function()? saved,
    required TResult orElse(),
  }) {
    if (phoneChanged != null) {
      return phoneChanged(phoneStr);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialised value) initialised,
    required TResult Function(_NameChanged value) nameChanged,
    required TResult Function(_EmailChanged value) emailChanged,
    required TResult Function(_PhoneChanged value) phoneChanged,
    required TResult Function(_AddressChanged value) addressChanged,
    required TResult Function(_PaymentStatusChanged value) paymentStatusChanged,
    required TResult Function(_DeliveryStatusChanged value)
        deliveryStatusChanged,
    required TResult Function(_Saved value) saved,
  }) {
    return phoneChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initialised value)? initialised,
    TResult? Function(_NameChanged value)? nameChanged,
    TResult? Function(_EmailChanged value)? emailChanged,
    TResult? Function(_PhoneChanged value)? phoneChanged,
    TResult? Function(_AddressChanged value)? addressChanged,
    TResult? Function(_PaymentStatusChanged value)? paymentStatusChanged,
    TResult? Function(_DeliveryStatusChanged value)? deliveryStatusChanged,
    TResult? Function(_Saved value)? saved,
  }) {
    return phoneChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialised value)? initialised,
    TResult Function(_NameChanged value)? nameChanged,
    TResult Function(_EmailChanged value)? emailChanged,
    TResult Function(_PhoneChanged value)? phoneChanged,
    TResult Function(_AddressChanged value)? addressChanged,
    TResult Function(_PaymentStatusChanged value)? paymentStatusChanged,
    TResult Function(_DeliveryStatusChanged value)? deliveryStatusChanged,
    TResult Function(_Saved value)? saved,
    required TResult orElse(),
  }) {
    if (phoneChanged != null) {
      return phoneChanged(this);
    }
    return orElse();
  }
}

abstract class _PhoneChanged implements OrderFormEvent {
  const factory _PhoneChanged(final String phoneStr) = _$_PhoneChanged;

  String get phoneStr;
  @JsonKey(ignore: true)
  _$$_PhoneChangedCopyWith<_$_PhoneChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_AddressChangedCopyWith<$Res> {
  factory _$$_AddressChangedCopyWith(
          _$_AddressChanged value, $Res Function(_$_AddressChanged) then) =
      __$$_AddressChangedCopyWithImpl<$Res>;
  @useResult
  $Res call({String addressStr});
}

/// @nodoc
class __$$_AddressChangedCopyWithImpl<$Res>
    extends _$OrderFormEventCopyWithImpl<$Res, _$_AddressChanged>
    implements _$$_AddressChangedCopyWith<$Res> {
  __$$_AddressChangedCopyWithImpl(
      _$_AddressChanged _value, $Res Function(_$_AddressChanged) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? addressStr = null,
  }) {
    return _then(_$_AddressChanged(
      null == addressStr
          ? _value.addressStr
          : addressStr // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_AddressChanged implements _AddressChanged {
  const _$_AddressChanged(this.addressStr);

  @override
  final String addressStr;

  @override
  String toString() {
    return 'OrderFormEvent.addressChanged(addressStr: $addressStr)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AddressChanged &&
            (identical(other.addressStr, addressStr) ||
                other.addressStr == addressStr));
  }

  @override
  int get hashCode => Object.hash(runtimeType, addressStr);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AddressChangedCopyWith<_$_AddressChanged> get copyWith =>
      __$$_AddressChangedCopyWithImpl<_$_AddressChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Order order) initialised,
    required TResult Function(String nameStr) nameChanged,
    required TResult Function(String emailStr) emailChanged,
    required TResult Function(String phoneStr) phoneChanged,
    required TResult Function(String addressStr) addressChanged,
    required TResult Function(PaymentStatuses status) paymentStatusChanged,
    required TResult Function(DeliverStatuses status) deliveryStatusChanged,
    required TResult Function() saved,
  }) {
    return addressChanged(addressStr);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Order order)? initialised,
    TResult? Function(String nameStr)? nameChanged,
    TResult? Function(String emailStr)? emailChanged,
    TResult? Function(String phoneStr)? phoneChanged,
    TResult? Function(String addressStr)? addressChanged,
    TResult? Function(PaymentStatuses status)? paymentStatusChanged,
    TResult? Function(DeliverStatuses status)? deliveryStatusChanged,
    TResult? Function()? saved,
  }) {
    return addressChanged?.call(addressStr);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Order order)? initialised,
    TResult Function(String nameStr)? nameChanged,
    TResult Function(String emailStr)? emailChanged,
    TResult Function(String phoneStr)? phoneChanged,
    TResult Function(String addressStr)? addressChanged,
    TResult Function(PaymentStatuses status)? paymentStatusChanged,
    TResult Function(DeliverStatuses status)? deliveryStatusChanged,
    TResult Function()? saved,
    required TResult orElse(),
  }) {
    if (addressChanged != null) {
      return addressChanged(addressStr);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialised value) initialised,
    required TResult Function(_NameChanged value) nameChanged,
    required TResult Function(_EmailChanged value) emailChanged,
    required TResult Function(_PhoneChanged value) phoneChanged,
    required TResult Function(_AddressChanged value) addressChanged,
    required TResult Function(_PaymentStatusChanged value) paymentStatusChanged,
    required TResult Function(_DeliveryStatusChanged value)
        deliveryStatusChanged,
    required TResult Function(_Saved value) saved,
  }) {
    return addressChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initialised value)? initialised,
    TResult? Function(_NameChanged value)? nameChanged,
    TResult? Function(_EmailChanged value)? emailChanged,
    TResult? Function(_PhoneChanged value)? phoneChanged,
    TResult? Function(_AddressChanged value)? addressChanged,
    TResult? Function(_PaymentStatusChanged value)? paymentStatusChanged,
    TResult? Function(_DeliveryStatusChanged value)? deliveryStatusChanged,
    TResult? Function(_Saved value)? saved,
  }) {
    return addressChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialised value)? initialised,
    TResult Function(_NameChanged value)? nameChanged,
    TResult Function(_EmailChanged value)? emailChanged,
    TResult Function(_PhoneChanged value)? phoneChanged,
    TResult Function(_AddressChanged value)? addressChanged,
    TResult Function(_PaymentStatusChanged value)? paymentStatusChanged,
    TResult Function(_DeliveryStatusChanged value)? deliveryStatusChanged,
    TResult Function(_Saved value)? saved,
    required TResult orElse(),
  }) {
    if (addressChanged != null) {
      return addressChanged(this);
    }
    return orElse();
  }
}

abstract class _AddressChanged implements OrderFormEvent {
  const factory _AddressChanged(final String addressStr) = _$_AddressChanged;

  String get addressStr;
  @JsonKey(ignore: true)
  _$$_AddressChangedCopyWith<_$_AddressChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_PaymentStatusChangedCopyWith<$Res> {
  factory _$$_PaymentStatusChangedCopyWith(_$_PaymentStatusChanged value,
          $Res Function(_$_PaymentStatusChanged) then) =
      __$$_PaymentStatusChangedCopyWithImpl<$Res>;
  @useResult
  $Res call({PaymentStatuses status});
}

/// @nodoc
class __$$_PaymentStatusChangedCopyWithImpl<$Res>
    extends _$OrderFormEventCopyWithImpl<$Res, _$_PaymentStatusChanged>
    implements _$$_PaymentStatusChangedCopyWith<$Res> {
  __$$_PaymentStatusChangedCopyWithImpl(_$_PaymentStatusChanged _value,
      $Res Function(_$_PaymentStatusChanged) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
  }) {
    return _then(_$_PaymentStatusChanged(
      null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as PaymentStatuses,
    ));
  }
}

/// @nodoc

class _$_PaymentStatusChanged implements _PaymentStatusChanged {
  const _$_PaymentStatusChanged(this.status);

  @override
  final PaymentStatuses status;

  @override
  String toString() {
    return 'OrderFormEvent.paymentStatusChanged(status: $status)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PaymentStatusChanged &&
            (identical(other.status, status) || other.status == status));
  }

  @override
  int get hashCode => Object.hash(runtimeType, status);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PaymentStatusChangedCopyWith<_$_PaymentStatusChanged> get copyWith =>
      __$$_PaymentStatusChangedCopyWithImpl<_$_PaymentStatusChanged>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Order order) initialised,
    required TResult Function(String nameStr) nameChanged,
    required TResult Function(String emailStr) emailChanged,
    required TResult Function(String phoneStr) phoneChanged,
    required TResult Function(String addressStr) addressChanged,
    required TResult Function(PaymentStatuses status) paymentStatusChanged,
    required TResult Function(DeliverStatuses status) deliveryStatusChanged,
    required TResult Function() saved,
  }) {
    return paymentStatusChanged(status);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Order order)? initialised,
    TResult? Function(String nameStr)? nameChanged,
    TResult? Function(String emailStr)? emailChanged,
    TResult? Function(String phoneStr)? phoneChanged,
    TResult? Function(String addressStr)? addressChanged,
    TResult? Function(PaymentStatuses status)? paymentStatusChanged,
    TResult? Function(DeliverStatuses status)? deliveryStatusChanged,
    TResult? Function()? saved,
  }) {
    return paymentStatusChanged?.call(status);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Order order)? initialised,
    TResult Function(String nameStr)? nameChanged,
    TResult Function(String emailStr)? emailChanged,
    TResult Function(String phoneStr)? phoneChanged,
    TResult Function(String addressStr)? addressChanged,
    TResult Function(PaymentStatuses status)? paymentStatusChanged,
    TResult Function(DeliverStatuses status)? deliveryStatusChanged,
    TResult Function()? saved,
    required TResult orElse(),
  }) {
    if (paymentStatusChanged != null) {
      return paymentStatusChanged(status);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialised value) initialised,
    required TResult Function(_NameChanged value) nameChanged,
    required TResult Function(_EmailChanged value) emailChanged,
    required TResult Function(_PhoneChanged value) phoneChanged,
    required TResult Function(_AddressChanged value) addressChanged,
    required TResult Function(_PaymentStatusChanged value) paymentStatusChanged,
    required TResult Function(_DeliveryStatusChanged value)
        deliveryStatusChanged,
    required TResult Function(_Saved value) saved,
  }) {
    return paymentStatusChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initialised value)? initialised,
    TResult? Function(_NameChanged value)? nameChanged,
    TResult? Function(_EmailChanged value)? emailChanged,
    TResult? Function(_PhoneChanged value)? phoneChanged,
    TResult? Function(_AddressChanged value)? addressChanged,
    TResult? Function(_PaymentStatusChanged value)? paymentStatusChanged,
    TResult? Function(_DeliveryStatusChanged value)? deliveryStatusChanged,
    TResult? Function(_Saved value)? saved,
  }) {
    return paymentStatusChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialised value)? initialised,
    TResult Function(_NameChanged value)? nameChanged,
    TResult Function(_EmailChanged value)? emailChanged,
    TResult Function(_PhoneChanged value)? phoneChanged,
    TResult Function(_AddressChanged value)? addressChanged,
    TResult Function(_PaymentStatusChanged value)? paymentStatusChanged,
    TResult Function(_DeliveryStatusChanged value)? deliveryStatusChanged,
    TResult Function(_Saved value)? saved,
    required TResult orElse(),
  }) {
    if (paymentStatusChanged != null) {
      return paymentStatusChanged(this);
    }
    return orElse();
  }
}

abstract class _PaymentStatusChanged implements OrderFormEvent {
  const factory _PaymentStatusChanged(final PaymentStatuses status) =
      _$_PaymentStatusChanged;

  PaymentStatuses get status;
  @JsonKey(ignore: true)
  _$$_PaymentStatusChangedCopyWith<_$_PaymentStatusChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_DeliveryStatusChangedCopyWith<$Res> {
  factory _$$_DeliveryStatusChangedCopyWith(_$_DeliveryStatusChanged value,
          $Res Function(_$_DeliveryStatusChanged) then) =
      __$$_DeliveryStatusChangedCopyWithImpl<$Res>;
  @useResult
  $Res call({DeliverStatuses status});
}

/// @nodoc
class __$$_DeliveryStatusChangedCopyWithImpl<$Res>
    extends _$OrderFormEventCopyWithImpl<$Res, _$_DeliveryStatusChanged>
    implements _$$_DeliveryStatusChangedCopyWith<$Res> {
  __$$_DeliveryStatusChangedCopyWithImpl(_$_DeliveryStatusChanged _value,
      $Res Function(_$_DeliveryStatusChanged) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
  }) {
    return _then(_$_DeliveryStatusChanged(
      null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as DeliverStatuses,
    ));
  }
}

/// @nodoc

class _$_DeliveryStatusChanged implements _DeliveryStatusChanged {
  const _$_DeliveryStatusChanged(this.status);

  @override
  final DeliverStatuses status;

  @override
  String toString() {
    return 'OrderFormEvent.deliveryStatusChanged(status: $status)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_DeliveryStatusChanged &&
            (identical(other.status, status) || other.status == status));
  }

  @override
  int get hashCode => Object.hash(runtimeType, status);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_DeliveryStatusChangedCopyWith<_$_DeliveryStatusChanged> get copyWith =>
      __$$_DeliveryStatusChangedCopyWithImpl<_$_DeliveryStatusChanged>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Order order) initialised,
    required TResult Function(String nameStr) nameChanged,
    required TResult Function(String emailStr) emailChanged,
    required TResult Function(String phoneStr) phoneChanged,
    required TResult Function(String addressStr) addressChanged,
    required TResult Function(PaymentStatuses status) paymentStatusChanged,
    required TResult Function(DeliverStatuses status) deliveryStatusChanged,
    required TResult Function() saved,
  }) {
    return deliveryStatusChanged(status);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Order order)? initialised,
    TResult? Function(String nameStr)? nameChanged,
    TResult? Function(String emailStr)? emailChanged,
    TResult? Function(String phoneStr)? phoneChanged,
    TResult? Function(String addressStr)? addressChanged,
    TResult? Function(PaymentStatuses status)? paymentStatusChanged,
    TResult? Function(DeliverStatuses status)? deliveryStatusChanged,
    TResult? Function()? saved,
  }) {
    return deliveryStatusChanged?.call(status);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Order order)? initialised,
    TResult Function(String nameStr)? nameChanged,
    TResult Function(String emailStr)? emailChanged,
    TResult Function(String phoneStr)? phoneChanged,
    TResult Function(String addressStr)? addressChanged,
    TResult Function(PaymentStatuses status)? paymentStatusChanged,
    TResult Function(DeliverStatuses status)? deliveryStatusChanged,
    TResult Function()? saved,
    required TResult orElse(),
  }) {
    if (deliveryStatusChanged != null) {
      return deliveryStatusChanged(status);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialised value) initialised,
    required TResult Function(_NameChanged value) nameChanged,
    required TResult Function(_EmailChanged value) emailChanged,
    required TResult Function(_PhoneChanged value) phoneChanged,
    required TResult Function(_AddressChanged value) addressChanged,
    required TResult Function(_PaymentStatusChanged value) paymentStatusChanged,
    required TResult Function(_DeliveryStatusChanged value)
        deliveryStatusChanged,
    required TResult Function(_Saved value) saved,
  }) {
    return deliveryStatusChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initialised value)? initialised,
    TResult? Function(_NameChanged value)? nameChanged,
    TResult? Function(_EmailChanged value)? emailChanged,
    TResult? Function(_PhoneChanged value)? phoneChanged,
    TResult? Function(_AddressChanged value)? addressChanged,
    TResult? Function(_PaymentStatusChanged value)? paymentStatusChanged,
    TResult? Function(_DeliveryStatusChanged value)? deliveryStatusChanged,
    TResult? Function(_Saved value)? saved,
  }) {
    return deliveryStatusChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialised value)? initialised,
    TResult Function(_NameChanged value)? nameChanged,
    TResult Function(_EmailChanged value)? emailChanged,
    TResult Function(_PhoneChanged value)? phoneChanged,
    TResult Function(_AddressChanged value)? addressChanged,
    TResult Function(_PaymentStatusChanged value)? paymentStatusChanged,
    TResult Function(_DeliveryStatusChanged value)? deliveryStatusChanged,
    TResult Function(_Saved value)? saved,
    required TResult orElse(),
  }) {
    if (deliveryStatusChanged != null) {
      return deliveryStatusChanged(this);
    }
    return orElse();
  }
}

abstract class _DeliveryStatusChanged implements OrderFormEvent {
  const factory _DeliveryStatusChanged(final DeliverStatuses status) =
      _$_DeliveryStatusChanged;

  DeliverStatuses get status;
  @JsonKey(ignore: true)
  _$$_DeliveryStatusChangedCopyWith<_$_DeliveryStatusChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_SavedCopyWith<$Res> {
  factory _$$_SavedCopyWith(_$_Saved value, $Res Function(_$_Saved) then) =
      __$$_SavedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_SavedCopyWithImpl<$Res>
    extends _$OrderFormEventCopyWithImpl<$Res, _$_Saved>
    implements _$$_SavedCopyWith<$Res> {
  __$$_SavedCopyWithImpl(_$_Saved _value, $Res Function(_$_Saved) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_Saved implements _Saved {
  const _$_Saved();

  @override
  String toString() {
    return 'OrderFormEvent.saved()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_Saved);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Order order) initialised,
    required TResult Function(String nameStr) nameChanged,
    required TResult Function(String emailStr) emailChanged,
    required TResult Function(String phoneStr) phoneChanged,
    required TResult Function(String addressStr) addressChanged,
    required TResult Function(PaymentStatuses status) paymentStatusChanged,
    required TResult Function(DeliverStatuses status) deliveryStatusChanged,
    required TResult Function() saved,
  }) {
    return saved();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Order order)? initialised,
    TResult? Function(String nameStr)? nameChanged,
    TResult? Function(String emailStr)? emailChanged,
    TResult? Function(String phoneStr)? phoneChanged,
    TResult? Function(String addressStr)? addressChanged,
    TResult? Function(PaymentStatuses status)? paymentStatusChanged,
    TResult? Function(DeliverStatuses status)? deliveryStatusChanged,
    TResult? Function()? saved,
  }) {
    return saved?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Order order)? initialised,
    TResult Function(String nameStr)? nameChanged,
    TResult Function(String emailStr)? emailChanged,
    TResult Function(String phoneStr)? phoneChanged,
    TResult Function(String addressStr)? addressChanged,
    TResult Function(PaymentStatuses status)? paymentStatusChanged,
    TResult Function(DeliverStatuses status)? deliveryStatusChanged,
    TResult Function()? saved,
    required TResult orElse(),
  }) {
    if (saved != null) {
      return saved();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialised value) initialised,
    required TResult Function(_NameChanged value) nameChanged,
    required TResult Function(_EmailChanged value) emailChanged,
    required TResult Function(_PhoneChanged value) phoneChanged,
    required TResult Function(_AddressChanged value) addressChanged,
    required TResult Function(_PaymentStatusChanged value) paymentStatusChanged,
    required TResult Function(_DeliveryStatusChanged value)
        deliveryStatusChanged,
    required TResult Function(_Saved value) saved,
  }) {
    return saved(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initialised value)? initialised,
    TResult? Function(_NameChanged value)? nameChanged,
    TResult? Function(_EmailChanged value)? emailChanged,
    TResult? Function(_PhoneChanged value)? phoneChanged,
    TResult? Function(_AddressChanged value)? addressChanged,
    TResult? Function(_PaymentStatusChanged value)? paymentStatusChanged,
    TResult? Function(_DeliveryStatusChanged value)? deliveryStatusChanged,
    TResult? Function(_Saved value)? saved,
  }) {
    return saved?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialised value)? initialised,
    TResult Function(_NameChanged value)? nameChanged,
    TResult Function(_EmailChanged value)? emailChanged,
    TResult Function(_PhoneChanged value)? phoneChanged,
    TResult Function(_AddressChanged value)? addressChanged,
    TResult Function(_PaymentStatusChanged value)? paymentStatusChanged,
    TResult Function(_DeliveryStatusChanged value)? deliveryStatusChanged,
    TResult Function(_Saved value)? saved,
    required TResult orElse(),
  }) {
    if (saved != null) {
      return saved(this);
    }
    return orElse();
  }
}

abstract class _Saved implements OrderFormEvent {
  const factory _Saved() = _$_Saved;
}

/// @nodoc
mixin _$OrderFormState {
  Order get order => throw _privateConstructorUsedError;
  bool get showErrorMessages => throw _privateConstructorUsedError;
  bool get isSaving => throw _privateConstructorUsedError;
  Either<OrderFailure, Unit>? get saveFailureOrSuccess =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $OrderFormStateCopyWith<OrderFormState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OrderFormStateCopyWith<$Res> {
  factory $OrderFormStateCopyWith(
          OrderFormState value, $Res Function(OrderFormState) then) =
      _$OrderFormStateCopyWithImpl<$Res, OrderFormState>;
  @useResult
  $Res call(
      {Order order,
      bool showErrorMessages,
      bool isSaving,
      Either<OrderFailure, Unit>? saveFailureOrSuccess});

  $OrderCopyWith<$Res> get order;
}

/// @nodoc
class _$OrderFormStateCopyWithImpl<$Res, $Val extends OrderFormState>
    implements $OrderFormStateCopyWith<$Res> {
  _$OrderFormStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? order = null,
    Object? showErrorMessages = null,
    Object? isSaving = null,
    Object? saveFailureOrSuccess = freezed,
  }) {
    return _then(_value.copyWith(
      order: null == order
          ? _value.order
          : order // ignore: cast_nullable_to_non_nullable
              as Order,
      showErrorMessages: null == showErrorMessages
          ? _value.showErrorMessages
          : showErrorMessages // ignore: cast_nullable_to_non_nullable
              as bool,
      isSaving: null == isSaving
          ? _value.isSaving
          : isSaving // ignore: cast_nullable_to_non_nullable
              as bool,
      saveFailureOrSuccess: freezed == saveFailureOrSuccess
          ? _value.saveFailureOrSuccess
          : saveFailureOrSuccess // ignore: cast_nullable_to_non_nullable
              as Either<OrderFailure, Unit>?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $OrderCopyWith<$Res> get order {
    return $OrderCopyWith<$Res>(_value.order, (value) {
      return _then(_value.copyWith(order: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_OrderFormStateCopyWith<$Res>
    implements $OrderFormStateCopyWith<$Res> {
  factory _$$_OrderFormStateCopyWith(
          _$_OrderFormState value, $Res Function(_$_OrderFormState) then) =
      __$$_OrderFormStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {Order order,
      bool showErrorMessages,
      bool isSaving,
      Either<OrderFailure, Unit>? saveFailureOrSuccess});

  @override
  $OrderCopyWith<$Res> get order;
}

/// @nodoc
class __$$_OrderFormStateCopyWithImpl<$Res>
    extends _$OrderFormStateCopyWithImpl<$Res, _$_OrderFormState>
    implements _$$_OrderFormStateCopyWith<$Res> {
  __$$_OrderFormStateCopyWithImpl(
      _$_OrderFormState _value, $Res Function(_$_OrderFormState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? order = null,
    Object? showErrorMessages = null,
    Object? isSaving = null,
    Object? saveFailureOrSuccess = freezed,
  }) {
    return _then(_$_OrderFormState(
      order: null == order
          ? _value.order
          : order // ignore: cast_nullable_to_non_nullable
              as Order,
      showErrorMessages: null == showErrorMessages
          ? _value.showErrorMessages
          : showErrorMessages // ignore: cast_nullable_to_non_nullable
              as bool,
      isSaving: null == isSaving
          ? _value.isSaving
          : isSaving // ignore: cast_nullable_to_non_nullable
              as bool,
      saveFailureOrSuccess: freezed == saveFailureOrSuccess
          ? _value.saveFailureOrSuccess
          : saveFailureOrSuccess // ignore: cast_nullable_to_non_nullable
              as Either<OrderFailure, Unit>?,
    ));
  }
}

/// @nodoc

class _$_OrderFormState implements _OrderFormState {
  const _$_OrderFormState(
      {required this.order,
      required this.showErrorMessages,
      required this.isSaving,
      required this.saveFailureOrSuccess});

  @override
  final Order order;
  @override
  final bool showErrorMessages;
  @override
  final bool isSaving;
  @override
  final Either<OrderFailure, Unit>? saveFailureOrSuccess;

  @override
  String toString() {
    return 'OrderFormState(order: $order, showErrorMessages: $showErrorMessages, isSaving: $isSaving, saveFailureOrSuccess: $saveFailureOrSuccess)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_OrderFormState &&
            (identical(other.order, order) || other.order == order) &&
            (identical(other.showErrorMessages, showErrorMessages) ||
                other.showErrorMessages == showErrorMessages) &&
            (identical(other.isSaving, isSaving) ||
                other.isSaving == isSaving) &&
            (identical(other.saveFailureOrSuccess, saveFailureOrSuccess) ||
                other.saveFailureOrSuccess == saveFailureOrSuccess));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, order, showErrorMessages, isSaving, saveFailureOrSuccess);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_OrderFormStateCopyWith<_$_OrderFormState> get copyWith =>
      __$$_OrderFormStateCopyWithImpl<_$_OrderFormState>(this, _$identity);
}

abstract class _OrderFormState implements OrderFormState {
  const factory _OrderFormState(
          {required final Order order,
          required final bool showErrorMessages,
          required final bool isSaving,
          required final Either<OrderFailure, Unit>? saveFailureOrSuccess}) =
      _$_OrderFormState;

  @override
  Order get order;
  @override
  bool get showErrorMessages;
  @override
  bool get isSaving;
  @override
  Either<OrderFailure, Unit>? get saveFailureOrSuccess;
  @override
  @JsonKey(ignore: true)
  _$$_OrderFormStateCopyWith<_$_OrderFormState> get copyWith =>
      throw _privateConstructorUsedError;
}
