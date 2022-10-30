// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'order.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$Order {
  UniqueId get id => throw _privateConstructorUsedError;
  DateTime get orderDate => throw _privateConstructorUsedError;
  DateTime get deliveryDate => throw _privateConstructorUsedError;
  DeliveryStatus get deliveryStatus => throw _privateConstructorUsedError;
  PaymentStatus get paymentStatus => throw _privateConstructorUsedError;
  FullName get name => throw _privateConstructorUsedError;
  EmailAddress get email => throw _privateConstructorUsedError;
  Phone get phone => throw _privateConstructorUsedError;
  Address get address => throw _privateConstructorUsedError;
  ImageUrl get orderImageUrl => throw _privateConstructorUsedError;
  ListMin1<CartItem> get orderItems => throw _privateConstructorUsedError;
  Price get deliveryFee => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $OrderCopyWith<Order> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OrderCopyWith<$Res> {
  factory $OrderCopyWith(Order value, $Res Function(Order) then) =
      _$OrderCopyWithImpl<$Res, Order>;
  @useResult
  $Res call(
      {UniqueId id,
      DateTime orderDate,
      DateTime deliveryDate,
      DeliveryStatus deliveryStatus,
      PaymentStatus paymentStatus,
      FullName name,
      EmailAddress email,
      Phone phone,
      Address address,
      ImageUrl orderImageUrl,
      ListMin1<CartItem> orderItems,
      Price deliveryFee});
}

/// @nodoc
class _$OrderCopyWithImpl<$Res, $Val extends Order>
    implements $OrderCopyWith<$Res> {
  _$OrderCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? orderDate = null,
    Object? deliveryDate = null,
    Object? deliveryStatus = null,
    Object? paymentStatus = null,
    Object? name = null,
    Object? email = null,
    Object? phone = null,
    Object? address = null,
    Object? orderImageUrl = null,
    Object? orderItems = null,
    Object? deliveryFee = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as UniqueId,
      orderDate: null == orderDate
          ? _value.orderDate
          : orderDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      deliveryDate: null == deliveryDate
          ? _value.deliveryDate
          : deliveryDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      deliveryStatus: null == deliveryStatus
          ? _value.deliveryStatus
          : deliveryStatus // ignore: cast_nullable_to_non_nullable
              as DeliveryStatus,
      paymentStatus: null == paymentStatus
          ? _value.paymentStatus
          : paymentStatus // ignore: cast_nullable_to_non_nullable
              as PaymentStatus,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as FullName,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as EmailAddress,
      phone: null == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as Phone,
      address: null == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as Address,
      orderImageUrl: null == orderImageUrl
          ? _value.orderImageUrl
          : orderImageUrl // ignore: cast_nullable_to_non_nullable
              as ImageUrl,
      orderItems: null == orderItems
          ? _value.orderItems
          : orderItems // ignore: cast_nullable_to_non_nullable
              as ListMin1<CartItem>,
      deliveryFee: null == deliveryFee
          ? _value.deliveryFee
          : deliveryFee // ignore: cast_nullable_to_non_nullable
              as Price,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_OrderCopyWith<$Res> implements $OrderCopyWith<$Res> {
  factory _$$_OrderCopyWith(_$_Order value, $Res Function(_$_Order) then) =
      __$$_OrderCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {UniqueId id,
      DateTime orderDate,
      DateTime deliveryDate,
      DeliveryStatus deliveryStatus,
      PaymentStatus paymentStatus,
      FullName name,
      EmailAddress email,
      Phone phone,
      Address address,
      ImageUrl orderImageUrl,
      ListMin1<CartItem> orderItems,
      Price deliveryFee});
}

/// @nodoc
class __$$_OrderCopyWithImpl<$Res> extends _$OrderCopyWithImpl<$Res, _$_Order>
    implements _$$_OrderCopyWith<$Res> {
  __$$_OrderCopyWithImpl(_$_Order _value, $Res Function(_$_Order) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? orderDate = null,
    Object? deliveryDate = null,
    Object? deliveryStatus = null,
    Object? paymentStatus = null,
    Object? name = null,
    Object? email = null,
    Object? phone = null,
    Object? address = null,
    Object? orderImageUrl = null,
    Object? orderItems = null,
    Object? deliveryFee = null,
  }) {
    return _then(_$_Order(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as UniqueId,
      orderDate: null == orderDate
          ? _value.orderDate
          : orderDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      deliveryDate: null == deliveryDate
          ? _value.deliveryDate
          : deliveryDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      deliveryStatus: null == deliveryStatus
          ? _value.deliveryStatus
          : deliveryStatus // ignore: cast_nullable_to_non_nullable
              as DeliveryStatus,
      paymentStatus: null == paymentStatus
          ? _value.paymentStatus
          : paymentStatus // ignore: cast_nullable_to_non_nullable
              as PaymentStatus,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as FullName,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as EmailAddress,
      phone: null == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as Phone,
      address: null == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as Address,
      orderImageUrl: null == orderImageUrl
          ? _value.orderImageUrl
          : orderImageUrl // ignore: cast_nullable_to_non_nullable
              as ImageUrl,
      orderItems: null == orderItems
          ? _value.orderItems
          : orderItems // ignore: cast_nullable_to_non_nullable
              as ListMin1<CartItem>,
      deliveryFee: null == deliveryFee
          ? _value.deliveryFee
          : deliveryFee // ignore: cast_nullable_to_non_nullable
              as Price,
    ));
  }
}

