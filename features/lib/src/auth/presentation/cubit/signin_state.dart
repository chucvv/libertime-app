part of 'signin_cubit.dart';

@freezed
abstract class SigninState with _$SigninState {
  const factory SigninState.initial() = _Initial;
  const factory SigninState.facebookSigninSuccess() = _FacebookSigninSuccess;
  const factory SigninState.facebookSigninFailure(String message) =
      _FacebookSigninFailure;
  const factory SigninState.googleSiginSuccess() = _GoogleSiginSuccess;
  const factory SigninState.gooogleSiginFailure(String message) =
      _GoogleSigninFailure;
  const factory SigninState.phoneSigninSuccess() = _PhoneSigninSuccess;
  const factory SigninState.phoneSigninFailure(String message) =
      _PhoneSigninFailure;
  const factory SigninState.anonymousSigninSuccess() = _AnonymousSigninSuccess;
  const factory SigninState.anonymousSigninFailure(String message) =
      _AnonymousSigninFailure;
}
