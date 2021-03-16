// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'setting_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$SettingEventTearOff {
  const _$SettingEventTearOff();

// ignore: unused_element
  signOut onSignOut() {
    return const signOut();
  }
}

/// @nodoc
// ignore: unused_element
const $SettingEvent = _$SettingEventTearOff();

/// @nodoc
mixin _$SettingEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult onSignOut(),
  });
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult onSignOut(),
    @required TResult orElse(),
  });
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult onSignOut(signOut value),
  });
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult onSignOut(signOut value),
    @required TResult orElse(),
  });
}

/// @nodoc
abstract class $SettingEventCopyWith<$Res> {
  factory $SettingEventCopyWith(
          SettingEvent value, $Res Function(SettingEvent) then) =
      _$SettingEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$SettingEventCopyWithImpl<$Res> implements $SettingEventCopyWith<$Res> {
  _$SettingEventCopyWithImpl(this._value, this._then);

  final SettingEvent _value;
  // ignore: unused_field
  final $Res Function(SettingEvent) _then;
}

/// @nodoc
abstract class $signOutCopyWith<$Res> {
  factory $signOutCopyWith(signOut value, $Res Function(signOut) then) =
      _$signOutCopyWithImpl<$Res>;
}

/// @nodoc
class _$signOutCopyWithImpl<$Res> extends _$SettingEventCopyWithImpl<$Res>
    implements $signOutCopyWith<$Res> {
  _$signOutCopyWithImpl(signOut _value, $Res Function(signOut) _then)
      : super(_value, (v) => _then(v as signOut));

  @override
  signOut get _value => super._value as signOut;
}

/// @nodoc
class _$signOut implements signOut {
  const _$signOut();

  @override
  String toString() {
    return 'SettingEvent.onSignOut()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is signOut);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult onSignOut(),
  }) {
    assert(onSignOut != null);
    return onSignOut();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult onSignOut(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (onSignOut != null) {
      return onSignOut();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult onSignOut(signOut value),
  }) {
    assert(onSignOut != null);
    return onSignOut(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult onSignOut(signOut value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (onSignOut != null) {
      return onSignOut(this);
    }
    return orElse();
  }
}

abstract class signOut implements SettingEvent {
  const factory signOut() = _$signOut;
}

/// @nodoc
class _$SettingStateTearOff {
  const _$SettingStateTearOff();

// ignore: unused_element
  Initial initial() {
    return const Initial();
  }

// ignore: unused_element
  SignOutSuccess onSignOutSuccess() {
    return const SignOutSuccess();
  }

// ignore: unused_element
  SignOutFailure onSignOutFailure(dynamic error) {
    return SignOutFailure(
      error,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $SettingState = _$SettingStateTearOff();

/// @nodoc
mixin _$SettingState {
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initial(),
    @required TResult onSignOutSuccess(),
    @required TResult onSignOutFailure(dynamic error),
  });
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(),
    TResult onSignOutSuccess(),
    TResult onSignOutFailure(dynamic error),
    @required TResult orElse(),
  });
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initial(Initial value),
    @required TResult onSignOutSuccess(SignOutSuccess value),
    @required TResult onSignOutFailure(SignOutFailure value),
  });
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(Initial value),
    TResult onSignOutSuccess(SignOutSuccess value),
    TResult onSignOutFailure(SignOutFailure value),
    @required TResult orElse(),
  });
}

