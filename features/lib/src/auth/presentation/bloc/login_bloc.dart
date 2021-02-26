import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:features/src/auth/domain/usecases/login_usecase.dart';
import 'package:verify/verify.dart';
import 'package:common/utility.dart';
import 'bloc.dart';
import 'login_error.dart';
import 'login_validation.dart';

class LoginBloc extends Bloc<LoginEvent, LoginState> {
  final LoginUseCase _loginUseCase;

  LoginBloc(this._loginUseCase) : super(LoginState.initial());

  @override
  Stream<LoginState> mapEventToState(
    LoginEvent event,
  ) async* {
    yield* event.when(login: doLogin);
  }

  Stream<LoginState> doLogin(String username, String password) async* {
    yield const LoginState.loading();
    final errors =
        doFormFieldValidation(LoginValidationModel(username, password));
    if (errors.isNotEmpty) {
      yield LoginState.invalidFormField(errors: errors);
      return;
    }
    final login = await _loginUseCase(LoginParams(username, password));
    yield login.fold((e) {
      return LoginState.unSuccess(mapError(e));
    }, (user) {
      return LoginState.success(user);
    });
  }

  Map<LoginFormField, List<String>> doFormFieldValidation(
      LoginValidationModel model) {
    return loginValidation
        .verify<LoginFormError>(model)
        .groupedErrorsBy((error) => error.field)
        .messages;
  }
}
