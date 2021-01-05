// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'login_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$LoginEventTearOff {
  const _$LoginEventTearOff();

// ignore: unused_element
  onLoginEvent login(String username, String password) {
    return onLoginEvent(
      username,
      password,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $LoginEvent = _$LoginEventTearOff();

/// @nodoc
mixin _$LoginEvent {
  String get username;
  String get password;

  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result login(String username, String password),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result login(String username, String password),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result login(onLoginEvent value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result login(onLoginEvent value),
    @required Result orElse(),
  });

  $LoginEventCopyWith<LoginEvent> get copyWith;
}

/// @nodoc
abstract class $LoginEventCopyWith<$Res> {
  factory $LoginEventCopyWith(
          LoginEvent value, $Res Function(LoginEvent) then) =
      _$LoginEventCopyWithImpl<$Res>;
  $Res call({String username, String password});
}

/// @nodoc
class _$LoginEventCopyWithImpl<$Res> implements $LoginEventCopyWith<$Res> {
  _$LoginEventCopyWithImpl(this._value, this._then);

  final LoginEvent _value;
  // ignore: unused_field
  final $Res Function(LoginEvent) _then;

  @override
  $Res call({
    Object username = freezed,
    Object password = freezed,
  }) {
    return _then(_value.copyWith(
      username: username == freezed ? _value.username : username as String,
      password: password == freezed ? _value.password : password as String,
    ));
  }
}

/// @nodoc
abstract class $onLoginEventCopyWith<$Res>
    implements $LoginEventCopyWith<$Res> {
  factory $onLoginEventCopyWith(
          onLoginEvent value, $Res Function(onLoginEvent) then) =
      _$onLoginEventCopyWithImpl<$Res>;
  @override
  $Res call({String username, String password});
}

/// @nodoc
class _$onLoginEventCopyWithImpl<$Res> extends _$LoginEventCopyWithImpl<$Res>
    implements $onLoginEventCopyWith<$Res> {
  _$onLoginEventCopyWithImpl(
      onLoginEvent _value, $Res Function(onLoginEvent) _then)
      : super(_value, (v) => _then(v as onLoginEvent));

  @override
  onLoginEvent get _value => super._value as onLoginEvent;

  @override
  $Res call({
    Object username = freezed,
    Object password = freezed,
  }) {
    return _then(onLoginEvent(
      username == freezed ? _value.username : username as String,
      password == freezed ? _value.password : password as String,
    ));
  }
}

/// @nodoc
class _$onLoginEvent with DiagnosticableTreeMixin implements onLoginEvent {
  const _$onLoginEvent(this.username, this.password)
      : assert(username != null),
        assert(password != null);

  @override
  final String username;
  @override
  final String password;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'LoginEvent.login(username: $username, password: $password)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'LoginEvent.login'))
      ..add(DiagnosticsProperty('username', username))
      ..add(DiagnosticsProperty('password', password));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is onLoginEvent &&
            (identical(other.username, username) ||
                const DeepCollectionEquality()
                    .equals(other.username, username)) &&
            (identical(other.password, password) ||
                const DeepCollectionEquality()
                    .equals(other.password, password)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(username) ^
      const DeepCollectionEquality().hash(password);

  @override
  $onLoginEventCopyWith<onLoginEvent> get copyWith =>
      _$onLoginEventCopyWithImpl<onLoginEvent>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result login(String username, String password),
  }) {
    assert(login != null);
    return login(username, password);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result login(String username, String password),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (login != null) {
      return login(username, password);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result login(onLoginEvent value),
  }) {
    assert(login != null);
    return login(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
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
  const factory onLoginEvent(String username, String password) = _$onLoginEvent;

  @override
  String get username;
  @override
  String get password;
  @override
  $onLoginEventCopyWith<onLoginEvent> get copyWith;
}
