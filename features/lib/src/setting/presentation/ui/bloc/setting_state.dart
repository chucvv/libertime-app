part of 'setting_bloc.dart';

@freezed
abstract class SettingState with _$SettingState {
  const factory SettingState.initial() = Initial;
  const factory SettingState.onSignOutSuccess() = SignOutSuccess;
  const factory SettingState.onSignOutFailure(dynamic error) = SignOutFailure;
}
