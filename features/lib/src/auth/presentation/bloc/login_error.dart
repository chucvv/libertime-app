import 'package:meta/meta.dart';
import 'package:verify/verify.dart';

enum LoginFormField {
  username,
  password,
}

class LoginFormError implements ValidationError {
  final LoginFormField field;
  final String message;

  LoginFormError({@required this.field, @required this.message});

  @override
  String get errorDescription => message;
}
