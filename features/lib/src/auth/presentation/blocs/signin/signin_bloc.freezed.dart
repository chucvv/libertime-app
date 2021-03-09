// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'signin_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$SigninEventTearOff {
  const _$SigninEventTearOff();

// ignore: unused_element
  onSigninPhone onSignInPhone(String phoneNumber, String password) {
    return onSigninPhone(
      phoneNumber,
      password,
    );
  }

// ignore: unused_element
  onSigninFacebookEvent onSigninFacebook() {
    return const onSigninFacebookEvent();
  }

// ignore: unused_element
  onSigninGoogleEvent onSigninGoogle() {
    return const onSigninGoogleEvent();
  }
}

/// @nodoc
// ignore: unused_element
const $SigninEvent = _$SigninEventTearOff();

/// @nodoc
mixin _$SigninEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult onSignInPhone(String phoneNumber, String password),
    @required TResult onSigninFacebook(),
    @required TResult onSigninGoogle(),
  });
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult onSignInPhone(String phoneNumber, String password),
    TResult onSigninFacebook(),
    TResult onSigninGoogle(),
    @required TResult orElse(),
  });
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult onSignInPhone(onSigninPhone value),
    @required TResult onSigninFacebook(onSigninFacebookEvent value),
    @required TResult onSigninGoogle(onSigninGoogleEvent value),
  });
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult onSignInPhone(onSigninPhone value),
    TResult onSigninFacebook(onSigninFacebookEvent value),
    TResult onSigninGoogle(onSigninGoogleEvent value),
    @required TResult orElse(),
  });
}

/// @nodoc
abstract class $SigninEventCopyWith<$Res> {
  factory $SigninEventCopyWith(
          SigninEvent value, $Res Function(SigninEvent) then) =
      _$SigninEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$SigninEventCopyWithImpl<$Res> implements $SigninEventCopyWith<$Res> {
  _$SigninEventCopyWithImpl(this._value, this._then);

  final SigninEvent _value;
  // ignore: unused_field
  final $Res Function(SigninEvent) _then;
}

/// @nodoc
abstract class $onSigninPhoneCopyWith<$Res> {
  factory $onSigninPhoneCopyWith(
          onSigninPhone value, $Res Function(onSigninPhone) then) =
      _$onSigninPhoneCopyWithImpl<$Res>;
  $Res call({String phoneNumber, String password});
}

/// @nodoc
class _$onSigninPhoneCopyWithImpl<$Res> extends _$SigninEventCopyWithImpl<$Res>
    implements $onSigninPhoneCopyWith<$Res> {
  _$onSigninPhoneCopyWithImpl(
      onSigninPhone _value, $Res Function(onSigninPhone) _then)
      : super(_value, (v) => _then(v as onSigninPhone));

  @override
  onSigninPhone get _value => super._value as onSigninPhone;

  @override
  $Res call({
    Object phoneNumber = freezed,
    Object password = freezed,
  }) {
    return _then(onSigninPhone(
      phoneNumber == freezed ? _value.phoneNumber : phoneNumber as String,
      password == freezed ? _value.password : password as String,
    ));
  }
}

/// @nodoc
class _$onSigninPhone implements onSigninPhone {
  const _$onSigninPhone(this.phoneNumber, this.password)
      : assert(phoneNumber != null),
        assert(password != null);

  @override
  final String phoneNumber;
  @override
  final String password;

