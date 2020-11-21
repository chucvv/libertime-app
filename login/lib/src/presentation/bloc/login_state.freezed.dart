// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named

part of 'login_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$LoginStateTearOff {
  const _$LoginStateTearOff();

  Initial initial() {
    return Initial();
  }

  Loading loading() {
    return const Loading();
  }

  Success success(User user) {
    return Success(
      user,
    );
  }

  UnSuccess unSuccess(String error) {
    return UnSuccess(
      error,
    );
  }

  InvalidFormField invalidFormField(
      {Map<LoginFormField, List<String>> errors}) {
    return InvalidFormField(
      errors: errors,
    );
  }
}

// ignore: unused_element
const $LoginState = _$LoginStateTearOff();

mixin _$LoginState {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result loading(),
    @required Result success(User user),
    @required Result unSuccess(String error),
    @required Result invalidFormField(Map<LoginFormField, List<String>> errors),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result loading(),
    Result success(User user),
    Result unSuccess(String error),
    Result invalidFormField(Map<LoginFormField, List<String>> errors),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(Initial value),
    @required Result loading(Loading value),
    @required Result success(Success value),
    @required Result unSuccess(UnSuccess value),
    @required Result invalidFormField(InvalidFormField value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(Initial value),
    Result loading(Loading value),
    Result success(Success value),
    Result unSuccess(UnSuccess value),
    Result invalidFormField(InvalidFormField value),
    @required Result orElse(),
  });
}

abstract class $LoginStateCopyWith<$Res> {
  factory $LoginStateCopyWith(
          LoginState value, $Res Function(LoginState) then) =
      _$LoginStateCopyWithImpl<$Res>;
}

class _$LoginStateCopyWithImpl<$Res> implements $LoginStateCopyWith<$Res> {
  _$LoginStateCopyWithImpl(this._value, this._then);

  final LoginState _value;
  // ignore: unused_field
  final $Res Function(LoginState) _then;
}

abstract class $InitialCopyWith<$Res> {
  factory $InitialCopyWith(Initial value, $Res Function(Initial) then) =
      _$InitialCopyWithImpl<$Res>;
}

class _$InitialCopyWithImpl<$Res> extends _$LoginStateCopyWithImpl<$Res>
    implements $InitialCopyWith<$Res> {
  _$InitialCopyWithImpl(Initial _value, $Res Function(Initial) _then)
      : super(_value, (v) => _then(v as Initial));

  @override
  Initial get _value => super._value as Initial;
}

