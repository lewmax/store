// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'cart_actor_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$CartActorEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Product product) addNewToCart,
    required TResult Function(CartItem cartItem) increase,
    required TResult Function(CartItem cartItem) removeFromCart,
    required TResult Function() removeAll,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Product product)? addNewToCart,
    TResult? Function(CartItem cartItem)? increase,
    TResult? Function(CartItem cartItem)? removeFromCart,
    TResult? Function()? removeAll,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Product product)? addNewToCart,
    TResult Function(CartItem cartItem)? increase,
    TResult Function(CartItem cartItem)? removeFromCart,
    TResult Function()? removeAll,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AddNewToCart value) addNewToCart,
    required TResult Function(_Increase value) increase,
    required TResult Function(_RemoveFromCart value) removeFromCart,
    required TResult Function(_RemoveAll value) removeAll,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AddNewToCart value)? addNewToCart,
    TResult? Function(_Increase value)? increase,
    TResult? Function(_RemoveFromCart value)? removeFromCart,
    TResult? Function(_RemoveAll value)? removeAll,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AddNewToCart value)? addNewToCart,
    TResult Function(_Increase value)? increase,
    TResult Function(_RemoveFromCart value)? removeFromCart,
    TResult Function(_RemoveAll value)? removeAll,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CartActorEventCopyWith<$Res> {
  factory $CartActorEventCopyWith(
          CartActorEvent value, $Res Function(CartActorEvent) then) =
      _$CartActorEventCopyWithImpl<$Res, CartActorEvent>;
}

/// @nodoc
class _$CartActorEventCopyWithImpl<$Res, $Val extends CartActorEvent>
    implements $CartActorEventCopyWith<$Res> {
  _$CartActorEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_AddNewToCartCopyWith<$Res> {
  factory _$$_AddNewToCartCopyWith(
          _$_AddNewToCart value, $Res Function(_$_AddNewToCart) then) =
      __$$_AddNewToCartCopyWithImpl<$Res>;
  @useResult
  $Res call({Product product});

  $ProductCopyWith<$Res> get product;
}

/// @nodoc
class __$$_AddNewToCartCopyWithImpl<$Res>
    extends _$CartActorEventCopyWithImpl<$Res, _$_AddNewToCart>
    implements _$$_AddNewToCartCopyWith<$Res> {
  __$$_AddNewToCartCopyWithImpl(
      _$_AddNewToCart _value, $Res Function(_$_AddNewToCart) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? product = null,
  }) {
    return _then(_$_AddNewToCart(
      null == product
          ? _value.product
          : product // ignore: cast_nullable_to_non_nullable
              as Product,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $ProductCopyWith<$Res> get product {
    return $ProductCopyWith<$Res>(_value.product, (value) {
      return _then(_value.copyWith(product: value));
    });
  }
}

/// @nodoc

class _$_AddNewToCart implements _AddNewToCart {
  const _$_AddNewToCart(this.product);

  @override
  final Product product;

  @override
  String toString() {
    return 'CartActorEvent.addNewToCart(product: $product)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AddNewToCart &&
            (identical(other.product, product) || other.product == product));
  }

  @override
  int get hashCode => Object.hash(runtimeType, product);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AddNewToCartCopyWith<_$_AddNewToCart> get copyWith =>
      __$$_AddNewToCartCopyWithImpl<_$_AddNewToCart>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Product product) addNewToCart,
    required TResult Function(CartItem cartItem) increase,
    required TResult Function(CartItem cartItem) removeFromCart,
    required TResult Function() removeAll,
  }) {
    return addNewToCart(product);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Product product)? addNewToCart,
    TResult? Function(CartItem cartItem)? increase,
    TResult? Function(CartItem cartItem)? removeFromCart,
    TResult? Function()? removeAll,
  }) {
    return addNewToCart?.call(product);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Product product)? addNewToCart,
    TResult Function(CartItem cartItem)? increase,
    TResult Function(CartItem cartItem)? removeFromCart,
    TResult Function()? removeAll,
    required TResult orElse(),
  }) {
    if (addNewToCart != null) {
      return addNewToCart(product);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AddNewToCart value) addNewToCart,
    required TResult Function(_Increase value) increase,
    required TResult Function(_RemoveFromCart value) removeFromCart,
    required TResult Function(_RemoveAll value) removeAll,
  }) {
    return addNewToCart(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AddNewToCart value)? addNewToCart,
    TResult? Function(_Increase value)? increase,
    TResult? Function(_RemoveFromCart value)? removeFromCart,
    TResult? Function(_RemoveAll value)? removeAll,
  }) {
    return addNewToCart?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AddNewToCart value)? addNewToCart,
    TResult Function(_Increase value)? increase,
    TResult Function(_RemoveFromCart value)? removeFromCart,
    TResult Function(_RemoveAll value)? removeAll,
    required TResult orElse(),
  }) {
    if (addNewToCart != null) {
      return addNewToCart(this);
    }
    return orElse();
  }
}

