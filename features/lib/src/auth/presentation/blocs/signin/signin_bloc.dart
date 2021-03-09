import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:common/common.dart';
import 'package:features/src/auth/domain/usecases/login_facebook.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:logging/logging.dart';

part 'signin_event.dart';
part 'signin_state.dart';
part 'signin_bloc.freezed.dart';

class SigninBloc extends Bloc<SigninEvent, SigninState> {
  final FacebookSigninUseCase _facebookSigninUseCase;
  SigninBloc(this._facebookSigninUseCase) : super(Loading()) {
    _logger.info('Constructor SigninBloc');
  }

  final _logger = Logger('SigninBloc');

  @override
  Stream<SigninState> mapEventToState(
    SigninEvent event,
  ) async* {
    yield* event.when(
        onSigninFacebook: _signFacebook, onSigninGoogle: _signGoogle);
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

  // ignore: missing_return
  Stream<SigninState> _signGoogle() {}
}
