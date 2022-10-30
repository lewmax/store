// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'product_search_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ProductSearchEvent {
  String get query => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String query) searchStarted,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String query)? searchStarted,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String query)? searchStarted,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SearchStarted value) searchStarted,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SearchStarted value)? searchStarted,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SearchStarted value)? searchStarted,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ProductSearchEventCopyWith<ProductSearchEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductSearchEventCopyWith<$Res> {
  factory $ProductSearchEventCopyWith(
          ProductSearchEvent value, $Res Function(ProductSearchEvent) then) =
      _$ProductSearchEventCopyWithImpl<$Res, ProductSearchEvent>;
  @useResult
  $Res call({String query});
}

/// @nodoc
class _$ProductSearchEventCopyWithImpl<$Res, $Val extends ProductSearchEvent>
    implements $ProductSearchEventCopyWith<$Res> {
  _$ProductSearchEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? query = null,
  }) {
    return _then(_value.copyWith(
      query: null == query
          ? _value.query
          : query // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_SearchStartedCopyWith<$Res>
    implements $ProductSearchEventCopyWith<$Res> {
  factory _$$_SearchStartedCopyWith(
          _$_SearchStarted value, $Res Function(_$_SearchStarted) then) =
      __$$_SearchStartedCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String query});
}

/// @nodoc
class __$$_SearchStartedCopyWithImpl<$Res>
    extends _$ProductSearchEventCopyWithImpl<$Res, _$_SearchStarted>
    implements _$$_SearchStartedCopyWith<$Res> {
  __$$_SearchStartedCopyWithImpl(
      _$_SearchStarted _value, $Res Function(_$_SearchStarted) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? query = null,
  }) {
    return _then(_$_SearchStarted(
      null == query
          ? _value.query
          : query // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_SearchStarted implements _SearchStarted {
  const _$_SearchStarted(this.query);

  @override
  final String query;

  @override
  String toString() {
    return 'ProductSearchEvent.searchStarted(query: $query)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SearchStarted &&
            (identical(other.query, query) || other.query == query));
  }

  @override
  int get hashCode => Object.hash(runtimeType, query);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SearchStartedCopyWith<_$_SearchStarted> get copyWith =>
      __$$_SearchStartedCopyWithImpl<_$_SearchStarted>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String query) searchStarted,
  }) {
    return searchStarted(query);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String query)? searchStarted,
  }) {
    return searchStarted?.call(query);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String query)? searchStarted,
    required TResult orElse(),
  }) {
    if (searchStarted != null) {
      return searchStarted(query);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SearchStarted value) searchStarted,
  }) {
    return searchStarted(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SearchStarted value)? searchStarted,
  }) {
    return searchStarted?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SearchStarted value)? searchStarted,
    required TResult orElse(),
  }) {
    if (searchStarted != null) {
      return searchStarted(this);
    }
    return orElse();
  }
}

abstract class _SearchStarted implements ProductSearchEvent {
  const factory _SearchStarted(final String query) = _$_SearchStarted;

  @override
  String get query;
  @override
  @JsonKey(ignore: true)
  _$$_SearchStartedCopyWith<_$_SearchStarted> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$ProductSearchState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() searchInProgress,
    required TResult Function(ProductFailure failure) searchFailure,
    required TResult Function() searchSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? searchInProgress,
    TResult? Function(ProductFailure failure)? searchFailure,
    TResult? Function()? searchSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? searchInProgress,
    TResult Function(ProductFailure failure)? searchFailure,
    TResult Function()? searchSuccess,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_SearchInProgress value) searchInProgress,
    required TResult Function(_SearchFailure value) searchFailure,
    required TResult Function(_ProductSearchState value) searchSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_SearchInProgress value)? searchInProgress,
    TResult? Function(_SearchFailure value)? searchFailure,
    TResult? Function(_ProductSearchState value)? searchSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_SearchInProgress value)? searchInProgress,
    TResult Function(_SearchFailure value)? searchFailure,
    TResult Function(_ProductSearchState value)? searchSuccess,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductSearchStateCopyWith<$Res> {
  factory $ProductSearchStateCopyWith(
          ProductSearchState value, $Res Function(ProductSearchState) then) =
      _$ProductSearchStateCopyWithImpl<$Res, ProductSearchState>;
}

