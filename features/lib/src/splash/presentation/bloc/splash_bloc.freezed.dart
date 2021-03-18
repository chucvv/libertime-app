// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'splash_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$SplashEventTearOff {
  const _$SplashEventTearOff();

// ignore: unused_element
  checkSignIn onCheckSignIn() {
    return const checkSignIn();
  }
}

/// @nodoc
// ignore: unused_element
const $SplashEvent = _$SplashEventTearOff();

/// @nodoc
mixin _$SplashEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult onCheckSignIn(),
  });
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult onCheckSignIn(),
    @required TResult orElse(),
  });
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult onCheckSignIn(checkSignIn value),
  });
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult onCheckSignIn(checkSignIn value),
    @required TResult orElse(),
  });
}

/// @nodoc
abstract class $SplashEventCopyWith<$Res> {
  factory $SplashEventCopyWith(
          SplashEvent value, $Res Function(SplashEvent) then) =
      _$SplashEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$SplashEventCopyWithImpl<$Res> implements $SplashEventCopyWith<$Res> {
  _$SplashEventCopyWithImpl(this._value, this._then);

  final SplashEvent _value;
  // ignore: unused_field
  final $Res Function(SplashEvent) _then;
}

/// @nodoc
abstract class $checkSignInCopyWith<$Res> {
  factory $checkSignInCopyWith(
          checkSignIn value, $Res Function(checkSignIn) then) =
      _$checkSignInCopyWithImpl<$Res>;
}

/// @nodoc
class _$checkSignInCopyWithImpl<$Res> extends _$SplashEventCopyWithImpl<$Res>
    implements $checkSignInCopyWith<$Res> {
  _$checkSignInCopyWithImpl(
      checkSignIn _value, $Res Function(checkSignIn) _then)
      : super(_value, (v) => _then(v as checkSignIn));

  @override
  checkSignIn get _value => super._value as checkSignIn;
}

/// @nodoc
class _$checkSignIn implements checkSignIn {
  const _$checkSignIn();

  @override
  String toString() {
    return 'SplashEvent.onCheckSignIn()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is checkSignIn);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult onCheckSignIn(),
  }) {
    assert(onCheckSignIn != null);
    return onCheckSignIn();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult onCheckSignIn(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (onCheckSignIn != null) {
      return onCheckSignIn();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult onCheckSignIn(checkSignIn value),
  }) {
    assert(onCheckSignIn != null);
    return onCheckSignIn(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult onCheckSignIn(checkSignIn value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (onCheckSignIn != null) {
      return onCheckSignIn(this);
    }
    return orElse();
  }
}

abstract class checkSignIn implements SplashEvent {
  const factory checkSignIn() = _$checkSignIn;
}

/// @nodoc
class _$SplashStateTearOff {
  const _$SplashStateTearOff();

// ignore: unused_element
  Initial initial() {
    return const Initial();
  }

// ignore: unused_element
  UserLogged isUserLogged() {
    return const UserLogged();
  }

// ignore: unused_element
  UserNotLogged isUserNotLogged() {
    return const UserNotLogged();
  }
}

/// @nodoc
// ignore: unused_element
const $SplashState = _$SplashStateTearOff();

/// @nodoc
mixin _$SplashState {
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initial(),
    @required TResult isUserLogged(),
    @required TResult isUserNotLogged(),
  });
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(),
    TResult isUserLogged(),
    TResult isUserNotLogged(),
    @required TResult orElse(),
  });
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initial(Initial value),
    @required TResult isUserLogged(UserLogged value),
    @required TResult isUserNotLogged(UserNotLogged value),
  });
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(Initial value),
    TResult isUserLogged(UserLogged value),
    TResult isUserNotLogged(UserNotLogged value),
    @required TResult orElse(),
  });
}

/// @nodoc
abstract class $SplashStateCopyWith<$Res> {
  factory $SplashStateCopyWith(
          SplashState value, $Res Function(SplashState) then) =
      _$SplashStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$SplashStateCopyWithImpl<$Res> implements $SplashStateCopyWith<$Res> {
  _$SplashStateCopyWithImpl(this._value, this._then);

  final SplashState _value;
  // ignore: unused_field
  final $Res Function(SplashState) _then;
}

/// @nodoc
abstract class $InitialCopyWith<$Res> {
  factory $InitialCopyWith(Initial value, $Res Function(Initial) then) =
      _$InitialCopyWithImpl<$Res>;
}

/// @nodoc
class _$InitialCopyWithImpl<$Res> extends _$SplashStateCopyWithImpl<$Res>
    implements $InitialCopyWith<$Res> {
  _$InitialCopyWithImpl(Initial _value, $Res Function(Initial) _then)
      : super(_value, (v) => _then(v as Initial));

  @override
  Initial get _value => super._value as Initial;
}

/// @nodoc
class _$Initial implements Initial {
  const _$Initial();

