part of 'splash_cubit.dart';

@freezed
abstract class SplashState with _$SplashState {
  const factory SplashState.initial() = _Initial;
  const factory SplashState.isUserLogged() = _UserLogged;
  const factory SplashState.isUserNotLogged() = _UserNotLogged;
}
