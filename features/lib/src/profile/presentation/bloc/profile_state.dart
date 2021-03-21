part of 'profile_bloc.dart';

@freezed
abstract class ProfileState with _$ProfileState {
  const factory ProfileState.initial() = Initial;
  const factory ProfileState.onSignOutSuccess() = SignOutSuccess;
  const factory ProfileState.onSignOutFailure(dynamic error) = SignOutFailure;
}
