// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'auth_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<AuthRequest> _$authRequestSerializer = new _$AuthRequestSerializer();

class _$AuthRequestSerializer implements StructuredSerializer<AuthRequest> {
  @override
  final Iterable<Type> types = const [AuthRequest, _$AuthRequest];
  @override
  final String wireName = 'AuthRequest';

  @override
  Iterable<Object> serialize(Serializers serializers, AuthRequest object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'username',
      serializers.serialize(object.username,
          specifiedType: const FullType(String)),
      'password',
      serializers.serialize(object.password,
          specifiedType: const FullType(String)),
    ];

    return result;
  }

  @override
  AuthRequest deserialize(Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new AuthRequestBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'username':
          result.username = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'password':
          result.password = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$AuthRequest extends AuthRequest {
  @override
  final String username;
  @override
  final String password;

  factory _$AuthRequest([void Function(AuthRequestBuilder) updates]) =>
      (new AuthRequestBuilder()..update(updates)).build();

  _$AuthRequest._({this.username, this.password}) : super._() {
    if (username == null) {
      throw new BuiltValueNullFieldError('AuthRequest', 'username');
    }
    if (password == null) {
      throw new BuiltValueNullFieldError('AuthRequest', 'password');
    }
  }

  @override
  AuthRequest rebuild(void Function(AuthRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  AuthRequestBuilder toBuilder() => new AuthRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is AuthRequest &&
        username == other.username &&
        password == other.password;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, username.hashCode), password.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('AuthRequest')
          ..add('username', username)
          ..add('password', password))
        .toString();
  }
}

class AuthRequestBuilder implements Builder<AuthRequest, AuthRequestBuilder> {
  _$AuthRequest _$v;

  String _username;
  String get username => _$this._username;
  set username(String username) => _$this._username = username;

  String _password;
  String get password => _$this._password;
  set password(String password) => _$this._password = password;

  AuthRequestBuilder();

  AuthRequestBuilder get _$this {
    if (_$v != null) {
      _username = _$v.username;
      _password = _$v.password;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(AuthRequest other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$AuthRequest;
  }

  @override
  void update(void Function(AuthRequestBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$AuthRequest build() {
    final _$result =
        _$v ?? new _$AuthRequest._(username: username, password: password);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
