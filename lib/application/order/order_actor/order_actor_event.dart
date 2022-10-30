part of 'order_actor_bloc.dart';

@freezed
abstract class OrderActorEvent with _$OrderActorEvent {
  const factory OrderActorEvent.create(Order order) = _Create;

  const factory OrderActorEvent.update(Order order) = _Update;
}
