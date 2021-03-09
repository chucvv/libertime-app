// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'failures.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$FailureTearOff {
  const _$FailureTearOff();

// ignore: unused_element
  _ServerFailure serverFailure(dynamic exception) {
    return _ServerFailure(
      exception,
    );
  }

// ignore: unused_element
  _ClientFailure clientFailture(dynamic exception) {
    return _ClientFailure(
      exception,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $Failure = _$FailureTearOff();

/// @nodoc
mixin _$Failure {
  dynamic get exception;

  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult serverFailure(dynamic exception),
    @required TResult clientFailture(dynamic exception),
  });
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult serverFailure(dynamic exception),
    TResult clientFailture(dynamic exception),
    @required TResult orElse(),
  });
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult serverFailure(_ServerFailure value),
    @required TResult clientFailture(_ClientFailure value),
  });
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult serverFailure(_ServerFailure value),
    TResult clientFailture(_ClientFailure value),
    @required TResult orElse(),
  });

  @JsonKey(ignore: true)
  $FailureCopyWith<Failure> get copyWith;
}

/// @nodoc
abstract class $FailureCopyWith<$Res> {
  factory $FailureCopyWith(Failure value, $Res Function(Failure) then) =
      _$FailureCopyWithImpl<$Res>;
  $Res call({dynamic exception});
}

/// @nodoc
class _$FailureCopyWithImpl<$Res> implements $FailureCopyWith<$Res> {
  _$FailureCopyWithImpl(this._value, this._then);

  final Failure _value;
  // ignore: unused_field
  final $Res Function(Failure) _then;

  @override
  $Res call({
    Object exception = freezed,
  }) {
    return _then(_value.copyWith(
      exception: exception == freezed ? _value.exception : exception as dynamic,
    ));
  }
}

/// @nodoc
abstract class _$ServerFailureCopyWith<$Res> implements $FailureCopyWith<$Res> {
  factory _$ServerFailureCopyWith(
          _ServerFailure value, $Res Function(_ServerFailure) then) =
      __$ServerFailureCopyWithImpl<$Res>;
  @override
  $Res call({dynamic exception});
}

/// @nodoc
class __$ServerFailureCopyWithImpl<$Res> extends _$FailureCopyWithImpl<$Res>
    implements _$ServerFailureCopyWith<$Res> {
  __$ServerFailureCopyWithImpl(
      _ServerFailure _value, $Res Function(_ServerFailure) _then)
      : super(_value, (v) => _then(v as _ServerFailure));

  @override
  _ServerFailure get _value => super._value as _ServerFailure;

  @override
  $Res call({
    Object exception = freezed,
  }) {
    return _then(_ServerFailure(
      exception == freezed ? _value.exception : exception as dynamic,
    ));
  }
}

/// @nodoc
class _$_ServerFailure with DiagnosticableTreeMixin implements _ServerFailure {
  const _$_ServerFailure(this.exception) : assert(exception != null);

  @override
  final dynamic exception;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'Failure.serverFailure(exception: $exception)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'Failure.serverFailure'))
      ..add(DiagnosticsProperty('exception', exception));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ServerFailure &&
            (identical(other.exception, exception) ||
                const DeepCollectionEquality()
                    .equals(other.exception, exception)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(exception);

  @JsonKey(ignore: true)
  @override
  _$ServerFailureCopyWith<_ServerFailure> get copyWith =>
      __$ServerFailureCopyWithImpl<_ServerFailure>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult serverFailure(dynamic exception),
    @required TResult clientFailture(dynamic exception),
  }) {
    assert(serverFailure != null);
    assert(clientFailture != null);
    return serverFailure(exception);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult serverFailure(dynamic exception),
    TResult clientFailture(dynamic exception),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (serverFailure != null) {
      return serverFailure(exception);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult serverFailure(_ServerFailure value),
    @required TResult clientFailture(_ClientFailure value),
  }) {
    assert(serverFailure != null);
    assert(clientFailture != null);
    return serverFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult serverFailure(_ServerFailure value),
    TResult clientFailture(_ClientFailure value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (serverFailure != null) {
      return serverFailure(this);
    }
    return orElse();
  }
}

abstract class _ServerFailure implements Failure {
  const factory _ServerFailure(dynamic exception) = _$_ServerFailure;

  @override
  dynamic get exception;
  @override
  @JsonKey(ignore: true)
  _$ServerFailureCopyWith<_ServerFailure> get copyWith;
}

/// @nodoc
abstract class _$ClientFailureCopyWith<$Res> implements $FailureCopyWith<$Res> {
  factory _$ClientFailureCopyWith(
          _ClientFailure value, $Res Function(_ClientFailure) then) =
      __$ClientFailureCopyWithImpl<$Res>;
  @override
  $Res call({dynamic exception});
}

/// @nodoc
class __$ClientFailureCopyWithImpl<$Res> extends _$FailureCopyWithImpl<$Res>
    implements _$ClientFailureCopyWith<$Res> {
  __$ClientFailureCopyWithImpl(
      _ClientFailure _value, $Res Function(_ClientFailure) _then)
      : super(_value, (v) => _then(v as _ClientFailure));

  @override
  _ClientFailure get _value => super._value as _ClientFailure;

  @override
  $Res call({
    Object exception = freezed,
  }) {
    return _then(_ClientFailure(
      exception == freezed ? _value.exception : exception as dynamic,
    ));
  }
}

/// @nodoc
class _$_ClientFailure with DiagnosticableTreeMixin implements _ClientFailure {
  const _$_ClientFailure(this.exception) : assert(exception != null);

  @override
  final dynamic exception;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'Failure.clientFailture(exception: $exception)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'Failure.clientFailture'))
      ..add(DiagnosticsProperty('exception', exception));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ClientFailure &&
            (identical(other.exception, exception) ||
                const DeepCollectionEquality()
                    .equals(other.exception, exception)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(exception);

  @JsonKey(ignore: true)
  @override
  _$ClientFailureCopyWith<_ClientFailure> get copyWith =>
      __$ClientFailureCopyWithImpl<_ClientFailure>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult serverFailure(dynamic exception),
    @required TResult clientFailture(dynamic exception),
  }) {
    assert(serverFailure != null);
    assert(clientFailture != null);
    return clientFailture(exception);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult serverFailure(dynamic exception),
    TResult clientFailture(dynamic exception),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (clientFailture != null) {
      return clientFailture(exception);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult serverFailure(_ServerFailure value),
    @required TResult clientFailture(_ClientFailure value),
  }) {
    assert(serverFailure != null);
    assert(clientFailture != null);
    return clientFailture(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult serverFailure(_ServerFailure value),
    TResult clientFailture(_ClientFailure value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (clientFailture != null) {
      return clientFailture(this);
    }
    return orElse();
  }
}

abstract class _ClientFailure implements Failure {
  const factory _ClientFailure(dynamic exception) = _$_ClientFailure;

  @override
  dynamic get exception;
  @override
  @JsonKey(ignore: true)
  _$ClientFailureCopyWith<_ClientFailure> get copyWith;
}
