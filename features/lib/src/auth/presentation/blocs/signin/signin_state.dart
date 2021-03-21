part of 'signin_bloc.dart';

@freezed
abstract class SigninState with _$SigninState {
  const factory SigninState.initial() = Initial;
  const factory SigninState.facebookSigninSuccess() = FacebookSigninSuccess;
  const factory SigninState.facebookSigninFailure(String message) =
      FacebookSigninFailure;
  const factory SigninState.googleSiginSuccess() = GoogleSiginSuccess;
  const factory SigninState.gooogleSiginFailure(String message) =
      GoogleSigninFailure;
  const factory SigninState.phoneSigninSuccess() = PhoneSigninSuccess;
  const factory SigninState.phoneSigninFailure(String message) =
      PhoneSigninFailure;
  const factory SigninState.anonymousSigninSuccess() = AnonymousSigninSuccess;
  const factory SigninState.anonymousSigninFailure(String message) =
      AnonymousSigninFailure;
}
