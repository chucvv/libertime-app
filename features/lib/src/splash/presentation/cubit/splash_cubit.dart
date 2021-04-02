import 'package:bloc/bloc.dart';
import 'package:common/common.dart';
import 'package:features/src/publisher/user_notifier.dart';
import 'package:features/src/splash/domain/usecase/login_usecase.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:logging/logging.dart';
import 'package:meta/meta.dart';

part 'splash_state.dart';
part 'splash_cubit.freezed.dart';

class SplashCubit extends Cubit<SplashState> {
  SplashCubit(this._loginUseCase, this._userNotifier)
      : super(SplashState.initial());

  final LoginUseCase _loginUseCase;
  final UserNotifier _userNotifier;
  final _logger = Logger('SplashBloc');

  void isSignIn() async {
    final result = await _loginUseCase(NoParams());
    result.when(success: (userEntity) {
      _userNotifier.user = userEntity;
      _logger.fine(userEntity);
      emit(userEntity != null
          ? SplashState.isUserLogged()
          : SplashState.isUserNotLogged());
    }, failure: (error) {
      emit(SplashState.isUserNotLogged());
    });
  }
}
