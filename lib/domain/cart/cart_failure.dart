import 'package:freezed_annotation/freezed_annotation.dart';

part 'cart_failure.freezed.dart';

@freezed
abstract class CartFailure with _$CartFailure {
  const factory CartFailure.unableToUpdate() = _UnableToUpdate;

  const factory CartFailure.insufficientPermissions() =
  _InsufficientPermissions;

  const factory CartFailure.unexpected() = _Unexpected;

}