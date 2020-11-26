// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'login_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$LoginStateTearOff {
  const _$LoginStateTearOff();

// ignore: unused_element
  Initial initial() {
    return Initial();
  }

// ignore: unused_element
  Loading loading() {
    return const Loading();
  }

// ignore: unused_element
  Success success(Credential credential) {
    return Success(
      credential,
    );
  }

// ignore: unused_element
  UnSuccess unSuccess(String error) {
    return UnSuccess(
      error,
    );
  }

// ignore: unused_element
  InvalidFormField invalidFormField(
      {Map<LoginFormField, List<String>> errors}) {
    return InvalidFormField(
      errors: errors,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $LoginState = _$LoginStateTearOff();

/// @nodoc
mixin _$LoginState {
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initial(),
    @required TResult loading(),
    @required TResult success(Credential credential),
    @required TResult unSuccess(String error),
    @required
        TResult invalidFormField(Map<LoginFormField, List<String>> errors),
  });
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(),
    TResult loading(),
    TResult success(Credential credential),
    TResult unSuccess(String error),
    TResult invalidFormField(Map<LoginFormField, List<String>> errors),
    @required TResult orElse(),
  });
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initial(Initial value),
    @required TResult loading(Loading value),
    @required TResult success(Success value),
    @required TResult unSuccess(UnSuccess value),
    @required TResult invalidFormField(InvalidFormField value),
  });
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(Initial value),
    TResult loading(Loading value),
    TResult success(Success value),
    TResult unSuccess(UnSuccess value),
    TResult invalidFormField(InvalidFormField value),
    @required TResult orElse(),
  });
}