/// @nodoc
class _$ProductSearchStateCopyWithImpl<$Res, $Val extends ProductSearchState>
    implements $ProductSearchStateCopyWith<$Res> {
  _$ProductSearchStateCopyWithImpl(this._value, this._then);

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
    extends _$ProductSearchStateCopyWithImpl<$Res, _$_Initial>
    implements _$$_InitialCopyWith<$Res> {
  __$$_InitialCopyWithImpl(_$_Initial _value, $Res Function(_$_Initial) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_Initial implements _Initial {
  const _$_Initial();

  @override
  String toString() {
    return 'ProductSearchState.initial()';
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
    required TResult Function() searchInProgress,
    required TResult Function(ProductFailure failure) searchFailure,
    required TResult Function() searchSuccess,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? searchInProgress,
    TResult? Function(ProductFailure failure)? searchFailure,
    TResult? Function()? searchSuccess,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? searchInProgress,
    TResult Function(ProductFailure failure)? searchFailure,
    TResult Function()? searchSuccess,
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
    required TResult Function(_SearchInProgress value) searchInProgress,
    required TResult Function(_SearchFailure value) searchFailure,
    required TResult Function(_ProductSearchState value) searchSuccess,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_SearchInProgress value)? searchInProgress,
    TResult? Function(_SearchFailure value)? searchFailure,
    TResult? Function(_ProductSearchState value)? searchSuccess,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_SearchInProgress value)? searchInProgress,
    TResult Function(_SearchFailure value)? searchFailure,
    TResult Function(_ProductSearchState value)? searchSuccess,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements ProductSearchState {
  const factory _Initial() = _$_Initial;
}

/// @nodoc
abstract class _$$_SearchInProgressCopyWith<$Res> {
  factory _$$_SearchInProgressCopyWith(
          _$_SearchInProgress value, $Res Function(_$_SearchInProgress) then) =
      __$$_SearchInProgressCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_SearchInProgressCopyWithImpl<$Res>
    extends _$ProductSearchStateCopyWithImpl<$Res, _$_SearchInProgress>
    implements _$$_SearchInProgressCopyWith<$Res> {
  __$$_SearchInProgressCopyWithImpl(
      _$_SearchInProgress _value, $Res Function(_$_SearchInProgress) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_SearchInProgress implements _SearchInProgress {
  const _$_SearchInProgress();

  @override
  String toString() {
    return 'ProductSearchState.searchInProgress()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_SearchInProgress);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() searchInProgress,
    required TResult Function(ProductFailure failure) searchFailure,
    required TResult Function() searchSuccess,
  }) {
    return searchInProgress();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? searchInProgress,
    TResult? Function(ProductFailure failure)? searchFailure,
    TResult? Function()? searchSuccess,
  }) {
    return searchInProgress?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? searchInProgress,
    TResult Function(ProductFailure failure)? searchFailure,
    TResult Function()? searchSuccess,
    required TResult orElse(),
  }) {
    if (searchInProgress != null) {
      return searchInProgress();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_SearchInProgress value) searchInProgress,
    required TResult Function(_SearchFailure value) searchFailure,
    required TResult Function(_ProductSearchState value) searchSuccess,
  }) {
    return searchInProgress(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_SearchInProgress value)? searchInProgress,
    TResult? Function(_SearchFailure value)? searchFailure,
    TResult? Function(_ProductSearchState value)? searchSuccess,
  }) {
    return searchInProgress?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_SearchInProgress value)? searchInProgress,
    TResult Function(_SearchFailure value)? searchFailure,
    TResult Function(_ProductSearchState value)? searchSuccess,
    required TResult orElse(),
  }) {
    if (searchInProgress != null) {
      return searchInProgress(this);
    }
    return orElse();
  }
}

abstract class _SearchInProgress implements ProductSearchState {
  const factory _SearchInProgress() = _$_SearchInProgress;
}

/// @nodoc
abstract class _$$_SearchFailureCopyWith<$Res> {
  factory _$$_SearchFailureCopyWith(
          _$_SearchFailure value, $Res Function(_$_SearchFailure) then) =
      __$$_SearchFailureCopyWithImpl<$Res>;
  @useResult
  $Res call({ProductFailure failure});

  $ProductFailureCopyWith<$Res> get failure;
}