abstract class _AddNewToCart implements CartActorEvent {
  const factory _AddNewToCart(final Product product) = _$_AddNewToCart;

  Product get product;
  @JsonKey(ignore: true)
  _$$_AddNewToCartCopyWith<_$_AddNewToCart> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_IncreaseCopyWith<$Res> {
  factory _$$_IncreaseCopyWith(
          _$_Increase value, $Res Function(_$_Increase) then) =
      __$$_IncreaseCopyWithImpl<$Res>;
  @useResult
  $Res call({CartItem cartItem});

  $CartItemCopyWith<$Res> get cartItem;
}

/// @nodoc
class __$$_IncreaseCopyWithImpl<$Res>
    extends _$CartActorEventCopyWithImpl<$Res, _$_Increase>
    implements _$$_IncreaseCopyWith<$Res> {
  __$$_IncreaseCopyWithImpl(
      _$_Increase _value, $Res Function(_$_Increase) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? cartItem = null,
  }) {
    return _then(_$_Increase(
      null == cartItem
          ? _value.cartItem
          : cartItem // ignore: cast_nullable_to_non_nullable
              as CartItem,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $CartItemCopyWith<$Res> get cartItem {
    return $CartItemCopyWith<$Res>(_value.cartItem, (value) {
      return _then(_value.copyWith(cartItem: value));
    });
  }
}

/// @nodoc

class _$_Increase implements _Increase {
  const _$_Increase(this.cartItem);

  @override
  final CartItem cartItem;

  @override
  String toString() {
    return 'CartActorEvent.increase(cartItem: $cartItem)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Increase &&
            (identical(other.cartItem, cartItem) ||
                other.cartItem == cartItem));
  }

  @override
  int get hashCode => Object.hash(runtimeType, cartItem);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_IncreaseCopyWith<_$_Increase> get copyWith =>
      __$$_IncreaseCopyWithImpl<_$_Increase>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Product product) addNewToCart,
    required TResult Function(CartItem cartItem) increase,
    required TResult Function(CartItem cartItem) removeFromCart,
    required TResult Function() removeAll,
  }) {
    return increase(cartItem);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Product product)? addNewToCart,
    TResult? Function(CartItem cartItem)? increase,
    TResult? Function(CartItem cartItem)? removeFromCart,
    TResult? Function()? removeAll,
  }) {
    return increase?.call(cartItem);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Product product)? addNewToCart,
    TResult Function(CartItem cartItem)? increase,
    TResult Function(CartItem cartItem)? removeFromCart,
    TResult Function()? removeAll,
    required TResult orElse(),
  }) {
    if (increase != null) {
      return increase(cartItem);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AddNewToCart value) addNewToCart,
    required TResult Function(_Increase value) increase,
    required TResult Function(_RemoveFromCart value) removeFromCart,
    required TResult Function(_RemoveAll value) removeAll,
  }) {
    return increase(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AddNewToCart value)? addNewToCart,
    TResult? Function(_Increase value)? increase,
    TResult? Function(_RemoveFromCart value)? removeFromCart,
    TResult? Function(_RemoveAll value)? removeAll,
  }) {
    return increase?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AddNewToCart value)? addNewToCart,
    TResult Function(_Increase value)? increase,
    TResult Function(_RemoveFromCart value)? removeFromCart,
    TResult Function(_RemoveAll value)? removeAll,
    required TResult orElse(),
  }) {
    if (increase != null) {
      return increase(this);
    }
    return orElse();
  }
}

