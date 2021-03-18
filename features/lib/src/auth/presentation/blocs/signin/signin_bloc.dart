import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:common/common.dart';
import 'package:features/src/auth/domain/usecase/facebook_signin.dart';
import 'package:features/src/auth/domain/usecase/google_signin.dart';
import 'package:features/src/publisher/user_notifier.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:logging/logging.dart';

part 'signin_event.dart';
part 'signin_state.dart';
part 'signin_bloc.freezed.dart';

class SigninBloc extends Bloc<SigninEvent, SigninState> {
  final FacebookSigninUseCase _facebookSigninUseCase;
  final GoogleSigninUseCase _googleSigninUseCase;
  final UserNotifier _userNotifier;
  SigninBloc(this._facebookSigninUseCase, this._googleSigninUseCase,
      this._userNotifier)
      : super(Initial()) {
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
    yield PhoneSigninFailure("Account not found");
  }

  Stream<SigninState> _signFacebook() async* {
    final result = await _facebookSigninUseCase(NoParams());
    yield result.when(success: (user) {
      _logger.fine(user);
      _userNotifier.user = user;
      return FacebookSigninSuccess();
    }, failure: (error) {
      _logger.severe(error.toString());
      return FacebookSigninFailure(error.message);
    });
  }

  Stream<SigninState> _signGoogle() async* {
    final result = await _googleSigninUseCase(NoParams());
    yield result.when(success: (user) {
      _logger.fine(user);
      _userNotifier.user = user;
      return FacebookSigninSuccess();
    }, failure: (error) {
      _logger.severe(error.toString());
      return FacebookSigninFailure(error.message);
    });
  }
}
