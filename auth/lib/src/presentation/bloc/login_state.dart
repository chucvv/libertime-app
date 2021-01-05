import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:auth/src/domain/entities/credential.dart';

import 'login_error.dart';

part 'login_state.freezed.dart';

@freezed
abstract class LoginState with _$LoginState {
  factory LoginState.initial() = Initial;

  const factory LoginState.loading() = Loading;

  const factory LoginState.success(Credential credential) = Success;

  const factory LoginState.unSuccess(String error) = UnSuccess;

  const factory LoginState.invalidFormField(
      {Map<LoginFormField, List<String>> errors}) = InvalidFormField;
}