abstract class _Increase implements CartActorEvent {
  const factory _Increase(final CartItem cartItem) = _$_Increase;

  CartItem get cartItem;
  @JsonKey(ignore: true)
  _$$_IncreaseCopyWith<_$_Increase> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_RemoveFromCartCopyWith<$Res> {
  factory _$$_RemoveFromCartCopyWith(
          _$_RemoveFromCart value, $Res Function(_$_RemoveFromCart) then) =
      __$$_RemoveFromCartCopyWithImpl<$Res>;
  @useResult
  $Res call({CartItem cartItem});

  $CartItemCopyWith<$Res> get cartItem;
}

/// @nodoc
class __$$_RemoveFromCartCopyWithImpl<$Res>
    extends _$CartActorEventCopyWithImpl<$Res, _$_RemoveFromCart>
    implements _$$_RemoveFromCartCopyWith<$Res> {
  __$$_RemoveFromCartCopyWithImpl(
      _$_RemoveFromCart _value, $Res Function(_$_RemoveFromCart) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? cartItem = null,
  }) {
    return _then(_$_RemoveFromCart(
      null == cartItem
          ? _value.cartItem
          : cartItem // ignore: cast_nullable_to_non_nullable
              as CartItem,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $CartItemCopyWith<$Res> get cartItem {
    return $CartItemCopyWith<$Res>(_value.cartItem, (value) {
      return _then(_value.copyWith(cartItem: value));
    });
  }
}

/// @nodoc

class _$_RemoveFromCart implements _RemoveFromCart {
  const _$_RemoveFromCart(this.cartItem);

  @override
  final CartItem cartItem;

  @override
  String toString() {
    return 'CartActorEvent.removeFromCart(cartItem: $cartItem)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_RemoveFromCart &&
            (identical(other.cartItem, cartItem) ||
                other.cartItem == cartItem));
  }

  @override
  int get hashCode => Object.hash(runtimeType, cartItem);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_RemoveFromCartCopyWith<_$_RemoveFromCart> get copyWith =>
      __$$_RemoveFromCartCopyWithImpl<_$_RemoveFromCart>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Product product) addNewToCart,
    required TResult Function(CartItem cartItem) increase,
    required TResult Function(CartItem cartItem) removeFromCart,
    required TResult Function() removeAll,
  }) {
    return removeFromCart(cartItem);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Product product)? addNewToCart,
    TResult? Function(CartItem cartItem)? increase,
    TResult? Function(CartItem cartItem)? removeFromCart,
    TResult? Function()? removeAll,
  }) {
    return removeFromCart?.call(cartItem);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Product product)? addNewToCart,
    TResult Function(CartItem cartItem)? increase,
    TResult Function(CartItem cartItem)? removeFromCart,
    TResult Function()? removeAll,
    required TResult orElse(),
  }) {
    if (removeFromCart != null) {
      return removeFromCart(cartItem);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AddNewToCart value) addNewToCart,
    required TResult Function(_Increase value) increase,
    required TResult Function(_RemoveFromCart value) removeFromCart,
    required TResult Function(_RemoveAll value) removeAll,
  }) {
    return removeFromCart(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AddNewToCart value)? addNewToCart,
    TResult? Function(_Increase value)? increase,
    TResult? Function(_RemoveFromCart value)? removeFromCart,
    TResult? Function(_RemoveAll value)? removeAll,
  }) {
    return removeFromCart?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AddNewToCart value)? addNewToCart,
    TResult Function(_Increase value)? increase,
    TResult Function(_RemoveFromCart value)? removeFromCart,
    TResult Function(_RemoveAll value)? removeAll,
    required TResult orElse(),
  }) {
    if (removeFromCart != null) {
      return removeFromCart(this);
    }
    return orElse();
  }
}