/// @nodoc
abstract class $SettingStateCopyWith<$Res> {
  factory $SettingStateCopyWith(
          SettingState value, $Res Function(SettingState) then) =
      _$SettingStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$SettingStateCopyWithImpl<$Res> implements $SettingStateCopyWith<$Res> {
  _$SettingStateCopyWithImpl(this._value, this._then);

  final SettingState _value;
  // ignore: unused_field
  final $Res Function(SettingState) _then;
}

/// @nodoc
abstract class $InitialCopyWith<$Res> {
  factory $InitialCopyWith(Initial value, $Res Function(Initial) then) =
      _$InitialCopyWithImpl<$Res>;
}

/// @nodoc
class _$InitialCopyWithImpl<$Res> extends _$SettingStateCopyWithImpl<$Res>
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
    return 'SettingState.initial()';
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
    @required TResult onSignOutSuccess(),
    @required TResult onSignOutFailure(dynamic error),
  }) {
    assert(initial != null);
    assert(onSignOutSuccess != null);
    assert(onSignOutFailure != null);
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(),
    TResult onSignOutSuccess(),
    TResult onSignOutFailure(dynamic error),
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
    @required TResult onSignOutSuccess(SignOutSuccess value),
    @required TResult onSignOutFailure(SignOutFailure value),
  }) {
    assert(initial != null);
    assert(onSignOutSuccess != null);
    assert(onSignOutFailure != null);
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(Initial value),
    TResult onSignOutSuccess(SignOutSuccess value),
    TResult onSignOutFailure(SignOutFailure value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class Initial implements SettingState {
  const factory Initial() = _$Initial;
}

/// @nodoc
abstract class $SignOutSuccessCopyWith<$Res> {
  factory $SignOutSuccessCopyWith(
          SignOutSuccess value, $Res Function(SignOutSuccess) then) =
      _$SignOutSuccessCopyWithImpl<$Res>;
}

/// @nodoc
class _$SignOutSuccessCopyWithImpl<$Res>
    extends _$SettingStateCopyWithImpl<$Res>
    implements $SignOutSuccessCopyWith<$Res> {
  _$SignOutSuccessCopyWithImpl(
      SignOutSuccess _value, $Res Function(SignOutSuccess) _then)
      : super(_value, (v) => _then(v as SignOutSuccess));

  @override
  SignOutSuccess get _value => super._value as SignOutSuccess;
}

/// @nodoc
class _$SignOutSuccess implements SignOutSuccess {
  const _$SignOutSuccess();

  @override
  String toString() {
    return 'SettingState.onSignOutSuccess()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is SignOutSuccess);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initial(),
    @required TResult onSignOutSuccess(),
    @required TResult onSignOutFailure(dynamic error),
  }) {
    assert(initial != null);
    assert(onSignOutSuccess != null);
    assert(onSignOutFailure != null);
    return onSignOutSuccess();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(),
    TResult onSignOutSuccess(),
    TResult onSignOutFailure(dynamic error),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (onSignOutSuccess != null) {
      return onSignOutSuccess();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initial(Initial value),
    @required TResult onSignOutSuccess(SignOutSuccess value),
    @required TResult onSignOutFailure(SignOutFailure value),
  }) {
    assert(initial != null);
    assert(onSignOutSuccess != null);
    assert(onSignOutFailure != null);
    return onSignOutSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(Initial value),
    TResult onSignOutSuccess(SignOutSuccess value),
    TResult onSignOutFailure(SignOutFailure value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (onSignOutSuccess != null) {
      return onSignOutSuccess(this);
    }
    return orElse();
  }
}

abstract class SignOutSuccess implements SettingState {
  const factory SignOutSuccess() = _$SignOutSuccess;
}

/// @nodoc
abstract class $SignOutFailureCopyWith<$Res> {
  factory $SignOutFailureCopyWith(
          SignOutFailure value, $Res Function(SignOutFailure) then) =
      _$SignOutFailureCopyWithImpl<$Res>;
  $Res call({dynamic error});
}

/// @nodoc
class _$SignOutFailureCopyWithImpl<$Res>
    extends _$SettingStateCopyWithImpl<$Res>
    implements $SignOutFailureCopyWith<$Res> {
  _$SignOutFailureCopyWithImpl(
      SignOutFailure _value, $Res Function(SignOutFailure) _then)
      : super(_value, (v) => _then(v as SignOutFailure));

  @override
  SignOutFailure get _value => super._value as SignOutFailure;

  @override
  $Res call({
    Object error = freezed,
  }) {
    return _then(SignOutFailure(
      error == freezed ? _value.error : error as dynamic,
    ));
  }
}

/// @nodoc
class _$SignOutFailure implements SignOutFailure {
  const _$SignOutFailure(this.error) : assert(error != null);

  @override
  final dynamic error;

  @override
  String toString() {
    return 'SettingState.onSignOutFailure(error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is SignOutFailure &&
            (identical(other.error, error) ||
                const DeepCollectionEquality().equals(other.error, error)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(error);

  @JsonKey(ignore: true)
  @override
  $SignOutFailureCopyWith<SignOutFailure> get copyWith =>
      _$SignOutFailureCopyWithImpl<SignOutFailure>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initial(),
    @required TResult onSignOutSuccess(),
    @required TResult onSignOutFailure(dynamic error),
  }) {
    assert(initial != null);
    assert(onSignOutSuccess != null);
    assert(onSignOutFailure != null);
    return onSignOutFailure(error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(),
    TResult onSignOutSuccess(),
    TResult onSignOutFailure(dynamic error),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (onSignOutFailure != null) {
      return onSignOutFailure(error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initial(Initial value),
    @required TResult onSignOutSuccess(SignOutSuccess value),
    @required TResult onSignOutFailure(SignOutFailure value),
  }) {
    assert(initial != null);
    assert(onSignOutSuccess != null);
    assert(onSignOutFailure != null);
    return onSignOutFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(Initial value),
    TResult onSignOutSuccess(SignOutSuccess value),
    TResult onSignOutFailure(SignOutFailure value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (onSignOutFailure != null) {
      return onSignOutFailure(this);
    }
    return orElse();
  }
}

abstract class SignOutFailure implements SettingState {
  const factory SignOutFailure(dynamic error) = _$SignOutFailure;

  dynamic get error;
  @JsonKey(ignore: true)
  $SignOutFailureCopyWith<SignOutFailure> get copyWith;
}