/// @nodoc
class __$$_SearchFailureCopyWithImpl<$Res>
    extends _$ProductSearchStateCopyWithImpl<$Res, _$_SearchFailure>
    implements _$$_SearchFailureCopyWith<$Res> {
  __$$_SearchFailureCopyWithImpl(
      _$_SearchFailure _value, $Res Function(_$_SearchFailure) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? failure = null,
  }) {
    return _then(_$_SearchFailure(
      null == failure
          ? _value.failure
          : failure // ignore: cast_nullable_to_non_nullable
              as ProductFailure,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $ProductFailureCopyWith<$Res> get failure {
    return $ProductFailureCopyWith<$Res>(_value.failure, (value) {
      return _then(_value.copyWith(failure: value));
    });
  }
}

/// @nodoc

class _$_SearchFailure implements _SearchFailure {
  const _$_SearchFailure(this.failure);

  @override
  final ProductFailure failure;

  @override
  String toString() {
    return 'ProductSearchState.searchFailure(failure: $failure)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SearchFailure &&
            (identical(other.failure, failure) || other.failure == failure));
  }

  @override
  int get hashCode => Object.hash(runtimeType, failure);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SearchFailureCopyWith<_$_SearchFailure> get copyWith =>
      __$$_SearchFailureCopyWithImpl<_$_SearchFailure>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() searchInProgress,
    required TResult Function(ProductFailure failure) searchFailure,
    required TResult Function() searchSuccess,
  }) {
    return searchFailure(failure);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? searchInProgress,
    TResult? Function(ProductFailure failure)? searchFailure,
    TResult? Function()? searchSuccess,
  }) {
    return searchFailure?.call(failure);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? searchInProgress,
    TResult Function(ProductFailure failure)? searchFailure,
    TResult Function()? searchSuccess,
    required TResult orElse(),
  }) {
    if (searchFailure != null) {
      return searchFailure(failure);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_SearchInProgress value) searchInProgress,
    required TResult Function(_SearchFailure value) searchFailure,
    required TResult Function(_ProductSearchState value) searchSuccess,
  }) {
    return searchFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_SearchInProgress value)? searchInProgress,
    TResult? Function(_SearchFailure value)? searchFailure,
    TResult? Function(_ProductSearchState value)? searchSuccess,
  }) {
    return searchFailure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_SearchInProgress value)? searchInProgress,
    TResult Function(_SearchFailure value)? searchFailure,
    TResult Function(_ProductSearchState value)? searchSuccess,
    required TResult orElse(),
  }) {
    if (searchFailure != null) {
      return searchFailure(this);
    }
    return orElse();
  }
}

abstract class _SearchFailure implements ProductSearchState {
  const factory _SearchFailure(final ProductFailure failure) = _$_SearchFailure;

  ProductFailure get failure;
  @JsonKey(ignore: true)
  _$$_SearchFailureCopyWith<_$_SearchFailure> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_ProductSearchStateCopyWith<$Res> {
  factory _$$_ProductSearchStateCopyWith(_$_ProductSearchState value,
          $Res Function(_$_ProductSearchState) then) =
      __$$_ProductSearchStateCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_ProductSearchStateCopyWithImpl<$Res>
    extends _$ProductSearchStateCopyWithImpl<$Res, _$_ProductSearchState>
    implements _$$_ProductSearchStateCopyWith<$Res> {
  __$$_ProductSearchStateCopyWithImpl(
      _$_ProductSearchState _value, $Res Function(_$_ProductSearchState) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_ProductSearchState implements _ProductSearchState {
  const _$_ProductSearchState();

  @override
  String toString() {
    return 'ProductSearchState.searchSuccess()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_ProductSearchState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() searchInProgress,
    required TResult Function(ProductFailure failure) searchFailure,
    required TResult Function() searchSuccess,
  }) {
    return searchSuccess();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? searchInProgress,
    TResult? Function(ProductFailure failure)? searchFailure,
    TResult? Function()? searchSuccess,
  }) {
    return searchSuccess?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? searchInProgress,
    TResult Function(ProductFailure failure)? searchFailure,
    TResult Function()? searchSuccess,
    required TResult orElse(),
  }) {
    if (searchSuccess != null) {
      return searchSuccess();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_SearchInProgress value) searchInProgress,
    required TResult Function(_SearchFailure value) searchFailure,
    required TResult Function(_ProductSearchState value) searchSuccess,
  }) {
    return searchSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_SearchInProgress value)? searchInProgress,
    TResult? Function(_SearchFailure value)? searchFailure,
    TResult? Function(_ProductSearchState value)? searchSuccess,
  }) {
    return searchSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_SearchInProgress value)? searchInProgress,
    TResult Function(_SearchFailure value)? searchFailure,
    TResult Function(_ProductSearchState value)? searchSuccess,
    required TResult orElse(),
  }) {
    if (searchSuccess != null) {
      return searchSuccess(this);
    }
    return orElse();
  }
}

abstract class _ProductSearchState implements ProductSearchState {
  const factory _ProductSearchState() = _$_ProductSearchState;
}
