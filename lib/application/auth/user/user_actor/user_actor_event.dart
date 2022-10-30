part of 'user_actor_bloc.dart';

@freezed
abstract class UserActorEvent with _$UserActorEvent {
  const factory UserActorEvent.editImageUrl(File image) = _EditImageUrl;

  const factory UserActorEvent.editNameAddressPhone(
      {required String name,
      required String address,
      required String phone}) = _EditNameAddressPhone;

  const factory UserActorEvent.editEmailAddress(String emailAddress) =
      _EditEmailAddress;

  const factory UserActorEvent.toggleFavorites(String prodId) =
      _ToggleFavorites;

  const factory UserActorEvent.addToSubscriptions(String storeId) =
  _AddToSubscriptions;

  const factory UserActorEvent.edited(User user) = _Edited;
}
