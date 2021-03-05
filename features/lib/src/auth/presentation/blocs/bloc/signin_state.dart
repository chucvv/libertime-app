part of 'signin_bloc.dart';

@freezed
abstract class SigninState with _$SigninState {
  const factory SigninState.initial() = _Initial;
}
