// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named

part of 'login_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$LoginModelTearOff {
  const _$LoginModelTearOff();

  _LoginModel call({String userName, String password}) {
    return _LoginModel(
      userName: userName,
      password: password,
    );
  }
}

// ignore: unused_element
const $LoginModel = _$LoginModelTearOff();

mixin _$LoginModel {
  String get userName;
  String get password;

  $LoginModelCopyWith<LoginModel> get copyWith;
}

abstract class $LoginModelCopyWith<$Res> {
  factory $LoginModelCopyWith(
          LoginModel value, $Res Function(LoginModel) then) =
      _$LoginModelCopyWithImpl<$Res>;
  $Res call({String userName, String password});
}

class _$LoginModelCopyWithImpl<$Res> implements $LoginModelCopyWith<$Res> {
  _$LoginModelCopyWithImpl(this._value, this._then);

  final LoginModel _value;
  // ignore: unused_field
  final $Res Function(LoginModel) _then;

  @override
  $Res call({
    Object userName = freezed,
    Object password = freezed,
  }) {
    return _then(_value.copyWith(
      userName: userName == freezed ? _value.userName : userName as String,
      password: password == freezed ? _value.password : password as String,
    ));
  }
}

abstract class _$LoginModelCopyWith<$Res> implements $LoginModelCopyWith<$Res> {
  factory _$LoginModelCopyWith(
          _LoginModel value, $Res Function(_LoginModel) then) =
      __$LoginModelCopyWithImpl<$Res>;
  @override
  $Res call({String userName, String password});
}

class __$LoginModelCopyWithImpl<$Res> extends _$LoginModelCopyWithImpl<$Res>
    implements _$LoginModelCopyWith<$Res> {
  __$LoginModelCopyWithImpl(
      _LoginModel _value, $Res Function(_LoginModel) _then)
      : super(_value, (v) => _then(v as _LoginModel));

  @override
  _LoginModel get _value => super._value as _LoginModel;

  @override
  $Res call({
    Object userName = freezed,
    Object password = freezed,
  }) {
    return _then(_LoginModel(
      userName: userName == freezed ? _value.userName : userName as String,
      password: password == freezed ? _value.password : password as String,
    ));
  }
}

class _$_LoginModel with DiagnosticableTreeMixin implements _LoginModel {
  const _$_LoginModel({this.userName, this.password});

  @override
  final String userName;
  @override
  final String password;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'LoginModel(userName: $userName, password: $password)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'LoginModel'))
      ..add(DiagnosticsProperty('userName', userName))
      ..add(DiagnosticsProperty('password', password));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _LoginModel &&
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
  _$LoginModelCopyWith<_LoginModel> get copyWith =>
      __$LoginModelCopyWithImpl<_LoginModel>(this, _$identity);
}

abstract class _LoginModel implements LoginModel {
  const factory _LoginModel({String userName, String password}) = _$_LoginModel;

  @override
  String get userName;
  @override
  String get password;
  @override
  _$LoginModelCopyWith<_LoginModel> get copyWith;
}