  @override
  String toString() {
    return 'SplashState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is Initial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initial(),
    @required TResult isUserLogged(),
    @required TResult isUserNotLogged(),
  }) {
    assert(initial != null);
    assert(isUserLogged != null);
    assert(isUserNotLogged != null);
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(),
    TResult isUserLogged(),
    TResult isUserNotLogged(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initial(Initial value),
    @required TResult isUserLogged(UserLogged value),
    @required TResult isUserNotLogged(UserNotLogged value),
  }) {
    assert(initial != null);
    assert(isUserLogged != null);
    assert(isUserNotLogged != null);
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(Initial value),
    TResult isUserLogged(UserLogged value),
    TResult isUserNotLogged(UserNotLogged value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class Initial implements SplashState {
  const factory Initial() = _$Initial;
}

/// @nodoc
abstract class $UserLoggedCopyWith<$Res> {
  factory $UserLoggedCopyWith(
          UserLogged value, $Res Function(UserLogged) then) =
      _$UserLoggedCopyWithImpl<$Res>;
}

/// @nodoc
class _$UserLoggedCopyWithImpl<$Res> extends _$SplashStateCopyWithImpl<$Res>
    implements $UserLoggedCopyWith<$Res> {
  _$UserLoggedCopyWithImpl(UserLogged _value, $Res Function(UserLogged) _then)
      : super(_value, (v) => _then(v as UserLogged));

  @override
  UserLogged get _value => super._value as UserLogged;
}

/// @nodoc
class _$UserLogged implements UserLogged {
  const _$UserLogged();

  @override
  String toString() {
    return 'SplashState.isUserLogged()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is UserLogged);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initial(),
    @required TResult isUserLogged(),
    @required TResult isUserNotLogged(),
  }) {
    assert(initial != null);
    assert(isUserLogged != null);
    assert(isUserNotLogged != null);
    return isUserLogged();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(),
    TResult isUserLogged(),
    TResult isUserNotLogged(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (isUserLogged != null) {
      return isUserLogged();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initial(Initial value),
    @required TResult isUserLogged(UserLogged value),
    @required TResult isUserNotLogged(UserNotLogged value),
  }) {
    assert(initial != null);
    assert(isUserLogged != null);
    assert(isUserNotLogged != null);
    return isUserLogged(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(Initial value),
    TResult isUserLogged(UserLogged value),
    TResult isUserNotLogged(UserNotLogged value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (isUserLogged != null) {
      return isUserLogged(this);
    }
    return orElse();
  }
}

abstract class UserLogged implements SplashState {
  const factory UserLogged() = _$UserLogged;
}

/// @nodoc
abstract class $UserNotLoggedCopyWith<$Res> {
  factory $UserNotLoggedCopyWith(
          UserNotLogged value, $Res Function(UserNotLogged) then) =
      _$UserNotLoggedCopyWithImpl<$Res>;
}

/// @nodoc
class _$UserNotLoggedCopyWithImpl<$Res> extends _$SplashStateCopyWithImpl<$Res>
    implements $UserNotLoggedCopyWith<$Res> {
  _$UserNotLoggedCopyWithImpl(
      UserNotLogged _value, $Res Function(UserNotLogged) _then)
      : super(_value, (v) => _then(v as UserNotLogged));

  @override
  UserNotLogged get _value => super._value as UserNotLogged;
}

/// @nodoc
class _$UserNotLogged implements UserNotLogged {
  const _$UserNotLogged();

  @override
  String toString() {
    return 'SplashState.isUserNotLogged()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is UserNotLogged);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initial(),
    @required TResult isUserLogged(),
    @required TResult isUserNotLogged(),
  }) {
    assert(initial != null);
    assert(isUserLogged != null);
    assert(isUserNotLogged != null);
    return isUserNotLogged();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(),
    TResult isUserLogged(),
    TResult isUserNotLogged(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (isUserNotLogged != null) {
      return isUserNotLogged();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initial(Initial value),
    @required TResult isUserLogged(UserLogged value),
    @required TResult isUserNotLogged(UserNotLogged value),
  }) {
    assert(initial != null);
    assert(isUserLogged != null);
    assert(isUserNotLogged != null);
    return isUserNotLogged(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(Initial value),
    TResult isUserLogged(UserLogged value),
    TResult isUserNotLogged(UserNotLogged value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (isUserNotLogged != null) {
      return isUserNotLogged(this);
    }
    return orElse();
  }
}

abstract class UserNotLogged implements SplashState {
  const factory UserNotLogged() = _$UserNotLogged;
}