class _$Initial with DiagnosticableTreeMixin implements Initial {
  _$Initial();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'LoginState.initial()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties..add(DiagnosticsProperty('type', 'LoginState.initial'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is Initial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result loading(),
    @required Result success(User user),
    @required Result unSuccess(String error),
    @required Result invalidFormField(Map<LoginFormField, List<String>> errors),
  }) {
    assert(initial != null);
    assert(loading != null);
    assert(success != null);
    assert(unSuccess != null);
    assert(invalidFormField != null);
    return initial();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result loading(),
    Result success(User user),
    Result unSuccess(String error),
    Result invalidFormField(Map<LoginFormField, List<String>> errors),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(Initial value),
    @required Result loading(Loading value),
    @required Result success(Success value),
    @required Result unSuccess(UnSuccess value),
    @required Result invalidFormField(InvalidFormField value),
  }) {
    assert(initial != null);
    assert(loading != null);
    assert(success != null);
    assert(unSuccess != null);
    assert(invalidFormField != null);
    return initial(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(Initial value),
    Result loading(Loading value),
    Result success(Success value),
    Result unSuccess(UnSuccess value),
    Result invalidFormField(InvalidFormField value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class Initial implements LoginState {
  factory Initial() = _$Initial;
}

abstract class $LoadingCopyWith<$Res> {
  factory $LoadingCopyWith(Loading value, $Res Function(Loading) then) =
      _$LoadingCopyWithImpl<$Res>;
}

class _$LoadingCopyWithImpl<$Res> extends _$LoginStateCopyWithImpl<$Res>
    implements $LoadingCopyWith<$Res> {
  _$LoadingCopyWithImpl(Loading _value, $Res Function(Loading) _then)
      : super(_value, (v) => _then(v as Loading));

  @override
  Loading get _value => super._value as Loading;
}

class _$Loading with DiagnosticableTreeMixin implements Loading {
  const _$Loading();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'LoginState.loading()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties..add(DiagnosticsProperty('type', 'LoginState.loading'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is Loading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result loading(),
    @required Result success(User user),
    @required Result unSuccess(String error),
    @required Result invalidFormField(Map<LoginFormField, List<String>> errors),
  }) {
    assert(initial != null);
    assert(loading != null);
    assert(success != null);
    assert(unSuccess != null);
    assert(invalidFormField != null);
    return loading();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result loading(),
    Result success(User user),
    Result unSuccess(String error),
    Result invalidFormField(Map<LoginFormField, List<String>> errors),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(Initial value),
    @required Result loading(Loading value),
    @required Result success(Success value),
    @required Result unSuccess(UnSuccess value),
    @required Result invalidFormField(InvalidFormField value),
  }) {
    assert(initial != null);
    assert(loading != null);
    assert(success != null);
    assert(unSuccess != null);
    assert(invalidFormField != null);
    return loading(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(Initial value),
    Result loading(Loading value),
    Result success(Success value),
    Result unSuccess(UnSuccess value),
    Result invalidFormField(InvalidFormField value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class Loading implements LoginState {
  const factory Loading() = _$Loading;
}

abstract class $SuccessCopyWith<$Res> {
  factory $SuccessCopyWith(Success value, $Res Function(Success) then) =
      _$SuccessCopyWithImpl<$Res>;
  $Res call({User user});
}

class _$SuccessCopyWithImpl<$Res> extends _$LoginStateCopyWithImpl<$Res>
    implements $SuccessCopyWith<$Res> {
  _$SuccessCopyWithImpl(Success _value, $Res Function(Success) _then)
      : super(_value, (v) => _then(v as Success));

  @override
  Success get _value => super._value as Success;

  @override
  $Res call({
    Object user = freezed,
  }) {
    return _then(Success(
      user == freezed ? _value.user : user as User,
    ));
  }
}

class _$Success with DiagnosticableTreeMixin implements Success {
  const _$Success(this.user) : assert(user != null);

  @override
  final User user;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'LoginState.success(user: $user)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'LoginState.success'))
      ..add(DiagnosticsProperty('user', user));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is Success &&
            (identical(other.user, user) ||
                const DeepCollectionEquality().equals(other.user, user)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(user);

  @override
  $SuccessCopyWith<Success> get copyWith =>
      _$SuccessCopyWithImpl<Success>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result loading(),
    @required Result success(User user),
    @required Result unSuccess(String error),
    @required Result invalidFormField(Map<LoginFormField, List<String>> errors),
  }) {
    assert(initial != null);
    assert(loading != null);
    assert(success != null);
    assert(unSuccess != null);
    assert(invalidFormField != null);
    return success(user);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result loading(),
    Result success(User user),
    Result unSuccess(String error),
    Result invalidFormField(Map<LoginFormField, List<String>> errors),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (success != null) {
      return success(user);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(Initial value),
    @required Result loading(Loading value),
    @required Result success(Success value),
    @required Result unSuccess(UnSuccess value),
    @required Result invalidFormField(InvalidFormField value),
  }) {
    assert(initial != null);
    assert(loading != null);
    assert(success != null);
    assert(unSuccess != null);
    assert(invalidFormField != null);
    return success(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(Initial value),
    Result loading(Loading value),
    Result success(Success value),
    Result unSuccess(UnSuccess value),
    Result invalidFormField(InvalidFormField value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class Success implements LoginState {
  const factory Success(User user) = _$Success;

  User get user;
  $SuccessCopyWith<Success> get copyWith;
}

abstract class $UnSuccessCopyWith<$Res> {
  factory $UnSuccessCopyWith(UnSuccess value, $Res Function(UnSuccess) then) =
      _$UnSuccessCopyWithImpl<$Res>;
  $Res call({String error});
}

class _$UnSuccessCopyWithImpl<$Res> extends _$LoginStateCopyWithImpl<$Res>
    implements $UnSuccessCopyWith<$Res> {
  _$UnSuccessCopyWithImpl(UnSuccess _value, $Res Function(UnSuccess) _then)
      : super(_value, (v) => _then(v as UnSuccess));

  @override
  UnSuccess get _value => super._value as UnSuccess;

  @override
  $Res call({
    Object error = freezed,
  }) {
    return _then(UnSuccess(
      error == freezed ? _value.error : error as String,
    ));
  }
}

class _$UnSuccess with DiagnosticableTreeMixin implements UnSuccess {
  const _$UnSuccess(this.error) : assert(error != null);

  @override
  final String error;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'LoginState.unSuccess(error: $error)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'LoginState.unSuccess'))
      ..add(DiagnosticsProperty('error', error));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is UnSuccess &&
            (identical(other.error, error) ||
                const DeepCollectionEquality().equals(other.error, error)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(error);

  @override
  $UnSuccessCopyWith<UnSuccess> get copyWith =>
      _$UnSuccessCopyWithImpl<UnSuccess>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result loading(),
    @required Result success(User user),
    @required Result unSuccess(String error),
    @required Result invalidFormField(Map<LoginFormField, List<String>> errors),
  }) {
    assert(initial != null);
    assert(loading != null);
    assert(success != null);
    assert(unSuccess != null);
    assert(invalidFormField != null);
    return unSuccess(error);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result loading(),
    Result success(User user),
    Result unSuccess(String error),
    Result invalidFormField(Map<LoginFormField, List<String>> errors),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (unSuccess != null) {
      return unSuccess(error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(Initial value),
    @required Result loading(Loading value),
    @required Result success(Success value),
    @required Result unSuccess(UnSuccess value),
    @required Result invalidFormField(InvalidFormField value),
  }) {
    assert(initial != null);
    assert(loading != null);
    assert(success != null);
    assert(unSuccess != null);
    assert(invalidFormField != null);
    return unSuccess(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(Initial value),
    Result loading(Loading value),
    Result success(Success value),
    Result unSuccess(UnSuccess value),
    Result invalidFormField(InvalidFormField value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (unSuccess != null) {
      return unSuccess(this);
    }
    return orElse();
  }
}

abstract class UnSuccess implements LoginState {
  const factory UnSuccess(String error) = _$UnSuccess;

  String get error;
  $UnSuccessCopyWith<UnSuccess> get copyWith;
}

abstract class $InvalidFormFieldCopyWith<$Res> {
  factory $InvalidFormFieldCopyWith(
          InvalidFormField value, $Res Function(InvalidFormField) then) =
      _$InvalidFormFieldCopyWithImpl<$Res>;
  $Res call({Map<LoginFormField, List<String>> errors});
}

class _$InvalidFormFieldCopyWithImpl<$Res>
    extends _$LoginStateCopyWithImpl<$Res>
    implements $InvalidFormFieldCopyWith<$Res> {
  _$InvalidFormFieldCopyWithImpl(
      InvalidFormField _value, $Res Function(InvalidFormField) _then)
      : super(_value, (v) => _then(v as InvalidFormField));

  @override
  InvalidFormField get _value => super._value as InvalidFormField;

  @override
  $Res call({
    Object errors = freezed,
  }) {
    return _then(InvalidFormField(
      errors: errors == freezed
          ? _value.errors
          : errors as Map<LoginFormField, List<String>>,
    ));
  }
}

class _$InvalidFormField
    with DiagnosticableTreeMixin
    implements InvalidFormField {
  const _$InvalidFormField({this.errors});

  @override
  final Map<LoginFormField, List<String>> errors;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'LoginState.invalidFormField(errors: $errors)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'LoginState.invalidFormField'))
      ..add(DiagnosticsProperty('errors', errors));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is InvalidFormField &&
            (identical(other.errors, errors) ||
                const DeepCollectionEquality().equals(other.errors, errors)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(errors);

  @override
  $InvalidFormFieldCopyWith<InvalidFormField> get copyWith =>
      _$InvalidFormFieldCopyWithImpl<InvalidFormField>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result loading(),
    @required Result success(User user),
    @required Result unSuccess(String error),
    @required Result invalidFormField(Map<LoginFormField, List<String>> errors),
  }) {
    assert(initial != null);
    assert(loading != null);
    assert(success != null);
    assert(unSuccess != null);
    assert(invalidFormField != null);
    return invalidFormField(errors);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result loading(),
    Result success(User user),
    Result unSuccess(String error),
    Result invalidFormField(Map<LoginFormField, List<String>> errors),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (invalidFormField != null) {
      return invalidFormField(errors);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(Initial value),
    @required Result loading(Loading value),
    @required Result success(Success value),
    @required Result unSuccess(UnSuccess value),
    @required Result invalidFormField(InvalidFormField value),
  }) {
    assert(initial != null);
    assert(loading != null);
    assert(success != null);
    assert(unSuccess != null);
    assert(invalidFormField != null);
    return invalidFormField(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(Initial value),
    Result loading(Loading value),
    Result success(Success value),
    Result unSuccess(UnSuccess value),
    Result invalidFormField(InvalidFormField value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (invalidFormField != null) {
      return invalidFormField(this);
    }
    return orElse();
  }
}

abstract class InvalidFormField implements LoginState {
  const factory InvalidFormField({Map<LoginFormField, List<String>> errors}) =
      _$InvalidFormField;

  Map<LoginFormField, List<String>> get errors;
  $InvalidFormFieldCopyWith<InvalidFormField> get copyWith;
}