/// @nodoc

class _$_Order extends _Order {
  const _$_Order(
      {required this.id,
      required this.orderDate,
      required this.deliveryDate,
      required this.deliveryStatus,
      required this.paymentStatus,
      required this.name,
      required this.email,
      required this.phone,
      required this.address,
      required this.orderImageUrl,
      required this.orderItems,
      required this.deliveryFee})
      : super._();

  @override
  final UniqueId id;
  @override
  final DateTime orderDate;
  @override
  final DateTime deliveryDate;
  @override
  final DeliveryStatus deliveryStatus;
  @override
  final PaymentStatus paymentStatus;
  @override
  final FullName name;
  @override
  final EmailAddress email;
  @override
  final Phone phone;
  @override
  final Address address;
  @override
  final ImageUrl orderImageUrl;
  @override
  final ListMin1<CartItem> orderItems;
  @override
  final Price deliveryFee;

  @override
  String toString() {
    return 'Order(id: $id, orderDate: $orderDate, deliveryDate: $deliveryDate, deliveryStatus: $deliveryStatus, paymentStatus: $paymentStatus, name: $name, email: $email, phone: $phone, address: $address, orderImageUrl: $orderImageUrl, orderItems: $orderItems, deliveryFee: $deliveryFee)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Order &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.orderDate, orderDate) ||
                other.orderDate == orderDate) &&
            (identical(other.deliveryDate, deliveryDate) ||
                other.deliveryDate == deliveryDate) &&
            (identical(other.deliveryStatus, deliveryStatus) ||
                other.deliveryStatus == deliveryStatus) &&
            (identical(other.paymentStatus, paymentStatus) ||
                other.paymentStatus == paymentStatus) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.phone, phone) || other.phone == phone) &&
            (identical(other.address, address) || other.address == address) &&
            (identical(other.orderImageUrl, orderImageUrl) ||
                other.orderImageUrl == orderImageUrl) &&
            (identical(other.orderItems, orderItems) ||
                other.orderItems == orderItems) &&
            (identical(other.deliveryFee, deliveryFee) ||
                other.deliveryFee == deliveryFee));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      orderDate,
      deliveryDate,
      deliveryStatus,
      paymentStatus,
      name,
      email,
      phone,
      address,
      orderImageUrl,
      orderItems,
      deliveryFee);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_OrderCopyWith<_$_Order> get copyWith =>
      __$$_OrderCopyWithImpl<_$_Order>(this, _$identity);
}

abstract class _Order extends Order {
  const factory _Order(
      {required final UniqueId id,
      required final DateTime orderDate,
      required final DateTime deliveryDate,
      required final DeliveryStatus deliveryStatus,
      required final PaymentStatus paymentStatus,
      required final FullName name,
      required final EmailAddress email,
      required final Phone phone,
      required final Address address,
      required final ImageUrl orderImageUrl,
      required final ListMin1<CartItem> orderItems,
      required final Price deliveryFee}) = _$_Order;
  const _Order._() : super._();

  @override
  UniqueId get id;
  @override
  DateTime get orderDate;
  @override
  DateTime get deliveryDate;
  @override
  DeliveryStatus get deliveryStatus;
  @override
  PaymentStatus get paymentStatus;
  @override
  FullName get name;
  @override
  EmailAddress get email;
  @override
  Phone get phone;
  @override
  Address get address;
  @override
  ImageUrl get orderImageUrl;
  @override
  ListMin1<CartItem> get orderItems;
  @override
  Price get deliveryFee;
  @override
  @JsonKey(ignore: true)
  _$$_OrderCopyWith<_$_Order> get copyWith =>
      throw _privateConstructorUsedError;
}