  @override
  String toString() {
    return 'SigninEvent.onSignInPhone(phoneNumber: $phoneNumber, password: $password)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is onSigninPhone &&
            (identical(other.phoneNumber, phoneNumber) ||
                const DeepCollectionEquality()
                    .equals(other.phoneNumber, phoneNumber)) &&
            (identical(other.password, password) ||
                const DeepCollectionEquality()
                    .equals(other.password, password)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(phoneNumber) ^
      const DeepCollectionEquality().hash(password);

  @JsonKey(ignore: true)
  @override
  $onSigninPhoneCopyWith<onSigninPhone> get copyWith =>
      _$onSigninPhoneCopyWithImpl<onSigninPhone>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult onSignInPhone(String phoneNumber, String password),
    @required TResult onSigninFacebook(),
    @required TResult onSigninGoogle(),
  }) {
    assert(onSignInPhone != null);
    assert(onSigninFacebook != null);
    assert(onSigninGoogle != null);
    return onSignInPhone(phoneNumber, password);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult onSignInPhone(String phoneNumber, String password),
    TResult onSigninFacebook(),
    TResult onSigninGoogle(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (onSignInPhone != null) {
      return onSignInPhone(phoneNumber, password);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult onSignInPhone(onSigninPhone value),
    @required TResult onSigninFacebook(onSigninFacebookEvent value),
    @required TResult onSigninGoogle(onSigninGoogleEvent value),
  }) {
    assert(onSignInPhone != null);
    assert(onSigninFacebook != null);
    assert(onSigninGoogle != null);
    return onSignInPhone(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult onSignInPhone(onSigninPhone value),
    TResult onSigninFacebook(onSigninFacebookEvent value),
    TResult onSigninGoogle(onSigninGoogleEvent value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (onSignInPhone != null) {
      return onSignInPhone(this);
    }
    return orElse();
  }
}

abstract class onSigninPhone implements SigninEvent {
  const factory onSigninPhone(String phoneNumber, String password) =
      _$onSigninPhone;

  String get phoneNumber;
  String get password;
  @JsonKey(ignore: true)
  $onSigninPhoneCopyWith<onSigninPhone> get copyWith;
}

/// @nodoc
abstract class $onSigninFacebookEventCopyWith<$Res> {
  factory $onSigninFacebookEventCopyWith(onSigninFacebookEvent value,
          $Res Function(onSigninFacebookEvent) then) =
      _$onSigninFacebookEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$onSigninFacebookEventCopyWithImpl<$Res>
    extends _$SigninEventCopyWithImpl<$Res>
    implements $onSigninFacebookEventCopyWith<$Res> {
  _$onSigninFacebookEventCopyWithImpl(
      onSigninFacebookEvent _value, $Res Function(onSigninFacebookEvent) _then)
      : super(_value, (v) => _then(v as onSigninFacebookEvent));

  @override
  onSigninFacebookEvent get _value => super._value as onSigninFacebookEvent;
}

/// @nodoc
class _$onSigninFacebookEvent implements onSigninFacebookEvent {
  const _$onSigninFacebookEvent();

  @override
  String toString() {
    return 'SigninEvent.onSigninFacebook()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is onSigninFacebookEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult onSignInPhone(String phoneNumber, String password),
    @required TResult onSigninFacebook(),
    @required TResult onSigninGoogle(),
  }) {
    assert(onSignInPhone != null);
    assert(onSigninFacebook != null);
    assert(onSigninGoogle != null);
    return onSigninFacebook();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult onSignInPhone(String phoneNumber, String password),
    TResult onSigninFacebook(),
    TResult onSigninGoogle(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (onSigninFacebook != null) {
      return onSigninFacebook();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult onSignInPhone(onSigninPhone value),
    @required TResult onSigninFacebook(onSigninFacebookEvent value),
    @required TResult onSigninGoogle(onSigninGoogleEvent value),
  }) {
    assert(onSignInPhone != null);
    assert(onSigninFacebook != null);
    assert(onSigninGoogle != null);
    return onSigninFacebook(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult onSignInPhone(onSigninPhone value),
    TResult onSigninFacebook(onSigninFacebookEvent value),
    TResult onSigninGoogle(onSigninGoogleEvent value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (onSigninFacebook != null) {
      return onSigninFacebook(this);
    }
    return orElse();
  }
}

abstract class onSigninFacebookEvent implements SigninEvent {
  const factory onSigninFacebookEvent() = _$onSigninFacebookEvent;
}

/// @nodoc
abstract class $onSigninGoogleEventCopyWith<$Res> {
  factory $onSigninGoogleEventCopyWith(
          onSigninGoogleEvent value, $Res Function(onSigninGoogleEvent) then) =
      _$onSigninGoogleEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$onSigninGoogleEventCopyWithImpl<$Res>
    extends _$SigninEventCopyWithImpl<$Res>
    implements $onSigninGoogleEventCopyWith<$Res> {
  _$onSigninGoogleEventCopyWithImpl(
      onSigninGoogleEvent _value, $Res Function(onSigninGoogleEvent) _then)
      : super(_value, (v) => _then(v as onSigninGoogleEvent));

  @override
  onSigninGoogleEvent get _value => super._value as onSigninGoogleEvent;
}

/// @nodoc
class _$onSigninGoogleEvent implements onSigninGoogleEvent {
  const _$onSigninGoogleEvent();

  @override
  String toString() {
    return 'SigninEvent.onSigninGoogle()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is onSigninGoogleEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult onSignInPhone(String phoneNumber, String password),
    @required TResult onSigninFacebook(),
    @required TResult onSigninGoogle(),
  }) {
    assert(onSignInPhone != null);
    assert(onSigninFacebook != null);
    assert(onSigninGoogle != null);
    return onSigninGoogle();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult onSignInPhone(String phoneNumber, String password),
    TResult onSigninFacebook(),
    TResult onSigninGoogle(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (onSigninGoogle != null) {
      return onSigninGoogle();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult onSignInPhone(onSigninPhone value),
    @required TResult onSigninFacebook(onSigninFacebookEvent value),
    @required TResult onSigninGoogle(onSigninGoogleEvent value),
  }) {
    assert(onSignInPhone != null);
    assert(onSigninFacebook != null);
    assert(onSigninGoogle != null);
    return onSigninGoogle(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult onSignInPhone(onSigninPhone value),
    TResult onSigninFacebook(onSigninFacebookEvent value),
    TResult onSigninGoogle(onSigninGoogleEvent value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (onSigninGoogle != null) {
      return onSigninGoogle(this);
    }
    return orElse();
  }
}

abstract class onSigninGoogleEvent implements SigninEvent {
  const factory onSigninGoogleEvent() = _$onSigninGoogleEvent;
}

/// @nodoc
class _$SigninStateTearOff {
  const _$SigninStateTearOff();

// ignore: unused_element
  _Initial initial() {
    return const _Initial();
  }

// ignore: unused_element
  Loading loadingSignin() {
    return const Loading();
  }

// ignore: unused_element
  FacebookSiginSuccess facebookSiginSuccess() {
    return const FacebookSiginSuccess();
  }

// ignore: unused_element
  FacebookSigninFailure facebookSiginFailure(String message) {
    return FacebookSigninFailure(
      message,
    );
  }

// ignore: unused_element
  GoogleSiginSuccess googleSiginSuccess() {
    return const GoogleSiginSuccess();
  }

// ignore: unused_element
  GoogleSigninFailure gooogleSiginFailure(String message) {
    return GoogleSigninFailure(
      message,
    );
  }

// ignore: unused_element
  PhoneSigninSuccess phoneSigninSuccess() {
    return const PhoneSigninSuccess();
  }

// ignore: unused_element
  PhoneSigninFailure phoneSigninFailure(String message) {
    return PhoneSigninFailure(
      message,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $SigninState = _$SigninStateTearOff();

/// @nodoc
mixin _$SigninState {
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initial(),
    @required TResult loadingSignin(),
    @required TResult facebookSiginSuccess(),
    @required TResult facebookSiginFailure(String message),
    @required TResult googleSiginSuccess(),
    @required TResult gooogleSiginFailure(String message),
    @required TResult phoneSigninSuccess(),
    @required TResult phoneSigninFailure(String message),
  });
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(),
    TResult loadingSignin(),
    TResult facebookSiginSuccess(),
    TResult facebookSiginFailure(String message),
    TResult googleSiginSuccess(),
    TResult gooogleSiginFailure(String message),
    TResult phoneSigninSuccess(),
    TResult phoneSigninFailure(String message),
    @required TResult orElse(),
  });
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initial(_Initial value),
    @required TResult loadingSignin(Loading value),
    @required TResult facebookSiginSuccess(FacebookSiginSuccess value),
    @required TResult facebookSiginFailure(FacebookSigninFailure value),
    @required TResult googleSiginSuccess(GoogleSiginSuccess value),
    @required TResult gooogleSiginFailure(GoogleSigninFailure value),
    @required TResult phoneSigninSuccess(PhoneSigninSuccess value),
    @required TResult phoneSigninFailure(PhoneSigninFailure value),
  });
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(_Initial value),
    TResult loadingSignin(Loading value),
    TResult facebookSiginSuccess(FacebookSiginSuccess value),
    TResult facebookSiginFailure(FacebookSigninFailure value),
    TResult googleSiginSuccess(GoogleSiginSuccess value),
    TResult gooogleSiginFailure(GoogleSigninFailure value),
    TResult phoneSigninSuccess(PhoneSigninSuccess value),
    TResult phoneSigninFailure(PhoneSigninFailure value),
    @required TResult orElse(),
  });
}

/// @nodoc
abstract class $SigninStateCopyWith<$Res> {
  factory $SigninStateCopyWith(
          SigninState value, $Res Function(SigninState) then) =
      _$SigninStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$SigninStateCopyWithImpl<$Res> implements $SigninStateCopyWith<$Res> {
  _$SigninStateCopyWithImpl(this._value, this._then);

  final SigninState _value;
  // ignore: unused_field
  final $Res Function(SigninState) _then;
}

/// @nodoc
abstract class _$InitialCopyWith<$Res> {
  factory _$InitialCopyWith(_Initial value, $Res Function(_Initial) then) =
      __$InitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$InitialCopyWithImpl<$Res> extends _$SigninStateCopyWithImpl<$Res>
    implements _$InitialCopyWith<$Res> {
  __$InitialCopyWithImpl(_Initial _value, $Res Function(_Initial) _then)
      : super(_value, (v) => _then(v as _Initial));

  @override
  _Initial get _value => super._value as _Initial;
}

/// @nodoc
class _$_Initial implements _Initial {
  const _$_Initial();

  @override
  String toString() {
    return 'SigninState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _Initial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initial(),
    @required TResult loadingSignin(),
    @required TResult facebookSiginSuccess(),
    @required TResult facebookSiginFailure(String message),
    @required TResult googleSiginSuccess(),
    @required TResult gooogleSiginFailure(String message),
    @required TResult phoneSigninSuccess(),
    @required TResult phoneSigninFailure(String message),
  }) {
    assert(initial != null);
    assert(loadingSignin != null);
    assert(facebookSiginSuccess != null);
    assert(facebookSiginFailure != null);
    assert(googleSiginSuccess != null);
    assert(gooogleSiginFailure != null);
    assert(phoneSigninSuccess != null);
    assert(phoneSigninFailure != null);
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(),
    TResult loadingSignin(),
    TResult facebookSiginSuccess(),
    TResult facebookSiginFailure(String message),
    TResult googleSiginSuccess(),
    TResult gooogleSiginFailure(String message),
    TResult phoneSigninSuccess(),
    TResult phoneSigninFailure(String message),
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
    @required TResult initial(_Initial value),
    @required TResult loadingSignin(Loading value),
    @required TResult facebookSiginSuccess(FacebookSiginSuccess value),
    @required TResult facebookSiginFailure(FacebookSigninFailure value),
    @required TResult googleSiginSuccess(GoogleSiginSuccess value),
    @required TResult gooogleSiginFailure(GoogleSigninFailure value),
    @required TResult phoneSigninSuccess(PhoneSigninSuccess value),
    @required TResult phoneSigninFailure(PhoneSigninFailure value),
  }) {
    assert(initial != null);
    assert(loadingSignin != null);
    assert(facebookSiginSuccess != null);
    assert(facebookSiginFailure != null);
    assert(googleSiginSuccess != null);
    assert(gooogleSiginFailure != null);
    assert(phoneSigninSuccess != null);
    assert(phoneSigninFailure != null);
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(_Initial value),
    TResult loadingSignin(Loading value),
    TResult facebookSiginSuccess(FacebookSiginSuccess value),
    TResult facebookSiginFailure(FacebookSigninFailure value),
    TResult googleSiginSuccess(GoogleSiginSuccess value),
    TResult gooogleSiginFailure(GoogleSigninFailure value),
    TResult phoneSigninSuccess(PhoneSigninSuccess value),
    TResult phoneSigninFailure(PhoneSigninFailure value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements SigninState {
  const factory _Initial() = _$_Initial;
}

/// @nodoc
abstract class $LoadingCopyWith<$Res> {
  factory $LoadingCopyWith(Loading value, $Res Function(Loading) then) =
      _$LoadingCopyWithImpl<$Res>;
}

/// @nodoc
class _$LoadingCopyWithImpl<$Res> extends _$SigninStateCopyWithImpl<$Res>
    implements $LoadingCopyWith<$Res> {
  _$LoadingCopyWithImpl(Loading _value, $Res Function(Loading) _then)
      : super(_value, (v) => _then(v as Loading));

  @override
  Loading get _value => super._value as Loading;
}

/// @nodoc
class _$Loading implements Loading {
  const _$Loading();

  @override
  String toString() {
    return 'SigninState.loadingSignin()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is Loading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initial(),
    @required TResult loadingSignin(),
    @required TResult facebookSiginSuccess(),
    @required TResult facebookSiginFailure(String message),
    @required TResult googleSiginSuccess(),
    @required TResult gooogleSiginFailure(String message),
    @required TResult phoneSigninSuccess(),
    @required TResult phoneSigninFailure(String message),
  }) {
    assert(initial != null);
    assert(loadingSignin != null);
    assert(facebookSiginSuccess != null);
    assert(facebookSiginFailure != null);
    assert(googleSiginSuccess != null);
    assert(gooogleSiginFailure != null);
    assert(phoneSigninSuccess != null);
    assert(phoneSigninFailure != null);
    return loadingSignin();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(),
    TResult loadingSignin(),
    TResult facebookSiginSuccess(),
    TResult facebookSiginFailure(String message),
    TResult googleSiginSuccess(),
    TResult gooogleSiginFailure(String message),
    TResult phoneSigninSuccess(),
    TResult phoneSigninFailure(String message),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (loadingSignin != null) {
      return loadingSignin();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initial(_Initial value),
    @required TResult loadingSignin(Loading value),
    @required TResult facebookSiginSuccess(FacebookSiginSuccess value),
    @required TResult facebookSiginFailure(FacebookSigninFailure value),
    @required TResult googleSiginSuccess(GoogleSiginSuccess value),
    @required TResult gooogleSiginFailure(GoogleSigninFailure value),
    @required TResult phoneSigninSuccess(PhoneSigninSuccess value),
    @required TResult phoneSigninFailure(PhoneSigninFailure value),
  }) {
    assert(initial != null);
    assert(loadingSignin != null);
    assert(facebookSiginSuccess != null);
    assert(facebookSiginFailure != null);
    assert(googleSiginSuccess != null);
    assert(gooogleSiginFailure != null);
    assert(phoneSigninSuccess != null);
    assert(phoneSigninFailure != null);
    return loadingSignin(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(_Initial value),
    TResult loadingSignin(Loading value),
    TResult facebookSiginSuccess(FacebookSiginSuccess value),
    TResult facebookSiginFailure(FacebookSigninFailure value),
    TResult googleSiginSuccess(GoogleSiginSuccess value),
    TResult gooogleSiginFailure(GoogleSigninFailure value),
    TResult phoneSigninSuccess(PhoneSigninSuccess value),
    TResult phoneSigninFailure(PhoneSigninFailure value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (loadingSignin != null) {
      return loadingSignin(this);
    }
    return orElse();
  }
}

abstract class Loading implements SigninState {
  const factory Loading() = _$Loading;
}

/// @nodoc
abstract class $FacebookSiginSuccessCopyWith<$Res> {
  factory $FacebookSiginSuccessCopyWith(FacebookSiginSuccess value,
          $Res Function(FacebookSiginSuccess) then) =
      _$FacebookSiginSuccessCopyWithImpl<$Res>;
}

/// @nodoc
class _$FacebookSiginSuccessCopyWithImpl<$Res>
    extends _$SigninStateCopyWithImpl<$Res>
    implements $FacebookSiginSuccessCopyWith<$Res> {
  _$FacebookSiginSuccessCopyWithImpl(
      FacebookSiginSuccess _value, $Res Function(FacebookSiginSuccess) _then)
      : super(_value, (v) => _then(v as FacebookSiginSuccess));

  @override
  FacebookSiginSuccess get _value => super._value as FacebookSiginSuccess;
}

/// @nodoc
class _$FacebookSiginSuccess implements FacebookSiginSuccess {
  const _$FacebookSiginSuccess();

  @override
  String toString() {
    return 'SigninState.facebookSiginSuccess()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is FacebookSiginSuccess);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initial(),
    @required TResult loadingSignin(),
    @required TResult facebookSiginSuccess(),
    @required TResult facebookSiginFailure(String message),
    @required TResult googleSiginSuccess(),
    @required TResult gooogleSiginFailure(String message),
    @required TResult phoneSigninSuccess(),
    @required TResult phoneSigninFailure(String message),
  }) {
    assert(initial != null);
    assert(loadingSignin != null);
    assert(facebookSiginSuccess != null);
    assert(facebookSiginFailure != null);
    assert(googleSiginSuccess != null);
    assert(gooogleSiginFailure != null);
    assert(phoneSigninSuccess != null);
    assert(phoneSigninFailure != null);
    return facebookSiginSuccess();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(),
    TResult loadingSignin(),
    TResult facebookSiginSuccess(),
    TResult facebookSiginFailure(String message),
    TResult googleSiginSuccess(),
    TResult gooogleSiginFailure(String message),
    TResult phoneSigninSuccess(),
    TResult phoneSigninFailure(String message),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (facebookSiginSuccess != null) {
      return facebookSiginSuccess();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initial(_Initial value),
    @required TResult loadingSignin(Loading value),
    @required TResult facebookSiginSuccess(FacebookSiginSuccess value),
    @required TResult facebookSiginFailure(FacebookSigninFailure value),
    @required TResult googleSiginSuccess(GoogleSiginSuccess value),
    @required TResult gooogleSiginFailure(GoogleSigninFailure value),
    @required TResult phoneSigninSuccess(PhoneSigninSuccess value),
    @required TResult phoneSigninFailure(PhoneSigninFailure value),
  }) {
    assert(initial != null);
    assert(loadingSignin != null);
    assert(facebookSiginSuccess != null);
    assert(facebookSiginFailure != null);
    assert(googleSiginSuccess != null);
    assert(gooogleSiginFailure != null);
    assert(phoneSigninSuccess != null);
    assert(phoneSigninFailure != null);
    return facebookSiginSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(_Initial value),
    TResult loadingSignin(Loading value),
    TResult facebookSiginSuccess(FacebookSiginSuccess value),
    TResult facebookSiginFailure(FacebookSigninFailure value),
    TResult googleSiginSuccess(GoogleSiginSuccess value),
    TResult gooogleSiginFailure(GoogleSigninFailure value),
    TResult phoneSigninSuccess(PhoneSigninSuccess value),
    TResult phoneSigninFailure(PhoneSigninFailure value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (facebookSiginSuccess != null) {
      return facebookSiginSuccess(this);
    }
    return orElse();
  }
}

abstract class FacebookSiginSuccess implements SigninState {
  const factory FacebookSiginSuccess() = _$FacebookSiginSuccess;
}

/// @nodoc
abstract class $FacebookSigninFailureCopyWith<$Res> {
  factory $FacebookSigninFailureCopyWith(FacebookSigninFailure value,
          $Res Function(FacebookSigninFailure) then) =
      _$FacebookSigninFailureCopyWithImpl<$Res>;
  $Res call({String message});
}

/// @nodoc
class _$FacebookSigninFailureCopyWithImpl<$Res>
    extends _$SigninStateCopyWithImpl<$Res>
    implements $FacebookSigninFailureCopyWith<$Res> {
  _$FacebookSigninFailureCopyWithImpl(
      FacebookSigninFailure _value, $Res Function(FacebookSigninFailure) _then)
      : super(_value, (v) => _then(v as FacebookSigninFailure));

  @override
  FacebookSigninFailure get _value => super._value as FacebookSigninFailure;

  @override
  $Res call({
    Object message = freezed,
  }) {
    return _then(FacebookSigninFailure(
      message == freezed ? _value.message : message as String,
    ));
  }
}

/// @nodoc
class _$FacebookSigninFailure implements FacebookSigninFailure {
  const _$FacebookSigninFailure(this.message) : assert(message != null);

  @override
  final String message;

  @override
  String toString() {
    return 'SigninState.facebookSiginFailure(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is FacebookSigninFailure &&
            (identical(other.message, message) ||
                const DeepCollectionEquality().equals(other.message, message)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(message);

  @JsonKey(ignore: true)
  @override
  $FacebookSigninFailureCopyWith<FacebookSigninFailure> get copyWith =>
      _$FacebookSigninFailureCopyWithImpl<FacebookSigninFailure>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initial(),
    @required TResult loadingSignin(),
    @required TResult facebookSiginSuccess(),
    @required TResult facebookSiginFailure(String message),
    @required TResult googleSiginSuccess(),
    @required TResult gooogleSiginFailure(String message),
    @required TResult phoneSigninSuccess(),
    @required TResult phoneSigninFailure(String message),
  }) {
    assert(initial != null);
    assert(loadingSignin != null);
    assert(facebookSiginSuccess != null);
    assert(facebookSiginFailure != null);
    assert(googleSiginSuccess != null);
    assert(gooogleSiginFailure != null);
    assert(phoneSigninSuccess != null);
    assert(phoneSigninFailure != null);
    return facebookSiginFailure(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(),
    TResult loadingSignin(),
    TResult facebookSiginSuccess(),
    TResult facebookSiginFailure(String message),
    TResult googleSiginSuccess(),
    TResult gooogleSiginFailure(String message),
    TResult phoneSigninSuccess(),
    TResult phoneSigninFailure(String message),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (facebookSiginFailure != null) {
      return facebookSiginFailure(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initial(_Initial value),
    @required TResult loadingSignin(Loading value),
    @required TResult facebookSiginSuccess(FacebookSiginSuccess value),
    @required TResult facebookSiginFailure(FacebookSigninFailure value),
    @required TResult googleSiginSuccess(GoogleSiginSuccess value),
    @required TResult gooogleSiginFailure(GoogleSigninFailure value),
    @required TResult phoneSigninSuccess(PhoneSigninSuccess value),
    @required TResult phoneSigninFailure(PhoneSigninFailure value),
  }) {
    assert(initial != null);
    assert(loadingSignin != null);
    assert(facebookSiginSuccess != null);
    assert(facebookSiginFailure != null);
    assert(googleSiginSuccess != null);
    assert(gooogleSiginFailure != null);
    assert(phoneSigninSuccess != null);
    assert(phoneSigninFailure != null);
    return facebookSiginFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(_Initial value),
    TResult loadingSignin(Loading value),
    TResult facebookSiginSuccess(FacebookSiginSuccess value),
    TResult facebookSiginFailure(FacebookSigninFailure value),
    TResult googleSiginSuccess(GoogleSiginSuccess value),
    TResult gooogleSiginFailure(GoogleSigninFailure value),
    TResult phoneSigninSuccess(PhoneSigninSuccess value),
    TResult phoneSigninFailure(PhoneSigninFailure value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (facebookSiginFailure != null) {
      return facebookSiginFailure(this);
    }
    return orElse();
  }
}

abstract class FacebookSigninFailure implements SigninState {
  const factory FacebookSigninFailure(String message) = _$FacebookSigninFailure;

  String get message;
  @JsonKey(ignore: true)
  $FacebookSigninFailureCopyWith<FacebookSigninFailure> get copyWith;
}

/// @nodoc
abstract class $GoogleSiginSuccessCopyWith<$Res> {
  factory $GoogleSiginSuccessCopyWith(
          GoogleSiginSuccess value, $Res Function(GoogleSiginSuccess) then) =
      _$GoogleSiginSuccessCopyWithImpl<$Res>;
}

/// @nodoc
class _$GoogleSiginSuccessCopyWithImpl<$Res>
    extends _$SigninStateCopyWithImpl<$Res>
    implements $GoogleSiginSuccessCopyWith<$Res> {
  _$GoogleSiginSuccessCopyWithImpl(
      GoogleSiginSuccess _value, $Res Function(GoogleSiginSuccess) _then)
      : super(_value, (v) => _then(v as GoogleSiginSuccess));

  @override
  GoogleSiginSuccess get _value => super._value as GoogleSiginSuccess;
}

/// @nodoc
class _$GoogleSiginSuccess implements GoogleSiginSuccess {
  const _$GoogleSiginSuccess();

  @override
  String toString() {
    return 'SigninState.googleSiginSuccess()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is GoogleSiginSuccess);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initial(),
    @required TResult loadingSignin(),
    @required TResult facebookSiginSuccess(),
    @required TResult facebookSiginFailure(String message),
    @required TResult googleSiginSuccess(),
    @required TResult gooogleSiginFailure(String message),
    @required TResult phoneSigninSuccess(),
    @required TResult phoneSigninFailure(String message),
  }) {
    assert(initial != null);
    assert(loadingSignin != null);
    assert(facebookSiginSuccess != null);
    assert(facebookSiginFailure != null);
    assert(googleSiginSuccess != null);
    assert(gooogleSiginFailure != null);
    assert(phoneSigninSuccess != null);
    assert(phoneSigninFailure != null);
    return googleSiginSuccess();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(),
    TResult loadingSignin(),
    TResult facebookSiginSuccess(),
    TResult facebookSiginFailure(String message),
    TResult googleSiginSuccess(),
    TResult gooogleSiginFailure(String message),
    TResult phoneSigninSuccess(),
    TResult phoneSigninFailure(String message),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (googleSiginSuccess != null) {
      return googleSiginSuccess();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initial(_Initial value),
    @required TResult loadingSignin(Loading value),
    @required TResult facebookSiginSuccess(FacebookSiginSuccess value),
    @required TResult facebookSiginFailure(FacebookSigninFailure value),
    @required TResult googleSiginSuccess(GoogleSiginSuccess value),
    @required TResult gooogleSiginFailure(GoogleSigninFailure value),
    @required TResult phoneSigninSuccess(PhoneSigninSuccess value),
    @required TResult phoneSigninFailure(PhoneSigninFailure value),
  }) {
    assert(initial != null);
    assert(loadingSignin != null);
    assert(facebookSiginSuccess != null);
    assert(facebookSiginFailure != null);
    assert(googleSiginSuccess != null);
    assert(gooogleSiginFailure != null);
    assert(phoneSigninSuccess != null);
    assert(phoneSigninFailure != null);
    return googleSiginSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(_Initial value),
    TResult loadingSignin(Loading value),
    TResult facebookSiginSuccess(FacebookSiginSuccess value),
    TResult facebookSiginFailure(FacebookSigninFailure value),
    TResult googleSiginSuccess(GoogleSiginSuccess value),
    TResult gooogleSiginFailure(GoogleSigninFailure value),
    TResult phoneSigninSuccess(PhoneSigninSuccess value),
    TResult phoneSigninFailure(PhoneSigninFailure value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (googleSiginSuccess != null) {
      return googleSiginSuccess(this);
    }
    return orElse();
  }
}

abstract class GoogleSiginSuccess implements SigninState {
  const factory GoogleSiginSuccess() = _$GoogleSiginSuccess;
}

/// @nodoc
abstract class $GoogleSigninFailureCopyWith<$Res> {
  factory $GoogleSigninFailureCopyWith(
          GoogleSigninFailure value, $Res Function(GoogleSigninFailure) then) =
      _$GoogleSigninFailureCopyWithImpl<$Res>;
  $Res call({String message});
}

/// @nodoc
class _$GoogleSigninFailureCopyWithImpl<$Res>
    extends _$SigninStateCopyWithImpl<$Res>
    implements $GoogleSigninFailureCopyWith<$Res> {
  _$GoogleSigninFailureCopyWithImpl(
      GoogleSigninFailure _value, $Res Function(GoogleSigninFailure) _then)
      : super(_value, (v) => _then(v as GoogleSigninFailure));

  @override
  GoogleSigninFailure get _value => super._value as GoogleSigninFailure;

  @override
  $Res call({
    Object message = freezed,
  }) {
    return _then(GoogleSigninFailure(
      message == freezed ? _value.message : message as String,
    ));
  }
}

/// @nodoc
class _$GoogleSigninFailure implements GoogleSigninFailure {
  const _$GoogleSigninFailure(this.message) : assert(message != null);

  @override
  final String message;

  @override
  String toString() {
    return 'SigninState.gooogleSiginFailure(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is GoogleSigninFailure &&
            (identical(other.message, message) ||
                const DeepCollectionEquality().equals(other.message, message)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(message);

  @JsonKey(ignore: true)
  @override
  $GoogleSigninFailureCopyWith<GoogleSigninFailure> get copyWith =>
      _$GoogleSigninFailureCopyWithImpl<GoogleSigninFailure>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initial(),
    @required TResult loadingSignin(),
    @required TResult facebookSiginSuccess(),
    @required TResult facebookSiginFailure(String message),
    @required TResult googleSiginSuccess(),
    @required TResult gooogleSiginFailure(String message),
    @required TResult phoneSigninSuccess(),
    @required TResult phoneSigninFailure(String message),
  }) {
    assert(initial != null);
    assert(loadingSignin != null);
    assert(facebookSiginSuccess != null);
    assert(facebookSiginFailure != null);
    assert(googleSiginSuccess != null);
    assert(gooogleSiginFailure != null);
    assert(phoneSigninSuccess != null);
    assert(phoneSigninFailure != null);
    return gooogleSiginFailure(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(),
    TResult loadingSignin(),
    TResult facebookSiginSuccess(),
    TResult facebookSiginFailure(String message),
    TResult googleSiginSuccess(),
    TResult gooogleSiginFailure(String message),
    TResult phoneSigninSuccess(),
    TResult phoneSigninFailure(String message),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (gooogleSiginFailure != null) {
      return gooogleSiginFailure(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initial(_Initial value),
    @required TResult loadingSignin(Loading value),
    @required TResult facebookSiginSuccess(FacebookSiginSuccess value),
    @required TResult facebookSiginFailure(FacebookSigninFailure value),
    @required TResult googleSiginSuccess(GoogleSiginSuccess value),
    @required TResult gooogleSiginFailure(GoogleSigninFailure value),
    @required TResult phoneSigninSuccess(PhoneSigninSuccess value),
    @required TResult phoneSigninFailure(PhoneSigninFailure value),
  }) {
    assert(initial != null);
    assert(loadingSignin != null);
    assert(facebookSiginSuccess != null);
    assert(facebookSiginFailure != null);
    assert(googleSiginSuccess != null);
    assert(gooogleSiginFailure != null);
    assert(phoneSigninSuccess != null);
    assert(phoneSigninFailure != null);
    return gooogleSiginFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(_Initial value),
    TResult loadingSignin(Loading value),
    TResult facebookSiginSuccess(FacebookSiginSuccess value),
    TResult facebookSiginFailure(FacebookSigninFailure value),
    TResult googleSiginSuccess(GoogleSiginSuccess value),
    TResult gooogleSiginFailure(GoogleSigninFailure value),
    TResult phoneSigninSuccess(PhoneSigninSuccess value),
    TResult phoneSigninFailure(PhoneSigninFailure value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (gooogleSiginFailure != null) {
      return gooogleSiginFailure(this);
    }
    return orElse();
  }
}

abstract class GoogleSigninFailure implements SigninState {
  const factory GoogleSigninFailure(String message) = _$GoogleSigninFailure;

  String get message;
  @JsonKey(ignore: true)
  $GoogleSigninFailureCopyWith<GoogleSigninFailure> get copyWith;
}

/// @nodoc
abstract class $PhoneSigninSuccessCopyWith<$Res> {
  factory $PhoneSigninSuccessCopyWith(
          PhoneSigninSuccess value, $Res Function(PhoneSigninSuccess) then) =
      _$PhoneSigninSuccessCopyWithImpl<$Res>;
}

/// @nodoc
class _$PhoneSigninSuccessCopyWithImpl<$Res>
    extends _$SigninStateCopyWithImpl<$Res>
    implements $PhoneSigninSuccessCopyWith<$Res> {
  _$PhoneSigninSuccessCopyWithImpl(
      PhoneSigninSuccess _value, $Res Function(PhoneSigninSuccess) _then)
      : super(_value, (v) => _then(v as PhoneSigninSuccess));

  @override
  PhoneSigninSuccess get _value => super._value as PhoneSigninSuccess;
}

/// @nodoc
class _$PhoneSigninSuccess implements PhoneSigninSuccess {
  const _$PhoneSigninSuccess();

  @override
  String toString() {
    return 'SigninState.phoneSigninSuccess()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is PhoneSigninSuccess);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initial(),
    @required TResult loadingSignin(),
    @required TResult facebookSiginSuccess(),
    @required TResult facebookSiginFailure(String message),
    @required TResult googleSiginSuccess(),
    @required TResult gooogleSiginFailure(String message),
    @required TResult phoneSigninSuccess(),
    @required TResult phoneSigninFailure(String message),
  }) {
    assert(initial != null);
    assert(loadingSignin != null);
    assert(facebookSiginSuccess != null);
    assert(facebookSiginFailure != null);
    assert(googleSiginSuccess != null);
    assert(gooogleSiginFailure != null);
    assert(phoneSigninSuccess != null);
    assert(phoneSigninFailure != null);
    return phoneSigninSuccess();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(),
    TResult loadingSignin(),
    TResult facebookSiginSuccess(),
    TResult facebookSiginFailure(String message),
    TResult googleSiginSuccess(),
    TResult gooogleSiginFailure(String message),
    TResult phoneSigninSuccess(),
    TResult phoneSigninFailure(String message),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (phoneSigninSuccess != null) {
      return phoneSigninSuccess();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initial(_Initial value),
    @required TResult loadingSignin(Loading value),
    @required TResult facebookSiginSuccess(FacebookSiginSuccess value),
    @required TResult facebookSiginFailure(FacebookSigninFailure value),
    @required TResult googleSiginSuccess(GoogleSiginSuccess value),
    @required TResult gooogleSiginFailure(GoogleSigninFailure value),
    @required TResult phoneSigninSuccess(PhoneSigninSuccess value),
    @required TResult phoneSigninFailure(PhoneSigninFailure value),
  }) {
    assert(initial != null);
    assert(loadingSignin != null);
    assert(facebookSiginSuccess != null);
    assert(facebookSiginFailure != null);
    assert(googleSiginSuccess != null);
    assert(gooogleSiginFailure != null);
    assert(phoneSigninSuccess != null);
    assert(phoneSigninFailure != null);
    return phoneSigninSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(_Initial value),
    TResult loadingSignin(Loading value),
    TResult facebookSiginSuccess(FacebookSiginSuccess value),
    TResult facebookSiginFailure(FacebookSigninFailure value),
    TResult googleSiginSuccess(GoogleSiginSuccess value),
    TResult gooogleSiginFailure(GoogleSigninFailure value),
    TResult phoneSigninSuccess(PhoneSigninSuccess value),
    TResult phoneSigninFailure(PhoneSigninFailure value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (phoneSigninSuccess != null) {
      return phoneSigninSuccess(this);
    }
    return orElse();
  }
}

abstract class PhoneSigninSuccess implements SigninState {
  const factory PhoneSigninSuccess() = _$PhoneSigninSuccess;
}

/// @nodoc
abstract class $PhoneSigninFailureCopyWith<$Res> {
  factory $PhoneSigninFailureCopyWith(
          PhoneSigninFailure value, $Res Function(PhoneSigninFailure) then) =
      _$PhoneSigninFailureCopyWithImpl<$Res>;
  $Res call({String message});
}

/// @nodoc
class _$PhoneSigninFailureCopyWithImpl<$Res>
    extends _$SigninStateCopyWithImpl<$Res>
    implements $PhoneSigninFailureCopyWith<$Res> {
  _$PhoneSigninFailureCopyWithImpl(
      PhoneSigninFailure _value, $Res Function(PhoneSigninFailure) _then)
      : super(_value, (v) => _then(v as PhoneSigninFailure));

  @override
  PhoneSigninFailure get _value => super._value as PhoneSigninFailure;

  @override
  $Res call({
    Object message = freezed,
  }) {
    return _then(PhoneSigninFailure(
      message == freezed ? _value.message : message as String,
    ));
  }
}

/// @nodoc
class _$PhoneSigninFailure implements PhoneSigninFailure {
  const _$PhoneSigninFailure(this.message) : assert(message != null);

  @override
  final String message;

  @override
  String toString() {
    return 'SigninState.phoneSigninFailure(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is PhoneSigninFailure &&
            (identical(other.message, message) ||
                const DeepCollectionEquality().equals(other.message, message)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(message);

  @JsonKey(ignore: true)
  @override
  $PhoneSigninFailureCopyWith<PhoneSigninFailure> get copyWith =>
      _$PhoneSigninFailureCopyWithImpl<PhoneSigninFailure>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initial(),
    @required TResult loadingSignin(),
    @required TResult facebookSiginSuccess(),
    @required TResult facebookSiginFailure(String message),
    @required TResult googleSiginSuccess(),
    @required TResult gooogleSiginFailure(String message),
    @required TResult phoneSigninSuccess(),
    @required TResult phoneSigninFailure(String message),
  }) {
    assert(initial != null);
    assert(loadingSignin != null);
    assert(facebookSiginSuccess != null);
    assert(facebookSiginFailure != null);
    assert(googleSiginSuccess != null);
    assert(gooogleSiginFailure != null);
    assert(phoneSigninSuccess != null);
    assert(phoneSigninFailure != null);
    return phoneSigninFailure(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(),
    TResult loadingSignin(),
    TResult facebookSiginSuccess(),
    TResult facebookSiginFailure(String message),
    TResult googleSiginSuccess(),
    TResult gooogleSiginFailure(String message),
    TResult phoneSigninSuccess(),
    TResult phoneSigninFailure(String message),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (phoneSigninFailure != null) {
      return phoneSigninFailure(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initial(_Initial value),
    @required TResult loadingSignin(Loading value),
    @required TResult facebookSiginSuccess(FacebookSiginSuccess value),
    @required TResult facebookSiginFailure(FacebookSigninFailure value),
    @required TResult googleSiginSuccess(GoogleSiginSuccess value),
    @required TResult gooogleSiginFailure(GoogleSigninFailure value),
    @required TResult phoneSigninSuccess(PhoneSigninSuccess value),
    @required TResult phoneSigninFailure(PhoneSigninFailure value),
  }) {
    assert(initial != null);
    assert(loadingSignin != null);
    assert(facebookSiginSuccess != null);
    assert(facebookSiginFailure != null);
    assert(googleSiginSuccess != null);
    assert(gooogleSiginFailure != null);
    assert(phoneSigninSuccess != null);
    assert(phoneSigninFailure != null);
    return phoneSigninFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(_Initial value),
    TResult loadingSignin(Loading value),
    TResult facebookSiginSuccess(FacebookSiginSuccess value),
    TResult facebookSiginFailure(FacebookSigninFailure value),
    TResult googleSiginSuccess(GoogleSiginSuccess value),
    TResult gooogleSiginFailure(GoogleSigninFailure value),
    TResult phoneSigninSuccess(PhoneSigninSuccess value),
    TResult phoneSigninFailure(PhoneSigninFailure value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (phoneSigninFailure != null) {
      return phoneSigninFailure(this);
    }
    return orElse();
  }
}

abstract class PhoneSigninFailure implements SigninState {
  const factory PhoneSigninFailure(String message) = _$PhoneSigninFailure;

  String get message;
  @JsonKey(ignore: true)
  $PhoneSigninFailureCopyWith<PhoneSigninFailure> get copyWith;
}
