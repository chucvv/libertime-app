import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:login/src/domain/entities/user.dart';

import 'login_error.dart';

part 'login_state.freezed.dart';

@freezed
abstract class LoginState with _$LoginState {
  factory LoginState.initial() = Initial;

  const factory LoginState.loading() = Loading;

  const factory LoginState.success(User user) = Success;

  const factory LoginState.unSuccess(String error) = UnSuccess;

  const factory LoginState.invalidFormField(
      {Map<LoginFormField, List<String>> errors}) = InvalidFormField;
}
