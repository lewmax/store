// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'product_actor_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ProductActorEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String prodId, int leftNumber) quantityUpdated,
    required TResult Function(Product product) deleted,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String prodId, int leftNumber)? quantityUpdated,
    TResult? Function(Product product)? deleted,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String prodId, int leftNumber)? quantityUpdated,
    TResult Function(Product product)? deleted,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_QuantityUpdated value) quantityUpdated,
    required TResult Function(_Deleted value) deleted,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_QuantityUpdated value)? quantityUpdated,
    TResult? Function(_Deleted value)? deleted,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_QuantityUpdated value)? quantityUpdated,
    TResult Function(_Deleted value)? deleted,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductActorEventCopyWith<$Res> {
  factory $ProductActorEventCopyWith(
          ProductActorEvent value, $Res Function(ProductActorEvent) then) =
      _$ProductActorEventCopyWithImpl<$Res, ProductActorEvent>;
}

/// @nodoc
class _$ProductActorEventCopyWithImpl<$Res, $Val extends ProductActorEvent>
    implements $ProductActorEventCopyWith<$Res> {
  _$ProductActorEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_QuantityUpdatedCopyWith<$Res> {
  factory _$$_QuantityUpdatedCopyWith(
          _$_QuantityUpdated value, $Res Function(_$_QuantityUpdated) then) =
      __$$_QuantityUpdatedCopyWithImpl<$Res>;
  @useResult
  $Res call({String prodId, int leftNumber});
}

/// @nodoc
class __$$_QuantityUpdatedCopyWithImpl<$Res>
    extends _$ProductActorEventCopyWithImpl<$Res, _$_QuantityUpdated>
    implements _$$_QuantityUpdatedCopyWith<$Res> {
  __$$_QuantityUpdatedCopyWithImpl(
      _$_QuantityUpdated _value, $Res Function(_$_QuantityUpdated) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? prodId = null,
    Object? leftNumber = null,
  }) {
    return _then(_$_QuantityUpdated(
      null == prodId
          ? _value.prodId
          : prodId // ignore: cast_nullable_to_non_nullable
              as String,
      null == leftNumber
          ? _value.leftNumber
          : leftNumber // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_QuantityUpdated implements _QuantityUpdated {
  const _$_QuantityUpdated(this.prodId, this.leftNumber);

  @override
  final String prodId;
  @override
  final int leftNumber;

  @override
  String toString() {
    return 'ProductActorEvent.quantityUpdated(prodId: $prodId, leftNumber: $leftNumber)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_QuantityUpdated &&
            (identical(other.prodId, prodId) || other.prodId == prodId) &&
            (identical(other.leftNumber, leftNumber) ||
                other.leftNumber == leftNumber));
  }

  @override
  int get hashCode => Object.hash(runtimeType, prodId, leftNumber);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_QuantityUpdatedCopyWith<_$_QuantityUpdated> get copyWith =>
      __$$_QuantityUpdatedCopyWithImpl<_$_QuantityUpdated>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String prodId, int leftNumber) quantityUpdated,
    required TResult Function(Product product) deleted,
  }) {
    return quantityUpdated(prodId, leftNumber);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String prodId, int leftNumber)? quantityUpdated,
    TResult? Function(Product product)? deleted,
  }) {
    return quantityUpdated?.call(prodId, leftNumber);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String prodId, int leftNumber)? quantityUpdated,
    TResult Function(Product product)? deleted,
    required TResult orElse(),
  }) {
    if (quantityUpdated != null) {
      return quantityUpdated(prodId, leftNumber);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_QuantityUpdated value) quantityUpdated,
    required TResult Function(_Deleted value) deleted,
  }) {
    return quantityUpdated(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_QuantityUpdated value)? quantityUpdated,
    TResult? Function(_Deleted value)? deleted,
  }) {
    return quantityUpdated?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_QuantityUpdated value)? quantityUpdated,
    TResult Function(_Deleted value)? deleted,
    required TResult orElse(),
  }) {
    if (quantityUpdated != null) {
      return quantityUpdated(this);
    }
    return orElse();
  }
}

