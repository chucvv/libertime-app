import 'package:bloc/bloc.dart';
import 'package:common/common.dart';
import 'package:features/src/auth/domain/usecase/anonymous_signin.dart';
import 'package:features/src/auth/domain/usecase/facebook_signin.dart';
import 'package:features/src/auth/domain/usecase/google_signin.dart';
import 'package:features/src/publisher/user_notifier.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:logging/logging.dart';
import 'package:meta/meta.dart';

part 'signin_state.dart';
part 'signin_cubit.freezed.dart';

class SigninCubit extends Cubit<SigninState> {
  final FacebookSigninUseCase _facebookSigninUseCase;
  final GoogleSigninUseCase _googleSigninUseCase;
  final AnonymousSigninUseCase _anonymousSigninUseCase;
  final UserNotifier _userNotifier;

  final _logger = Logger('SigninBloc');

  SigninCubit(this._facebookSigninUseCase, this._googleSigninUseCase,
      this._anonymousSigninUseCase, this._userNotifier)
      : super(SigninState.initial()) {
    _logger.info('Constructor SigninBloc');
  }

  void signInWithAnonymous() async {
    final result = await _anonymousSigninUseCase(NoParams());
    result.when(success: (user) {
      _logger.fine(user);
      _userNotifier.user = user;
      emit(SigninState.anonymousSigninSuccess());
    }, failure: (error) {
      _logger.severe(error.toString());
      emit(SigninState.anonymousSigninFailure(error.message));
    });
  }

  void signWithPhoneNumber(String phoneNumber, String rawPassword) async {
    emit(SigninState.phoneSigninFailure("Account not found"));
  }

  void signFacebook() async {
    final result = await _facebookSigninUseCase(NoParams());
    result.when(success: (user) {
      _logger.fine(user);
      _userNotifier.user = user;
      emit(SigninState.facebookSigninSuccess());
    }, failure: (error) {
      _logger.severe(error.toString());
      emit(SigninState.facebookSigninFailure(error.message));
    });
  }

  void signGoogle() async {
    final result = await _googleSigninUseCase(NoParams());
    result.when(success: (user) {
      _logger.fine(user);
      _userNotifier.user = user;
      emit(SigninState.googleSiginSuccess());
    }, failure: (error) {
      _logger.severe(error.toString());
      emit(SigninState.gooogleSiginFailure(error.message));
    });
  }
}
