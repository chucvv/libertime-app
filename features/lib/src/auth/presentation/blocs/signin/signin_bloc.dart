import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:common/common.dart';
import 'package:features/src/auth/domain/usecases/login_facebook.dart';
import 'package:features/src/auth/domain/usecases/login_google.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:logging/logging.dart';

part 'signin_event.dart';
part 'signin_state.dart';
part 'signin_bloc.freezed.dart';

class SigninBloc extends Bloc<SigninEvent, SigninState> {
  final FacebookSigninUseCase _facebookSigninUseCase;
  final GoogleSigninUseCase _googleSigninUseCase;
  SigninBloc(this._facebookSigninUseCase, this._googleSigninUseCase)
      : super(Loading()) {
    _logger.info('Constructor SigninBloc');
  }

  final _logger = Logger('SigninBloc');

  @override
  Stream<SigninState> mapEventToState(
    SigninEvent event,
  ) async* {
    yield* event.when(
        onSigninFacebook: _signFacebook,
        onSigninGoogle: _signGoogle,
        onSignInPhone: _signWithPhoneNumber);
  }

  Stream<SigninState> _signWithPhoneNumber(
      String phoneNumber, String rawPassword) async* {
    yield Loading();
    yield PhoneSigninFailure("Account not found");
  }

  Stream<SigninState> _signFacebook() async* {
    yield Loading();
    final signin = await _facebookSigninUseCase(NoParams());
    yield signin.fold((user) {
      _logger.fine(user.info);
      return FacebookSiginSuccess();
    }, (failure) {
      _logger.severe(failure.exception);
      return FacebookSigninFailure(failure.exception.toString());
    });
  }

  Stream<SigninState> _signGoogle() async* {
    yield Loading();
    final signin = await _googleSigninUseCase(NoParams());
    yield signin.fold((user) {
      _logger.fine(user.info);
      return GoogleSiginSuccess();
    }, (failure) {
      _logger.severe(failure.exception);
      return GoogleSigninFailure(failure.exception.toString());
    });
  }
}