abstract class _QuantityUpdated implements ProductActorEvent {
  const factory _QuantityUpdated(final String prodId, final int leftNumber) =
      _$_QuantityUpdated;

  String get prodId;
  int get leftNumber;
  @JsonKey(ignore: true)
  _$$_QuantityUpdatedCopyWith<_$_QuantityUpdated> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_DeletedCopyWith<$Res> {
  factory _$$_DeletedCopyWith(
          _$_Deleted value, $Res Function(_$_Deleted) then) =
      __$$_DeletedCopyWithImpl<$Res>;
  @useResult
  $Res call({Product product});

  $ProductCopyWith<$Res> get product;
}

/// @nodoc
class __$$_DeletedCopyWithImpl<$Res>
    extends _$ProductActorEventCopyWithImpl<$Res, _$_Deleted>
    implements _$$_DeletedCopyWith<$Res> {
  __$$_DeletedCopyWithImpl(_$_Deleted _value, $Res Function(_$_Deleted) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? product = null,
  }) {
    return _then(_$_Deleted(
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

class _$_Deleted implements _Deleted {
  const _$_Deleted(this.product);

  @override
  final Product product;

  @override
  String toString() {
    return 'ProductActorEvent.deleted(product: $product)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Deleted &&
            (identical(other.product, product) || other.product == product));
  }

  @override
  int get hashCode => Object.hash(runtimeType, product);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_DeletedCopyWith<_$_Deleted> get copyWith =>
      __$$_DeletedCopyWithImpl<_$_Deleted>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String prodId, int leftNumber) quantityUpdated,
    required TResult Function(Product product) deleted,
  }) {
    return deleted(product);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String prodId, int leftNumber)? quantityUpdated,
    TResult? Function(Product product)? deleted,
  }) {
    return deleted?.call(product);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String prodId, int leftNumber)? quantityUpdated,
    TResult Function(Product product)? deleted,
    required TResult orElse(),
  }) {
    if (deleted != null) {
      return deleted(product);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_QuantityUpdated value) quantityUpdated,
    required TResult Function(_Deleted value) deleted,
  }) {
    return deleted(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_QuantityUpdated value)? quantityUpdated,
    TResult? Function(_Deleted value)? deleted,
  }) {
    return deleted?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_QuantityUpdated value)? quantityUpdated,
    TResult Function(_Deleted value)? deleted,
    required TResult orElse(),
  }) {
    if (deleted != null) {
      return deleted(this);
    }
    return orElse();
  }
}

abstract class _Deleted implements ProductActorEvent {
  const factory _Deleted(final Product product) = _$_Deleted;