/// @nodoc
abstract class $LoginStateCopyWith<$Res> {
  factory $LoginStateCopyWith(
          LoginState value, $Res Function(LoginState) then) =
      _$LoginStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$LoginStateCopyWithImpl<$Res> implements $LoginStateCopyWith<$Res> {
  _$LoginStateCopyWithImpl(this._value, this._then);

  final LoginState _value;
  // ignore: unused_field
  final $Res Function(LoginState) _then;
}

/// @nodoc
abstract class $InitialCopyWith<$Res> {
  factory $InitialCopyWith(Initial value, $Res Function(Initial) then) =
      _$InitialCopyWithImpl<$Res>;
}

/// @nodoc
class _$InitialCopyWithImpl<$Res> extends _$LoginStateCopyWithImpl<$Res>
    implements $InitialCopyWith<$Res> {
  _$InitialCopyWithImpl(Initial _value, $Res Function(Initial) _then)
      : super(_value, (v) => _then(v as Initial));

  @override
  Initial get _value => super._value as Initial;
}

/// @nodoc
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
  TResult when<TResult extends Object>({
    @required TResult initial(),
    @required TResult loading(),
    @required TResult success(Credential credential),
    @required TResult unSuccess(String error),
    @required
        TResult invalidFormField(Map<LoginFormField, List<String>> errors),
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
  TResult maybeWhen<TResult extends Object>({
    TResult initial(),
    TResult loading(),
    TResult success(Credential credential),
    TResult unSuccess(String error),
    TResult invalidFormField(Map<LoginFormField, List<String>> errors),
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
    @required TResult loading(Loading value),
    @required TResult success(Success value),
    @required TResult unSuccess(UnSuccess value),
    @required TResult invalidFormField(InvalidFormField value),
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
  TResult maybeMap<TResult extends Object>({
    TResult initial(Initial value),
    TResult loading(Loading value),
    TResult success(Success value),
    TResult unSuccess(UnSuccess value),
    TResult invalidFormField(InvalidFormField value),
    @required TResult orElse(),
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

/// @nodoc
abstract class $LoadingCopyWith<$Res> {
  factory $LoadingCopyWith(Loading value, $Res Function(Loading) then) =
      _$LoadingCopyWithImpl<$Res>;
}

/// @nodoc
class _$LoadingCopyWithImpl<$Res> extends _$LoginStateCopyWithImpl<$Res>
    implements $LoadingCopyWith<$Res> {
  _$LoadingCopyWithImpl(Loading _value, $Res Function(Loading) _then)
      : super(_value, (v) => _then(v as Loading));

  @override
  Loading get _value => super._value as Loading;
}

/// @nodoc
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
  TResult when<TResult extends Object>({
    @required TResult initial(),
    @required TResult loading(),
    @required TResult success(Credential credential),
    @required TResult unSuccess(String error),
    @required
        TResult invalidFormField(Map<LoginFormField, List<String>> errors),
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
  TResult maybeWhen<TResult extends Object>({
    TResult initial(),
    TResult loading(),
    TResult success(Credential credential),
    TResult unSuccess(String error),
    TResult invalidFormField(Map<LoginFormField, List<String>> errors),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initial(Initial value),
    @required TResult loading(Loading value),
    @required TResult success(Success value),
    @required TResult unSuccess(UnSuccess value),
    @required TResult invalidFormField(InvalidFormField value),
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
  TResult maybeMap<TResult extends Object>({
    TResult initial(Initial value),
    TResult loading(Loading value),
    TResult success(Success value),
    TResult unSuccess(UnSuccess value),
    TResult invalidFormField(InvalidFormField value),
    @required TResult orElse(),
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

/// @nodoc
abstract class $SuccessCopyWith<$Res> {
  factory $SuccessCopyWith(Success value, $Res Function(Success) then) =
      _$SuccessCopyWithImpl<$Res>;
  $Res call({Credential credential});
}

/// @nodoc
class _$SuccessCopyWithImpl<$Res> extends _$LoginStateCopyWithImpl<$Res>
    implements $SuccessCopyWith<$Res> {
  _$SuccessCopyWithImpl(Success _value, $Res Function(Success) _then)
      : super(_value, (v) => _then(v as Success));

  @override
  Success get _value => super._value as Success;

  @override
  $Res call({
    Object credential = freezed,
  }) {
    return _then(Success(
      credential == freezed ? _value.credential : credential as Credential,
    ));
  }
}

/// @nodoc
class _$Success with DiagnosticableTreeMixin implements Success {
  const _$Success(this.credential) : assert(credential != null);

  @override
  final Credential credential;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'LoginState.success(credential: $credential)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'LoginState.success'))
      ..add(DiagnosticsProperty('credential', credential));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is Success &&
            (identical(other.credential, credential) ||
                const DeepCollectionEquality()
                    .equals(other.credential, credential)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(credential);

  @override
  $SuccessCopyWith<Success> get copyWith =>
      _$SuccessCopyWithImpl<Success>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initial(),
    @required TResult loading(),
    @required TResult success(Credential credential),
    @required TResult unSuccess(String error),
    @required
        TResult invalidFormField(Map<LoginFormField, List<String>> errors),
  }) {
    assert(initial != null);
    assert(loading != null);
    assert(success != null);
    assert(unSuccess != null);
    assert(invalidFormField != null);
    return success(credential);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(),
    TResult loading(),
    TResult success(Credential credential),
    TResult unSuccess(String error),
    TResult invalidFormField(Map<LoginFormField, List<String>> errors),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (success != null) {
      return success(credential);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initial(Initial value),
    @required TResult loading(Loading value),
    @required TResult success(Success value),
    @required TResult unSuccess(UnSuccess value),
    @required TResult invalidFormField(InvalidFormField value),
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
  TResult maybeMap<TResult extends Object>({
    TResult initial(Initial value),
    TResult loading(Loading value),
    TResult success(Success value),
    TResult unSuccess(UnSuccess value),
    TResult invalidFormField(InvalidFormField value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class Success implements LoginState {
  const factory Success(Credential credential) = _$Success;

  Credential get credential;
  $SuccessCopyWith<Success> get copyWith;
}

/// @nodoc
abstract class $UnSuccessCopyWith<$Res> {
  factory $UnSuccessCopyWith(UnSuccess value, $Res Function(UnSuccess) then) =
      _$UnSuccessCopyWithImpl<$Res>;
  $Res call({String error});
}

/// @nodoc
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

/// @nodoc
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
  TResult when<TResult extends Object>({
    @required TResult initial(),
    @required TResult loading(),
    @required TResult success(Credential credential),
    @required TResult unSuccess(String error),
    @required
        TResult invalidFormField(Map<LoginFormField, List<String>> errors),
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
  TResult maybeWhen<TResult extends Object>({
    TResult initial(),
    TResult loading(),
    TResult success(Credential credential),
    TResult unSuccess(String error),
    TResult invalidFormField(Map<LoginFormField, List<String>> errors),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (unSuccess != null) {
      return unSuccess(error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initial(Initial value),
    @required TResult loading(Loading value),
    @required TResult success(Success value),
    @required TResult unSuccess(UnSuccess value),
    @required TResult invalidFormField(InvalidFormField value),
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
  TResult maybeMap<TResult extends Object>({
    TResult initial(Initial value),
    TResult loading(Loading value),
    TResult success(Success value),
    TResult unSuccess(UnSuccess value),
    TResult invalidFormField(InvalidFormField value),
    @required TResult orElse(),
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

/// @nodoc
abstract class $InvalidFormFieldCopyWith<$Res> {
  factory $InvalidFormFieldCopyWith(
          InvalidFormField value, $Res Function(InvalidFormField) then) =
      _$InvalidFormFieldCopyWithImpl<$Res>;
  $Res call({Map<LoginFormField, List<String>> errors});
}

/// @nodoc
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

/// @nodoc
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
  TResult when<TResult extends Object>({
    @required TResult initial(),
    @required TResult loading(),
    @required TResult success(Credential credential),
    @required TResult unSuccess(String error),
    @required
        TResult invalidFormField(Map<LoginFormField, List<String>> errors),
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
  TResult maybeWhen<TResult extends Object>({
    TResult initial(),
    TResult loading(),
    TResult success(Credential credential),
    TResult unSuccess(String error),
    TResult invalidFormField(Map<LoginFormField, List<String>> errors),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (invalidFormField != null) {
      return invalidFormField(errors);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initial(Initial value),
    @required TResult loading(Loading value),
    @required TResult success(Success value),
    @required TResult unSuccess(UnSuccess value),
    @required TResult invalidFormField(InvalidFormField value),
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
  TResult maybeMap<TResult extends Object>({
    TResult initial(Initial value),
    TResult loading(Loading value),
    TResult success(Success value),
    TResult unSuccess(UnSuccess value),
    TResult invalidFormField(InvalidFormField value),
    @required TResult orElse(),
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
