// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'auth_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<AuthResponse> _$authResponseSerializer =
    new _$AuthResponseSerializer();
Serializer<CredentialResponse> _$credentialResponseSerializer =
    new _$CredentialResponseSerializer();

class _$AuthResponseSerializer implements StructuredSerializer<AuthResponse> {
  @override
  final Iterable<Type> types = const [AuthResponse, _$AuthResponse];
  @override
  final String wireName = 'AuthResponse';

  @override
  Iterable<Object> serialize(Serializers serializers, AuthResponse object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'status',
      serializers.serialize(object.status,
          specifiedType: const FullType(String)),
    ];
    if (object.message != null) {
      result
        ..add('message')
        ..add(serializers.serialize(object.message,
            specifiedType: const FullType(String)));
    }
    if (object.credential != null) {
      result
        ..add('credential')
        ..add(serializers.serialize(object.credential,
            specifiedType: const FullType(CredentialResponse)));
    }
    return result;
  }

  @override
  AuthResponse deserialize(Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new AuthResponseBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'status':
          result.status = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'message':
          result.message = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'credential':
          result.credential.replace(serializers.deserialize(value,
                  specifiedType: const FullType(CredentialResponse))
              as CredentialResponse);
          break;
      }
    }

    return result.build();
  }
}

class _$CredentialResponseSerializer
    implements StructuredSerializer<CredentialResponse> {
  @override
  final Iterable<Type> types = const [CredentialResponse, _$CredentialResponse];
  @override
  final String wireName = 'CredentialResponse';

  @override
  Iterable<Object> serialize(Serializers serializers, CredentialResponse object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'accessToken',
      serializers.serialize(object.accessToken,
          specifiedType: const FullType(String)),
      'refreshToken',
      serializers.serialize(object.refreshToken,
          specifiedType: const FullType(String)),
    ];

    return result;
  }

  @override
  CredentialResponse deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new CredentialResponseBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'accessToken':
          result.accessToken = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'refreshToken':
          result.refreshToken = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$AuthResponse extends AuthResponse {
  @override
  final String status;
  @override
  final String message;
  @override
  final CredentialResponse credential;

  factory _$AuthResponse([void Function(AuthResponseBuilder) updates]) =>
      (new AuthResponseBuilder()..update(updates)).build();

  _$AuthResponse._({this.status, this.message, this.credential}) : super._() {
    if (status == null) {
      throw new BuiltValueNullFieldError('AuthResponse', 'status');
    }
  }

  @override
  AuthResponse rebuild(void Function(AuthResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  AuthResponseBuilder toBuilder() => new AuthResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is AuthResponse &&
        status == other.status &&
        message == other.message &&
        credential == other.credential;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc(0, status.hashCode), message.hashCode), credential.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('AuthResponse')
          ..add('status', status)
          ..add('message', message)
          ..add('credential', credential))
        .toString();
  }
}

class AuthResponseBuilder
    implements Builder<AuthResponse, AuthResponseBuilder> {
  _$AuthResponse _$v;

  String _status;
  String get status => _$this._status;
  set status(String status) => _$this._status = status;

  String _message;
  String get message => _$this._message;
  set message(String message) => _$this._message = message;

  CredentialResponseBuilder _credential;
  CredentialResponseBuilder get credential =>
      _$this._credential ??= new CredentialResponseBuilder();
  set credential(CredentialResponseBuilder credential) =>
      _$this._credential = credential;

  AuthResponseBuilder();

  AuthResponseBuilder get _$this {
    if (_$v != null) {
      _status = _$v.status;
      _message = _$v.message;
      _credential = _$v.credential?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(AuthResponse other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$AuthResponse;
  }

  @override
  void update(void Function(AuthResponseBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$AuthResponse build() {
    _$AuthResponse _$result;
    try {
      _$result = _$v ??
          new _$AuthResponse._(
              status: status,
              message: message,
              credential: _credential?.build());
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'credential';
        _credential?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'AuthResponse', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$CredentialResponse extends CredentialResponse {
  @override
  final String accessToken;
  @override
  final String refreshToken;

  factory _$CredentialResponse(
          [void Function(CredentialResponseBuilder) updates]) =>
      (new CredentialResponseBuilder()..update(updates)).build();

  _$CredentialResponse._({this.accessToken, this.refreshToken}) : super._() {
    if (accessToken == null) {
      throw new BuiltValueNullFieldError('CredentialResponse', 'accessToken');
    }
    if (refreshToken == null) {
      throw new BuiltValueNullFieldError('CredentialResponse', 'refreshToken');
    }
  }

  @override
  CredentialResponse rebuild(
          void Function(CredentialResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CredentialResponseBuilder toBuilder() =>
      new CredentialResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CredentialResponse &&
        accessToken == other.accessToken &&
        refreshToken == other.refreshToken;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, accessToken.hashCode), refreshToken.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('CredentialResponse')
          ..add('accessToken', accessToken)
          ..add('refreshToken', refreshToken))
        .toString();
  }
}

class CredentialResponseBuilder
    implements Builder<CredentialResponse, CredentialResponseBuilder> {
  _$CredentialResponse _$v;

  String _accessToken;
  String get accessToken => _$this._accessToken;
  set accessToken(String accessToken) => _$this._accessToken = accessToken;

  String _refreshToken;
  String get refreshToken => _$this._refreshToken;
  set refreshToken(String refreshToken) => _$this._refreshToken = refreshToken;

  CredentialResponseBuilder();

  CredentialResponseBuilder get _$this {
    if (_$v != null) {
      _accessToken = _$v.accessToken;
      _refreshToken = _$v.refreshToken;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CredentialResponse other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$CredentialResponse;
  }

  @override
  void update(void Function(CredentialResponseBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$CredentialResponse build() {
    final _$result = _$v ??
        new _$CredentialResponse._(
            accessToken: accessToken, refreshToken: refreshToken);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
