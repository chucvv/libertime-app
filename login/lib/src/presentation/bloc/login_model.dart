import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'login_model.freezed.dart';

@freezed
abstract class LoginModel with _$LoginModel {
  const factory LoginModel({String userName, String password}) = _LoginModel;
}