abstract class _RemoveFromCart implements CartActorEvent {
  const factory _RemoveFromCart(final CartItem cartItem) = _$_RemoveFromCart;

  CartItem get cartItem;
  @JsonKey(ignore: true)
  _$$_RemoveFromCartCopyWith<_$_RemoveFromCart> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_RemoveAllCopyWith<$Res> {
  factory _$$_RemoveAllCopyWith(
          _$_RemoveAll value, $Res Function(_$_RemoveAll) then) =
      __$$_RemoveAllCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_RemoveAllCopyWithImpl<$Res>
    extends _$CartActorEventCopyWithImpl<$Res, _$_RemoveAll>
    implements _$$_RemoveAllCopyWith<$Res> {
  __$$_RemoveAllCopyWithImpl(
      _$_RemoveAll _value, $Res Function(_$_RemoveAll) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_RemoveAll implements _RemoveAll {
  const _$_RemoveAll();

  @override
  String toString() {
    return 'CartActorEvent.removeAll()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_RemoveAll);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Product product) addNewToCart,
    required TResult Function(CartItem cartItem) increase,
    required TResult Function(CartItem cartItem) removeFromCart,
    required TResult Function() removeAll,
  }) {
    return removeAll();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Product product)? addNewToCart,
    TResult? Function(CartItem cartItem)? increase,
    TResult? Function(CartItem cartItem)? removeFromCart,
    TResult? Function()? removeAll,
  }) {
    return removeAll?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Product product)? addNewToCart,
    TResult Function(CartItem cartItem)? increase,
    TResult Function(CartItem cartItem)? removeFromCart,
    TResult Function()? removeAll,
    required TResult orElse(),
  }) {
    if (removeAll != null) {
      return removeAll();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AddNewToCart value) addNewToCart,
    required TResult Function(_Increase value) increase,
    required TResult Function(_RemoveFromCart value) removeFromCart,
    required TResult Function(_RemoveAll value) removeAll,
  }) {
    return removeAll(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AddNewToCart value)? addNewToCart,
    TResult? Function(_Increase value)? increase,
    TResult? Function(_RemoveFromCart value)? removeFromCart,
    TResult? Function(_RemoveAll value)? removeAll,
  }) {
    return removeAll?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AddNewToCart value)? addNewToCart,
    TResult Function(_Increase value)? increase,
    TResult Function(_RemoveFromCart value)? removeFromCart,
    TResult Function(_RemoveAll value)? removeAll,
    required TResult orElse(),
  }) {
    if (removeAll != null) {
      return removeAll(this);
    }
    return orElse();
  }
}

abstract class _RemoveAll implements CartActorEvent {
  const factory _RemoveAll() = _$_RemoveAll;
}

/// @nodoc
mixin _$CartActorState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() actionInProgress,
    required TResult Function(CartFailure cartFailure) actionFailure,
    required TResult Function() actionSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? actionInProgress,
    TResult? Function(CartFailure cartFailure)? actionFailure,
    TResult? Function()? actionSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? actionInProgress,
    TResult Function(CartFailure cartFailure)? actionFailure,
    TResult Function()? actionSuccess,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_ActionInProgress value) actionInProgress,
    required TResult Function(_ActionFailure value) actionFailure,
    required TResult Function(_ActionSuccess value) actionSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_ActionInProgress value)? actionInProgress,
    TResult? Function(_ActionFailure value)? actionFailure,
    TResult? Function(_ActionSuccess value)? actionSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_ActionInProgress value)? actionInProgress,
    TResult Function(_ActionFailure value)? actionFailure,
    TResult Function(_ActionSuccess value)? actionSuccess,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CartActorStateCopyWith<$Res> {
  factory $CartActorStateCopyWith(
          CartActorState value, $Res Function(CartActorState) then) =
      _$CartActorStateCopyWithImpl<$Res, CartActorState>;
}