  Product get product;
  @JsonKey(ignore: true)
  _$$_DeletedCopyWith<_$_Deleted> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$ProductActorState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() actionInProgress,
    required TResult Function(ProductFailure productFailure) actionFailure,
    required TResult Function() actionSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? actionInProgress,
    TResult? Function(ProductFailure productFailure)? actionFailure,
    TResult? Function()? actionSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? actionInProgress,
    TResult Function(ProductFailure productFailure)? actionFailure,
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
abstract class $ProductActorStateCopyWith<$Res> {
  factory $ProductActorStateCopyWith(
          ProductActorState value, $Res Function(ProductActorState) then) =
      _$ProductActorStateCopyWithImpl<$Res, ProductActorState>;
}

/// @nodoc
class _$ProductActorStateCopyWithImpl<$Res, $Val extends ProductActorState>
    implements $ProductActorStateCopyWith<$Res> {
  _$ProductActorStateCopyWithImpl(this._value, this._then);

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
    extends _$ProductActorStateCopyWithImpl<$Res, _$_Initial>
    implements _$$_InitialCopyWith<$Res> {
  __$$_InitialCopyWithImpl(_$_Initial _value, $Res Function(_$_Initial) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_Initial implements _Initial {
  const _$_Initial();

  @override
  String toString() {
    return 'ProductActorState.initial()';
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
    required TResult Function(ProductFailure productFailure) actionFailure,
    required TResult Function() actionSuccess,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? actionInProgress,
    TResult? Function(ProductFailure productFailure)? actionFailure,
    TResult? Function()? actionSuccess,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? actionInProgress,
    TResult Function(ProductFailure productFailure)? actionFailure,
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

abstract class _Initial implements ProductActorState {
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
    extends _$ProductActorStateCopyWithImpl<$Res, _$ActionInProgress>
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
    return 'ProductActorState.actionInProgress()';
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
    required TResult Function(ProductFailure productFailure) actionFailure,
    required TResult Function() actionSuccess,
  }) {
    return actionInProgress();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? actionInProgress,
    TResult? Function(ProductFailure productFailure)? actionFailure,
    TResult? Function()? actionSuccess,
  }) {
    return actionInProgress?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? actionInProgress,
    TResult Function(ProductFailure productFailure)? actionFailure,
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

abstract class ActionInProgress implements ProductActorState {
  const factory ActionInProgress() = _$ActionInProgress;
}

/// @nodoc
abstract class _$$_ActionFailureCopyWith<$Res> {
  factory _$$_ActionFailureCopyWith(
          _$_ActionFailure value, $Res Function(_$_ActionFailure) then) =
      __$$_ActionFailureCopyWithImpl<$Res>;
  @useResult
  $Res call({ProductFailure productFailure});

  $ProductFailureCopyWith<$Res> get productFailure;
}

/// @nodoc
class __$$_ActionFailureCopyWithImpl<$Res>
    extends _$ProductActorStateCopyWithImpl<$Res, _$_ActionFailure>
    implements _$$_ActionFailureCopyWith<$Res> {
  __$$_ActionFailureCopyWithImpl(
      _$_ActionFailure _value, $Res Function(_$_ActionFailure) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? productFailure = null,
  }) {
    return _then(_$_ActionFailure(
      null == productFailure
          ? _value.productFailure
          : productFailure // ignore: cast_nullable_to_non_nullable
              as ProductFailure,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $ProductFailureCopyWith<$Res> get productFailure {
    return $ProductFailureCopyWith<$Res>(_value.productFailure, (value) {
      return _then(_value.copyWith(productFailure: value));
    });
  }
}

/// @nodoc

class _$_ActionFailure implements _ActionFailure {
  const _$_ActionFailure(this.productFailure);

  @override
  final ProductFailure productFailure;

  @override
  String toString() {
    return 'ProductActorState.actionFailure(productFailure: $productFailure)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ActionFailure &&
            (identical(other.productFailure, productFailure) ||
                other.productFailure == productFailure));
  }

  @override
  int get hashCode => Object.hash(runtimeType, productFailure);

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
    required TResult Function(ProductFailure productFailure) actionFailure,
    required TResult Function() actionSuccess,
  }) {
    return actionFailure(productFailure);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? actionInProgress,
    TResult? Function(ProductFailure productFailure)? actionFailure,
    TResult? Function()? actionSuccess,
  }) {
    return actionFailure?.call(productFailure);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? actionInProgress,
    TResult Function(ProductFailure productFailure)? actionFailure,
    TResult Function()? actionSuccess,
    required TResult orElse(),
  }) {
    if (actionFailure != null) {
      return actionFailure(productFailure);
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

abstract class _ActionFailure implements ProductActorState {
  const factory _ActionFailure(final ProductFailure productFailure) =
      _$_ActionFailure;

  ProductFailure get productFailure;
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
    extends _$ProductActorStateCopyWithImpl<$Res, _$_ActionSuccess>
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
    return 'ProductActorState.actionSuccess()';
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
    required TResult Function(ProductFailure productFailure) actionFailure,
    required TResult Function() actionSuccess,
  }) {
    return actionSuccess();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? actionInProgress,
    TResult? Function(ProductFailure productFailure)? actionFailure,
    TResult? Function()? actionSuccess,
  }) {
    return actionSuccess?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? actionInProgress,
    TResult Function(ProductFailure productFailure)? actionFailure,
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

abstract class _ActionSuccess implements ProductActorState {
  const factory _ActionSuccess() = _$_ActionSuccess;
}
