// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named

part of 'failures.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$FailureTearOff {
  const _$FailureTearOff();

  _ServerFailure serverFailure(dynamic error) {
    return _ServerFailure(
      error,
    );
  }

  _UserNotFound userNotFound() {
    return const _UserNotFound();
  }

  _CacheFailure cacheFailure() {
    return const _CacheFailure();
  }

  _EmptyResponse emptyResponse() {
    return const _EmptyResponse();
  }
}

// ignore: unused_element
const $Failure = _$FailureTearOff();

mixin _$Failure {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result serverFailure(dynamic error),
    @required Result userNotFound(),
    @required Result cacheFailure(),
    @required Result emptyResponse(),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result serverFailure(dynamic error),
    Result userNotFound(),
    Result cacheFailure(),
    Result emptyResponse(),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result serverFailure(_ServerFailure value),
    @required Result userNotFound(_UserNotFound value),
    @required Result cacheFailure(_CacheFailure value),
    @required Result emptyResponse(_EmptyResponse value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result serverFailure(_ServerFailure value),
    Result userNotFound(_UserNotFound value),
    Result cacheFailure(_CacheFailure value),
    Result emptyResponse(_EmptyResponse value),
    @required Result orElse(),
  });
}

abstract class $FailureCopyWith<$Res> {
  factory $FailureCopyWith(Failure value, $Res Function(Failure) then) =
      _$FailureCopyWithImpl<$Res>;
}

class _$FailureCopyWithImpl<$Res> implements $FailureCopyWith<$Res> {
  _$FailureCopyWithImpl(this._value, this._then);

  final Failure _value;
  // ignore: unused_field
  final $Res Function(Failure) _then;
}

abstract class _$ServerFailureCopyWith<$Res> {
  factory _$ServerFailureCopyWith(
          _ServerFailure value, $Res Function(_ServerFailure) then) =
      __$ServerFailureCopyWithImpl<$Res>;
  $Res call({dynamic error});
}

class __$ServerFailureCopyWithImpl<$Res> extends _$FailureCopyWithImpl<$Res>
    implements _$ServerFailureCopyWith<$Res> {
  __$ServerFailureCopyWithImpl(
      _ServerFailure _value, $Res Function(_ServerFailure) _then)
      : super(_value, (v) => _then(v as _ServerFailure));

  @override
  _ServerFailure get _value => super._value as _ServerFailure;

  @override
  $Res call({
    Object error = freezed,
  }) {
    return _then(_ServerFailure(
      error == freezed ? _value.error : error as dynamic,
    ));
  }
}

class _$_ServerFailure with DiagnosticableTreeMixin implements _ServerFailure {
  const _$_ServerFailure(this.error) : assert(error != null);