/// @nodoc
class _$CartActorStateCopyWithImpl<$Res, $Val extends CartActorState>
    implements $CartActorStateCopyWith<$Res> {
  _$CartActorStateCopyWithImpl(this._value, this._then);

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
    extends _$CartActorStateCopyWithImpl<$Res, _$_Initial>
    implements _$$_InitialCopyWith<$Res> {
  __$$_InitialCopyWithImpl(_$_Initial _value, $Res Function(_$_Initial) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_Initial implements _Initial {
  const _$_Initial();

  @override
  String toString() {
    return 'CartActorState.initial()';
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
    required TResult Function(CartFailure cartFailure) actionFailure,
    required TResult Function() actionSuccess,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? actionInProgress,
    TResult? Function(CartFailure cartFailure)? actionFailure,
    TResult? Function()? actionSuccess,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? actionInProgress,
    TResult Function(CartFailure cartFailure)? actionFailure,
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
    required TResult Function(_ActionInProgress value) actionInProgress,
    required TResult Function(_ActionFailure value) actionFailure,
    required TResult Function(_ActionSuccess value) actionSuccess,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_ActionInProgress value)? actionInProgress,
    TResult? Function(_ActionFailure value)? actionFailure,
    TResult? Function(_ActionSuccess value)? actionSuccess,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_ActionInProgress value)? actionInProgress,
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

abstract class _Initial implements CartActorState {
  const factory _Initial() = _$_Initial;
}

/// @nodoc
abstract class _$$_ActionInProgressCopyWith<$Res> {
  factory _$$_ActionInProgressCopyWith(
          _$_ActionInProgress value, $Res Function(_$_ActionInProgress) then) =
      __$$_ActionInProgressCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_ActionInProgressCopyWithImpl<$Res>
    extends _$CartActorStateCopyWithImpl<$Res, _$_ActionInProgress>
    implements _$$_ActionInProgressCopyWith<$Res> {
  __$$_ActionInProgressCopyWithImpl(
      _$_ActionInProgress _value, $Res Function(_$_ActionInProgress) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_ActionInProgress implements _ActionInProgress {
  const _$_ActionInProgress();

  @override
  String toString() {
    return 'CartActorState.actionInProgress()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_ActionInProgress);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() actionInProgress,
    required TResult Function(CartFailure cartFailure) actionFailure,
    required TResult Function() actionSuccess,
  }) {
    return actionInProgress();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? actionInProgress,
    TResult? Function(CartFailure cartFailure)? actionFailure,
    TResult? Function()? actionSuccess,
  }) {
    return actionInProgress?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? actionInProgress,
    TResult Function(CartFailure cartFailure)? actionFailure,
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
    required TResult Function(_ActionInProgress value) actionInProgress,
    required TResult Function(_ActionFailure value) actionFailure,
    required TResult Function(_ActionSuccess value) actionSuccess,
  }) {
    return actionInProgress(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_ActionInProgress value)? actionInProgress,
    TResult? Function(_ActionFailure value)? actionFailure,
    TResult? Function(_ActionSuccess value)? actionSuccess,
  }) {
    return actionInProgress?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_ActionInProgress value)? actionInProgress,
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

abstract class _ActionInProgress implements CartActorState {
  const factory _ActionInProgress() = _$_ActionInProgress;
}

/// @nodoc
abstract class _$$_ActionFailureCopyWith<$Res> {
  factory _$$_ActionFailureCopyWith(
          _$_ActionFailure value, $Res Function(_$_ActionFailure) then) =
      __$$_ActionFailureCopyWithImpl<$Res>;
  @useResult
  $Res call({CartFailure cartFailure});

  $CartFailureCopyWith<$Res> get cartFailure;
}

/// @nodoc
class __$$_ActionFailureCopyWithImpl<$Res>
    extends _$CartActorStateCopyWithImpl<$Res, _$_ActionFailure>
    implements _$$_ActionFailureCopyWith<$Res> {
  __$$_ActionFailureCopyWithImpl(
      _$_ActionFailure _value, $Res Function(_$_ActionFailure) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? cartFailure = null,
  }) {
    return _then(_$_ActionFailure(
      null == cartFailure
          ? _value.cartFailure
          : cartFailure // ignore: cast_nullable_to_non_nullable
              as CartFailure,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $CartFailureCopyWith<$Res> get cartFailure {
    return $CartFailureCopyWith<$Res>(_value.cartFailure, (value) {
      return _then(_value.copyWith(cartFailure: value));
    });
  }
}

/// @nodoc

class _$_ActionFailure implements _ActionFailure {
  const _$_ActionFailure(this.cartFailure);

  @override
  final CartFailure cartFailure;

  @override
  String toString() {
    return 'CartActorState.actionFailure(cartFailure: $cartFailure)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ActionFailure &&
            (identical(other.cartFailure, cartFailure) ||
                other.cartFailure == cartFailure));
  }

  @override
  int get hashCode => Object.hash(runtimeType, cartFailure);

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
    required TResult Function(CartFailure cartFailure) actionFailure,
    required TResult Function() actionSuccess,
  }) {
    return actionFailure(cartFailure);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? actionInProgress,
    TResult? Function(CartFailure cartFailure)? actionFailure,
    TResult? Function()? actionSuccess,
  }) {
    return actionFailure?.call(cartFailure);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? actionInProgress,
    TResult Function(CartFailure cartFailure)? actionFailure,
    TResult Function()? actionSuccess,
    required TResult orElse(),
  }) {
    if (actionFailure != null) {
      return actionFailure(cartFailure);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_ActionInProgress value) actionInProgress,
    required TResult Function(_ActionFailure value) actionFailure,
    required TResult Function(_ActionSuccess value) actionSuccess,
  }) {
    return actionFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_ActionInProgress value)? actionInProgress,
    TResult? Function(_ActionFailure value)? actionFailure,
    TResult? Function(_ActionSuccess value)? actionSuccess,
  }) {
    return actionFailure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_ActionInProgress value)? actionInProgress,
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

