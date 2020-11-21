import 'package:verify/verify.dart';

import '../strings.dart';
import 'login_error.dart';
import 'login_model.dart';

extension on String {
  bool isValidEmail() {
    return RegExp(
            r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$')
        .hasMatch(this);
  }
}

final Validator_<LoginModel> loginValidation = Verify.all<LoginModel>([
  Verify.subject<LoginModel>()
      .ignoreWhen((state) => state.password == null)
      .checkField(
          (state) => state.password,
          Verify.property<String>((s) => s.length >= 8,
              error: LoginFormError(
                field: LoginFormField.password,
                message: Strings.invalidPassword,
              ))),
  Verify.subject<LoginModel>()
      .ignoreWhen((state) => state.userName == null)
      .checkField(
          (state) => state.userName,
          Verify.property<String>((s) => s.isValidEmail(),
              error: LoginFormError(
                field: LoginFormField.userName,
                message: Strings.invalidEmail,
              ))),
]);
