import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:common/common.dart';
import 'package:features/src/publisher/user_notifier.dart';
import 'package:features/src/splash/domain/usecase/login_usecase.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:logging/logging.dart';
import 'package:meta/meta.dart';

part 'splash_event.dart';
part 'splash_state.dart';
part 'splash_bloc.freezed.dart';

class SplashBloc extends Bloc<SplashEvent, SplashState> {
  SplashBloc(this._loginUseCase, this._userNotifier) : super(Initial());

  final LoginUseCase _loginUseCase;
  final UserNotifier _userNotifier;
  final _logger = Logger('SplashBloc');

  @override
  Stream<SplashState> mapEventToState(
    SplashEvent event,
  ) async* {
    yield* event.when(onCheckSignIn: _isSignIn);
  }

  Stream<SplashState> _isSignIn() async* {
    final result = await _loginUseCase(NoParams());
    yield result.when(success: (userEntity) {
      _userNotifier.user = userEntity;
      _logger.fine(userEntity);
      return userEntity != null ? UserLogged() : UserNotLogged();
    }, failure: (error) {
      return UserNotLogged();
    });
  }
}
