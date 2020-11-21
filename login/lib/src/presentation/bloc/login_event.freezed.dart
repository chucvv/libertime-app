// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named

part of 'login_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$LoginEventTearOff {
  const _$LoginEventTearOff();

  onEmailEvent setEmail(String email) {
    return onEmailEvent(
      email,
    );
  }

  onPasswordEvent setPassword(String password) {
    return onPasswordEvent(
      password,
    );
  }

  onLoginEvent login(String userName, String password) {
    return onLoginEvent(
      userName,
      password,
    );
  }
}

// ignore: unused_element
const $LoginEvent = _$LoginEventTearOff();

mixin _$LoginEvent {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result setEmail(String email),
    @required Result setPassword(String password),
    @required Result login(String userName, String password),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result setEmail(String email),
    Result setPassword(String password),
    Result login(String userName, String password),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result setEmail(onEmailEvent value),
    @required Result setPassword(onPasswordEvent value),
    @required Result login(onLoginEvent value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result setEmail(onEmailEvent value),
    Result setPassword(onPasswordEvent value),
    Result login(onLoginEvent value),
    @required Result orElse(),
  });
}

abstract class $LoginEventCopyWith<$Res> {
  factory $LoginEventCopyWith(
          LoginEvent value, $Res Function(LoginEvent) then) =
      _$LoginEventCopyWithImpl<$Res>;
}

class _$LoginEventCopyWithImpl<$Res> implements $LoginEventCopyWith<$Res> {
  _$LoginEventCopyWithImpl(this._value, this._then);

  final LoginEvent _value;
  // ignore: unused_field
  final $Res Function(LoginEvent) _then;
}

abstract class $onEmailEventCopyWith<$Res> {
  factory $onEmailEventCopyWith(
          onEmailEvent value, $Res Function(onEmailEvent) then) =
      _$onEmailEventCopyWithImpl<$Res>;
  $Res call({String email});
}

class _$onEmailEventCopyWithImpl<$Res> extends _$LoginEventCopyWithImpl<$Res>
    implements $onEmailEventCopyWith<$Res> {
  _$onEmailEventCopyWithImpl(
      onEmailEvent _value, $Res Function(onEmailEvent) _then)
      : super(_value, (v) => _then(v as onEmailEvent));

  @override
  onEmailEvent get _value => super._value as onEmailEvent;

  @override
  $Res call({
    Object email = freezed,
  }) {
    return _then(onEmailEvent(
      email == freezed ? _value.email : email as String,
    ));
  }
}

class _$onEmailEvent with DiagnosticableTreeMixin implements onEmailEvent {
  const _$onEmailEvent(this.email) : assert(email != null);

