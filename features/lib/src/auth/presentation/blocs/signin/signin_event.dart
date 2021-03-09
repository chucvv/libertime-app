part of 'signin_bloc.dart';

@freezed
abstract class SigninEvent with _$SigninEvent {
  const factory SigninEvent.onSigninFacebook() = onSigninFacebookEvent;
  const factory SigninEvent.onSigninGoogle() = onSigninGoogleEvent;
}
