part of 'profile_cubit.dart';

@freezed
abstract class ProfileState with _$ProfileState {
  const factory ProfileState.initial() = _Initial;
  const factory ProfileState.onSignOutSuccess() = _SignOutSuccess;
  const factory ProfileState.onSignOutFailure(dynamic error) = _SignOutFailure;
}