  @override
  final String email;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'LoginEvent.setEmail(email: $email)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'LoginEvent.setEmail'))
      ..add(DiagnosticsProperty('email', email));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is onEmailEvent &&
            (identical(other.email, email) ||
                const DeepCollectionEquality().equals(other.email, email)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(email);

  @override
  $onEmailEventCopyWith<onEmailEvent> get copyWith =>
      _$onEmailEventCopyWithImpl<onEmailEvent>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result setEmail(String email),
    @required Result setPassword(String password),
    @required Result login(String userName, String password),
  }) {
    assert(setEmail != null);
    assert(setPassword != null);
    assert(login != null);
    return setEmail(email);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result setEmail(String email),
    Result setPassword(String password),
    Result login(String userName, String password),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (setEmail != null) {
      return setEmail(email);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result setEmail(onEmailEvent value),
    @required Result setPassword(onPasswordEvent value),
    @required Result login(onLoginEvent value),
  }) {
    assert(setEmail != null);
    assert(setPassword != null);
    assert(login != null);
    return setEmail(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result setEmail(onEmailEvent value),
    Result setPassword(onPasswordEvent value),
    Result login(onLoginEvent value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (setEmail != null) {
      return setEmail(this);
    }
    return orElse();
  }
}

abstract class onEmailEvent implements LoginEvent {
  const factory onEmailEvent(String email) = _$onEmailEvent;

  String get email;
  $onEmailEventCopyWith<onEmailEvent> get copyWith;
}

abstract class $onPasswordEventCopyWith<$Res> {
  factory $onPasswordEventCopyWith(
          onPasswordEvent value, $Res Function(onPasswordEvent) then) =
      _$onPasswordEventCopyWithImpl<$Res>;
  $Res call({String password});
}

class _$onPasswordEventCopyWithImpl<$Res> extends _$LoginEventCopyWithImpl<$Res>
    implements $onPasswordEventCopyWith<$Res> {
  _$onPasswordEventCopyWithImpl(
      onPasswordEvent _value, $Res Function(onPasswordEvent) _then)
      : super(_value, (v) => _then(v as onPasswordEvent));

  @override
  onPasswordEvent get _value => super._value as onPasswordEvent;

  @override
  $Res call({
    Object password = freezed,
  }) {
    return _then(onPasswordEvent(
      password == freezed ? _value.password : password as String,
    ));
  }
}

class _$onPasswordEvent
    with DiagnosticableTreeMixin
    implements onPasswordEvent {
  const _$onPasswordEvent(this.password) : assert(password != null);

  @override
  final String password;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'LoginEvent.setPassword(password: $password)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'LoginEvent.setPassword'))
      ..add(DiagnosticsProperty('password', password));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is onPasswordEvent &&
            (identical(other.password, password) ||
                const DeepCollectionEquality()
                    .equals(other.password, password)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(password);

  @override
  $onPasswordEventCopyWith<onPasswordEvent> get copyWith =>
      _$onPasswordEventCopyWithImpl<onPasswordEvent>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result setEmail(String email),
    @required Result setPassword(String password),
    @required Result login(String userName, String password),
  }) {
    assert(setEmail != null);
    assert(setPassword != null);
    assert(login != null);
    return setPassword(password);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result setEmail(String email),
    Result setPassword(String password),
    Result login(String userName, String password),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (setPassword != null) {
      return setPassword(password);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result setEmail(onEmailEvent value),
    @required Result setPassword(onPasswordEvent value),
    @required Result login(onLoginEvent value),
  }) {
    assert(setEmail != null);
    assert(setPassword != null);
    assert(login != null);
    return setPassword(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result setEmail(onEmailEvent value),
    Result setPassword(onPasswordEvent value),
    Result login(onLoginEvent value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (setPassword != null) {
      return setPassword(this);
    }
    return orElse();
  }
}

abstract class onPasswordEvent implements LoginEvent {
  const factory onPasswordEvent(String password) = _$onPasswordEvent;

  String get password;
  $onPasswordEventCopyWith<onPasswordEvent> get copyWith;
}

abstract class $onLoginEventCopyWith<$Res> {
  factory $onLoginEventCopyWith(
          onLoginEvent value, $Res Function(onLoginEvent) then) =
      _$onLoginEventCopyWithImpl<$Res>;
  $Res call({String userName, String password});
}

class _$onLoginEventCopyWithImpl<$Res> extends _$LoginEventCopyWithImpl<$Res>
    implements $onLoginEventCopyWith<$Res> {
  _$onLoginEventCopyWithImpl(
      onLoginEvent _value, $Res Function(onLoginEvent) _then)
      : super(_value, (v) => _then(v as onLoginEvent));

  @override
  onLoginEvent get _value => super._value as onLoginEvent;

  @override
  $Res call({
    Object userName = freezed,
    Object password = freezed,
  }) {
    return _then(onLoginEvent(
      userName == freezed ? _value.userName : userName as String,
      password == freezed ? _value.password : password as String,
    ));
  }
}

class _$onLoginEvent with DiagnosticableTreeMixin implements onLoginEvent {
  const _$onLoginEvent(this.userName, this.password)
      : assert(userName != null),
        assert(password != null);

  @override
  final String userName;
  @override
  final String password;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'LoginEvent.login(userName: $userName, password: $password)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'LoginEvent.login'))
      ..add(DiagnosticsProperty('userName', userName))
      ..add(DiagnosticsProperty('password', password));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is onLoginEvent &&
            (identical(other.userName, userName) ||
                const DeepCollectionEquality()
                    .equals(other.userName, userName)) &&
            (identical(other.password, password) ||
                const DeepCollectionEquality()
                    .equals(other.password, password)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(userName) ^
      const DeepCollectionEquality().hash(password);

  @override
  $onLoginEventCopyWith<onLoginEvent> get copyWith =>
      _$onLoginEventCopyWithImpl<onLoginEvent>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result setEmail(String email),
    @required Result setPassword(String password),
    @required Result login(String userName, String password),
  }) {
    assert(setEmail != null);
    assert(setPassword != null);
    assert(login != null);
    return login(userName, password);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result setEmail(String email),
    Result setPassword(String password),
    Result login(String userName, String password),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (login != null) {
      return login(userName, password);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result setEmail(onEmailEvent value),
    @required Result setPassword(onPasswordEvent value),
    @required Result login(onLoginEvent value),
  }) {
    assert(setEmail != null);
    assert(setPassword != null);
    assert(login != null);
    return login(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result setEmail(onEmailEvent value),
    Result setPassword(onPasswordEvent value),
    Result login(onLoginEvent value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (login != null) {
      return login(this);
    }
    return orElse();
  }
}

abstract class onLoginEvent implements LoginEvent {
  const factory onLoginEvent(String userName, String password) = _$onLoginEvent;

  String get userName;
  String get password;
  $onLoginEventCopyWith<onLoginEvent> get copyWith;
}
