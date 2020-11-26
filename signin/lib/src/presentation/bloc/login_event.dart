import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'login_event.freezed.dart';

@freezed
abstract class LoginEvent with _$LoginEvent {
  const factory LoginEvent.login(String username, String password) =
      onLoginEvent;
}
