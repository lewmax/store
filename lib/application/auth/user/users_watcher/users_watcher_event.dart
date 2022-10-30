part of 'users_watcher_bloc.dart';

@freezed
abstract class UsersWatcherEvent with _$UsersWatcherEvent {
  const factory UsersWatcherEvent.watchUsers() = _WatchUsers;

  const factory UsersWatcherEvent.usersReceived(
      Either<AuthFailure, List<User>> failureOrUsers,
      ) = _UsersReceived;
}