  @override
  final dynamic error;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'Failure.serverFailure(error: $error)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'Failure.serverFailure'))
      ..add(DiagnosticsProperty('error', error));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ServerFailure &&
            (identical(other.error, error) ||
                const DeepCollectionEquality().equals(other.error, error)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(error);

  @override
  _$ServerFailureCopyWith<_ServerFailure> get copyWith =>
      __$ServerFailureCopyWithImpl<_ServerFailure>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result serverFailure(dynamic error),
    @required Result userNotFound(),
    @required Result cacheFailure(),
    @required Result emptyResponse(),
  }) {
    assert(serverFailure != null);
    assert(userNotFound != null);
    assert(cacheFailure != null);
    assert(emptyResponse != null);
    return serverFailure(error);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result serverFailure(dynamic error),
    Result userNotFound(),
    Result cacheFailure(),
    Result emptyResponse(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (serverFailure != null) {
      return serverFailure(error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result serverFailure(_ServerFailure value),
    @required Result userNotFound(_UserNotFound value),
    @required Result cacheFailure(_CacheFailure value),
    @required Result emptyResponse(_EmptyResponse value),
  }) {
    assert(serverFailure != null);
    assert(userNotFound != null);
    assert(cacheFailure != null);
    assert(emptyResponse != null);
    return serverFailure(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result serverFailure(_ServerFailure value),
    Result userNotFound(_UserNotFound value),
    Result cacheFailure(_CacheFailure value),
    Result emptyResponse(_EmptyResponse value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (serverFailure != null) {
      return serverFailure(this);
    }
    return orElse();
  }
}

abstract class _ServerFailure implements Failure {
  const factory _ServerFailure(dynamic error) = _$_ServerFailure;

  dynamic get error;
  _$ServerFailureCopyWith<_ServerFailure> get copyWith;
}

abstract class _$UserNotFoundCopyWith<$Res> {
  factory _$UserNotFoundCopyWith(
          _UserNotFound value, $Res Function(_UserNotFound) then) =
      __$UserNotFoundCopyWithImpl<$Res>;
}

class __$UserNotFoundCopyWithImpl<$Res> extends _$FailureCopyWithImpl<$Res>
    implements _$UserNotFoundCopyWith<$Res> {
  __$UserNotFoundCopyWithImpl(
      _UserNotFound _value, $Res Function(_UserNotFound) _then)
      : super(_value, (v) => _then(v as _UserNotFound));

  @override
  _UserNotFound get _value => super._value as _UserNotFound;
}

class _$_UserNotFound with DiagnosticableTreeMixin implements _UserNotFound {
  const _$_UserNotFound();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'Failure.userNotFound()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties..add(DiagnosticsProperty('type', 'Failure.userNotFound'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _UserNotFound);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result serverFailure(dynamic error),
    @required Result userNotFound(),
    @required Result cacheFailure(),
    @required Result emptyResponse(),
  }) {
    assert(serverFailure != null);
    assert(userNotFound != null);
    assert(cacheFailure != null);
    assert(emptyResponse != null);
    return userNotFound();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result serverFailure(dynamic error),
    Result userNotFound(),
    Result cacheFailure(),
    Result emptyResponse(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (userNotFound != null) {
      return userNotFound();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result serverFailure(_ServerFailure value),
    @required Result userNotFound(_UserNotFound value),
    @required Result cacheFailure(_CacheFailure value),
    @required Result emptyResponse(_EmptyResponse value),
  }) {
    assert(serverFailure != null);
    assert(userNotFound != null);
    assert(cacheFailure != null);
    assert(emptyResponse != null);
    return userNotFound(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result serverFailure(_ServerFailure value),
    Result userNotFound(_UserNotFound value),
    Result cacheFailure(_CacheFailure value),
    Result emptyResponse(_EmptyResponse value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (userNotFound != null) {
      return userNotFound(this);
    }
    return orElse();
  }
}

abstract class _UserNotFound implements Failure {
  const factory _UserNotFound() = _$_UserNotFound;
}

abstract class _$CacheFailureCopyWith<$Res> {
  factory _$CacheFailureCopyWith(
          _CacheFailure value, $Res Function(_CacheFailure) then) =
      __$CacheFailureCopyWithImpl<$Res>;
}

class __$CacheFailureCopyWithImpl<$Res> extends _$FailureCopyWithImpl<$Res>
    implements _$CacheFailureCopyWith<$Res> {
  __$CacheFailureCopyWithImpl(
      _CacheFailure _value, $Res Function(_CacheFailure) _then)
      : super(_value, (v) => _then(v as _CacheFailure));

  @override
  _CacheFailure get _value => super._value as _CacheFailure;
}

class _$_CacheFailure with DiagnosticableTreeMixin implements _CacheFailure {
  const _$_CacheFailure();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'Failure.cacheFailure()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties..add(DiagnosticsProperty('type', 'Failure.cacheFailure'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _CacheFailure);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result serverFailure(dynamic error),
    @required Result userNotFound(),
    @required Result cacheFailure(),
    @required Result emptyResponse(),
  }) {
    assert(serverFailure != null);
    assert(userNotFound != null);
    assert(cacheFailure != null);
    assert(emptyResponse != null);
    return cacheFailure();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result serverFailure(dynamic error),
    Result userNotFound(),
    Result cacheFailure(),
    Result emptyResponse(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (cacheFailure != null) {
      return cacheFailure();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result serverFailure(_ServerFailure value),
    @required Result userNotFound(_UserNotFound value),
    @required Result cacheFailure(_CacheFailure value),
    @required Result emptyResponse(_EmptyResponse value),
  }) {
    assert(serverFailure != null);
    assert(userNotFound != null);
    assert(cacheFailure != null);
    assert(emptyResponse != null);
    return cacheFailure(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result serverFailure(_ServerFailure value),
    Result userNotFound(_UserNotFound value),
    Result cacheFailure(_CacheFailure value),
    Result emptyResponse(_EmptyResponse value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (cacheFailure != null) {
      return cacheFailure(this);
    }
    return orElse();
  }
}

abstract class _CacheFailure implements Failure {
  const factory _CacheFailure() = _$_CacheFailure;
}

abstract class _$EmptyResponseCopyWith<$Res> {
  factory _$EmptyResponseCopyWith(
          _EmptyResponse value, $Res Function(_EmptyResponse) then) =
      __$EmptyResponseCopyWithImpl<$Res>;
}

class __$EmptyResponseCopyWithImpl<$Res> extends _$FailureCopyWithImpl<$Res>
    implements _$EmptyResponseCopyWith<$Res> {
  __$EmptyResponseCopyWithImpl(
      _EmptyResponse _value, $Res Function(_EmptyResponse) _then)
      : super(_value, (v) => _then(v as _EmptyResponse));

  @override
  _EmptyResponse get _value => super._value as _EmptyResponse;
}

class _$_EmptyResponse with DiagnosticableTreeMixin implements _EmptyResponse {
  const _$_EmptyResponse();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'Failure.emptyResponse()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties..add(DiagnosticsProperty('type', 'Failure.emptyResponse'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _EmptyResponse);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result serverFailure(dynamic error),
    @required Result userNotFound(),
    @required Result cacheFailure(),
    @required Result emptyResponse(),
  }) {
    assert(serverFailure != null);
    assert(userNotFound != null);
    assert(cacheFailure != null);
    assert(emptyResponse != null);
    return emptyResponse();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result serverFailure(dynamic error),
    Result userNotFound(),
    Result cacheFailure(),
    Result emptyResponse(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (emptyResponse != null) {
      return emptyResponse();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result serverFailure(_ServerFailure value),
    @required Result userNotFound(_UserNotFound value),
    @required Result cacheFailure(_CacheFailure value),
    @required Result emptyResponse(_EmptyResponse value),
  }) {
    assert(serverFailure != null);
    assert(userNotFound != null);
    assert(cacheFailure != null);
    assert(emptyResponse != null);
    return emptyResponse(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result serverFailure(_ServerFailure value),
    Result userNotFound(_UserNotFound value),
    Result cacheFailure(_CacheFailure value),
    Result emptyResponse(_EmptyResponse value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (emptyResponse != null) {
      return emptyResponse(this);
    }
    return orElse();
  }
}

abstract class _EmptyResponse implements Failure {
  const factory _EmptyResponse() = _$_EmptyResponse;
}
