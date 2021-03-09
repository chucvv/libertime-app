part of 'signin_bloc.dart';

@freezed
abstract class SigninState with _$SigninState {
  const factory SigninState.initial() = _Initial;
  const factory SigninState.loadingSignin() = Loading;
  const factory SigninState.facebookSiginSuccess() = FacebookSiginSuccess;
  const factory SigninState.facebookSiginFailure(String message) =
      FacebookSigninFailure;
  const factory SigninState.googleSiginSuccess() = GoogleSiginSuccess;
  const factory SigninState.gooogleSiginFailure(String message) =
      GoogleSigninFailure;
  const factory SigninState.phoneSigninSuccess() = PhoneSigninSuccess;
  const factory SigninState.phoneSigninFailure(String message) =
      PhoneSigninFailure;
}
