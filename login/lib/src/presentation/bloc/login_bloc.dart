import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:core_packages/core.dart';
import 'package:login/src/domain/usecases/login_usecase.dart';
import 'package:login/src/presentation/bloc/login_model.dart';
import 'package:verify/verify.dart';

import 'bloc.dart';
import 'login_error.dart';
import 'login_validation.dart';

class LoginBloc extends Bloc<LoginEvent, LoginState> {
  final LoginUseCase _loginUseCase;

  LoginModel loginModel = const LoginModel();

  LoginBloc(this._loginUseCase) : super(LoginState.initial());

  @override
  Stream<LoginState> mapEventToState(
    LoginEvent event,
  ) async* {
    yield* event.maybeWhen(
        login: (userName, password) => doLogin(userName, password),
        orElse: () => doFormFieldValidation(event));
  }

  Stream<LoginState> doLogin(String userName, String password) async* {
    yield const LoginState.loading();
    final login = await _loginUseCase(LoginParams(userName, password));
    yield login.fold((e) {
      return LoginState.unSuccess(mapError(e));
    }, (user) {
      return LoginState.success(user);
    });
  }

  Stream<LoginState> doFormFieldValidation(LoginEvent event) async* {
    loginModel = event.maybeWhen(
        setEmail: (str) => loginModel.copyWith(userName: str),
        setPassword: (str) => loginModel.copyWith(password: str),
        orElse: () => loginModel);

    final errors = loginValidation
        .verify<LoginFormError>(loginModel)
        .groupedErrorsBy((error) => error.field)
        .messages;

    yield LoginState.invalidFormField(errors: errors);
  }
}