abstract class _ActionFailure implements CartActorState {
  const factory _ActionFailure(final CartFailure cartFailure) =
      _$_ActionFailure;

  CartFailure get cartFailure;
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
    extends _$CartActorStateCopyWithImpl<$Res, _$_ActionSuccess>
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
    return 'CartActorState.actionSuccess()';
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
    required TResult Function(CartFailure cartFailure) actionFailure,
    required TResult Function() actionSuccess,
  }) {
    return actionSuccess();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? actionInProgress,
    TResult? Function(CartFailure cartFailure)? actionFailure,
    TResult? Function()? actionSuccess,
  }) {
    return actionSuccess?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? actionInProgress,
    TResult Function(CartFailure cartFailure)? actionFailure,
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
    required TResult Function(_ActionInProgress value) actionInProgress,
    required TResult Function(_ActionFailure value) actionFailure,
    required TResult Function(_ActionSuccess value) actionSuccess,
  }) {
    return actionSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_ActionInProgress value)? actionInProgress,
    TResult? Function(_ActionFailure value)? actionFailure,
    TResult? Function(_ActionSuccess value)? actionSuccess,
  }) {
    return actionSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_ActionInProgress value)? actionInProgress,
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

abstract class _ActionSuccess implements CartActorState {
  const factory _ActionSuccess() = _$_ActionSuccess;
}
