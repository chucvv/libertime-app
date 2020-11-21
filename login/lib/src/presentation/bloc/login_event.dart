import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'login_event.freezed.dart';

@freezed
abstract class LoginEvent with _$LoginEvent {
  const factory LoginEvent.setEmail(String email) = onEmailEvent;
  const factory LoginEvent.setPassword(String password) = onPasswordEvent;
  const factory LoginEvent.login(String userName, String password) =
      onLoginEvent;
}
