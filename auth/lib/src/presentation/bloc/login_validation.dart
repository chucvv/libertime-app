import 'package:auth/src/presentation/strings.dart';
import 'package:verify/verify.dart';
import 'login_error.dart';

class LoginValidationModel {
  final String username;
  final String password;

  LoginValidationModel(this.username, this.password);
}

final Validator_<LoginValidationModel> loginValidation =
    Verify.all<LoginValidationModel>([
  Verify.subject<LoginValidationModel>().checkField(
      (state) => state.password,
      Verify.property<String>((s) => s != null && s.length >= 8,
          error: LoginFormError(
            field: LoginFormField.password,
            message: Strings.invalidPassword,
          ))),
  Verify.subject<LoginValidationModel>().checkField(
      (state) => state.username,
      Verify.property<String>((s) => s != null,
          error: LoginFormError(
            field: LoginFormField.username,
            message: Strings.invalidEmail,
          ))),
]);
