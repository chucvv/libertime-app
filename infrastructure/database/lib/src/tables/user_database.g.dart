// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_database.dart';

// **************************************************************************
// MoorGenerator
// **************************************************************************

// ignore_for_file: unnecessary_brace_in_string_interps, unnecessary_this
class UserInfo extends DataClass implements Insertable<UserInfo> {
  final String socialUid;
  final String uid;
  final String displayName;
  final String firstName;
  final String lastName;
  final String phoneNumber;
  final String picture;
  final String email;
  final String provider;
  final DateTime creationTime;
  final DateTime lastSignInTime;
  final String locale;
  UserInfo(
      {@required this.socialUid,
      @required this.uid,
      this.displayName,
      this.firstName,
      this.lastName,
      this.phoneNumber,
      this.picture,
      this.email,
      this.provider,
      this.creationTime,
      this.lastSignInTime,
      this.locale});
  factory UserInfo.fromData(Map<String, dynamic> data, GeneratedDatabase db,
      {String prefix}) {
    final effectivePrefix = prefix ?? '';
    final stringType = db.typeSystem.forDartType<String>();
    final dateTimeType = db.typeSystem.forDartType<DateTime>();
    return UserInfo(
      socialUid: stringType
          .mapFromDatabaseResponse(data['${effectivePrefix}social_uid']),
      uid: stringType.mapFromDatabaseResponse(data['${effectivePrefix}uid']),
      displayName: stringType
          .mapFromDatabaseResponse(data['${effectivePrefix}display_name']),
      firstName: stringType
          .mapFromDatabaseResponse(data['${effectivePrefix}first_name']),
      lastName: stringType
          .mapFromDatabaseResponse(data['${effectivePrefix}last_name']),
      phoneNumber: stringType
          .mapFromDatabaseResponse(data['${effectivePrefix}phone_number']),
      picture:
          stringType.mapFromDatabaseResponse(data['${effectivePrefix}picture']),
      email:
          stringType.mapFromDatabaseResponse(data['${effectivePrefix}email']),
      provider: stringType
          .mapFromDatabaseResponse(data['${effectivePrefix}provider']),
      creationTime: dateTimeType
          .mapFromDatabaseResponse(data['${effectivePrefix}creation_time']),
      lastSignInTime: dateTimeType
          .mapFromDatabaseResponse(data['${effectivePrefix}last_signin_time']),
      locale:
          stringType.mapFromDatabaseResponse(data['${effectivePrefix}locale']),
    );
  }
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (!nullToAbsent || socialUid != null) {
      map['social_uid'] = Variable<String>(socialUid);
    }
    if (!nullToAbsent || uid != null) {
      map['uid'] = Variable<String>(uid);
    }
    if (!nullToAbsent || displayName != null) {
      map['display_name'] = Variable<String>(displayName);
    }
    if (!nullToAbsent || firstName != null) {
      map['first_name'] = Variable<String>(firstName);
    }
    if (!nullToAbsent || lastName != null) {
      map['last_name'] = Variable<String>(lastName);
    }
    if (!nullToAbsent || phoneNumber != null) {
      map['phone_number'] = Variable<String>(phoneNumber);
    }
    if (!nullToAbsent || picture != null) {
      map['picture'] = Variable<String>(picture);
    }
    if (!nullToAbsent || email != null) {
      map['email'] = Variable<String>(email);
    }
    if (!nullToAbsent || provider != null) {
      map['provider'] = Variable<String>(provider);
    }
    if (!nullToAbsent || creationTime != null) {
      map['creation_time'] = Variable<DateTime>(creationTime);
    }
    if (!nullToAbsent || lastSignInTime != null) {
      map['last_signin_time'] = Variable<DateTime>(lastSignInTime);
    }
    if (!nullToAbsent || locale != null) {
      map['locale'] = Variable<String>(locale);
    }
    return map;
  }

  UserInfosCompanion toCompanion(bool nullToAbsent) {
    return UserInfosCompanion(
      socialUid: socialUid == null && nullToAbsent
          ? const Value.absent()
          : Value(socialUid),
      uid: uid == null && nullToAbsent ? const Value.absent() : Value(uid),
      displayName: displayName == null && nullToAbsent
          ? const Value.absent()
          : Value(displayName),
      firstName: firstName == null && nullToAbsent
          ? const Value.absent()
          : Value(firstName),
      lastName: lastName == null && nullToAbsent
          ? const Value.absent()
          : Value(lastName),
      phoneNumber: phoneNumber == null && nullToAbsent
          ? const Value.absent()
          : Value(phoneNumber),
      picture: picture == null && nullToAbsent
          ? const Value.absent()
          : Value(picture),
      email:
          email == null && nullToAbsent ? const Value.absent() : Value(email),
      provider: provider == null && nullToAbsent
          ? const Value.absent()
          : Value(provider),
      creationTime: creationTime == null && nullToAbsent
          ? const Value.absent()
          : Value(creationTime),
      lastSignInTime: lastSignInTime == null && nullToAbsent
          ? const Value.absent()
          : Value(lastSignInTime),
      locale:
          locale == null && nullToAbsent ? const Value.absent() : Value(locale),
    );
  }

  factory UserInfo.fromJson(Map<String, dynamic> json,
      {ValueSerializer serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return UserInfo(
      socialUid: serializer.fromJson<String>(json['socialUid']),
      uid: serializer.fromJson<String>(json['uid']),
      displayName: serializer.fromJson<String>(json['displayName']),
      firstName: serializer.fromJson<String>(json['firstName']),
      lastName: serializer.fromJson<String>(json['lastName']),
      phoneNumber: serializer.fromJson<String>(json['phoneNumber']),
      picture: serializer.fromJson<String>(json['picture']),
      email: serializer.fromJson<String>(json['email']),
      provider: serializer.fromJson<String>(json['provider']),
      creationTime: serializer.fromJson<DateTime>(json['creationTime']),
      lastSignInTime: serializer.fromJson<DateTime>(json['lastSignInTime']),
      locale: serializer.fromJson<String>(json['locale']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'socialUid': serializer.toJson<String>(socialUid),
      'uid': serializer.toJson<String>(uid),
      'displayName': serializer.toJson<String>(displayName),
      'firstName': serializer.toJson<String>(firstName),
      'lastName': serializer.toJson<String>(lastName),
      'phoneNumber': serializer.toJson<String>(phoneNumber),
      'picture': serializer.toJson<String>(picture),
      'email': serializer.toJson<String>(email),
      'provider': serializer.toJson<String>(provider),
      'creationTime': serializer.toJson<DateTime>(creationTime),
      'lastSignInTime': serializer.toJson<DateTime>(lastSignInTime),
      'locale': serializer.toJson<String>(locale),
    };
  }

  UserInfo copyWith(
          {String socialUid,
          String uid,
          String displayName,
          String firstName,
          String lastName,
          String phoneNumber,
          String picture,
          String email,
          String provider,
          DateTime creationTime,
          DateTime lastSignInTime,
          String locale}) =>
      UserInfo(
        socialUid: socialUid ?? this.socialUid,
        uid: uid ?? this.uid,
        displayName: displayName ?? this.displayName,
        firstName: firstName ?? this.firstName,
        lastName: lastName ?? this.lastName,
        phoneNumber: phoneNumber ?? this.phoneNumber,
        picture: picture ?? this.picture,
        email: email ?? this.email,
        provider: provider ?? this.provider,
        creationTime: creationTime ?? this.creationTime,
        lastSignInTime: lastSignInTime ?? this.lastSignInTime,
        locale: locale ?? this.locale,
      );
  @override
  String toString() {
    return (StringBuffer('UserInfo(')
          ..write('socialUid: $socialUid, ')
          ..write('uid: $uid, ')
          ..write('displayName: $displayName, ')
          ..write('firstName: $firstName, ')
          ..write('lastName: $lastName, ')
          ..write('phoneNumber: $phoneNumber, ')
          ..write('picture: $picture, ')
          ..write('email: $email, ')
          ..write('provider: $provider, ')
          ..write('creationTime: $creationTime, ')
          ..write('lastSignInTime: $lastSignInTime, ')
          ..write('locale: $locale')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => $mrjf($mrjc(
      socialUid.hashCode,
      $mrjc(
          uid.hashCode,
          $mrjc(
              displayName.hashCode,
              $mrjc(
                  firstName.hashCode,
                  $mrjc(
                      lastName.hashCode,
                      $mrjc(
                          phoneNumber.hashCode,
                          $mrjc(
                              picture.hashCode,
                              $mrjc(
                                  email.hashCode,
                                  $mrjc(
                                      provider.hashCode,
                                      $mrjc(
                                          creationTime.hashCode,
                                          $mrjc(lastSignInTime.hashCode,
                                              locale.hashCode))))))))))));
  @override
  bool operator ==(dynamic other) =>
      identical(this, other) ||
      (other is UserInfo &&
          other.socialUid == this.socialUid &&
          other.uid == this.uid &&
          other.displayName == this.displayName &&
          other.firstName == this.firstName &&
          other.lastName == this.lastName &&
          other.phoneNumber == this.phoneNumber &&
          other.picture == this.picture &&
          other.email == this.email &&
          other.provider == this.provider &&
          other.creationTime == this.creationTime &&
          other.lastSignInTime == this.lastSignInTime &&
          other.locale == this.locale);
}

class UserInfosCompanion extends UpdateCompanion<UserInfo> {
  final Value<String> socialUid;
  final Value<String> uid;
  final Value<String> displayName;
  final Value<String> firstName;
  final Value<String> lastName;
  final Value<String> phoneNumber;
  final Value<String> picture;
  final Value<String> email;
  final Value<String> provider;
  final Value<DateTime> creationTime;
  final Value<DateTime> lastSignInTime;
  final Value<String> locale;
  const UserInfosCompanion({
    this.socialUid = const Value.absent(),
    this.uid = const Value.absent(),
    this.displayName = const Value.absent(),
    this.firstName = const Value.absent(),
    this.lastName = const Value.absent(),
    this.phoneNumber = const Value.absent(),
    this.picture = const Value.absent(),
    this.email = const Value.absent(),
    this.provider = const Value.absent(),
    this.creationTime = const Value.absent(),
    this.lastSignInTime = const Value.absent(),
    this.locale = const Value.absent(),
  });
  UserInfosCompanion.insert({
    @required String socialUid,
    @required String uid,
    this.displayName = const Value.absent(),
    this.firstName = const Value.absent(),
    this.lastName = const Value.absent(),
    this.phoneNumber = const Value.absent(),
    this.picture = const Value.absent(),
    this.email = const Value.absent(),
    this.provider = const Value.absent(),
    this.creationTime = const Value.absent(),
    this.lastSignInTime = const Value.absent(),
    this.locale = const Value.absent(),
  })  : socialUid = Value(socialUid),
        uid = Value(uid);
  static Insertable<UserInfo> custom({
    Expression<String> socialUid,
    Expression<String> uid,
    Expression<String> displayName,
    Expression<String> firstName,
    Expression<String> lastName,
    Expression<String> phoneNumber,
    Expression<String> picture,
    Expression<String> email,
    Expression<String> provider,
    Expression<DateTime> creationTime,
    Expression<DateTime> lastSignInTime,
    Expression<String> locale,
  }) {
    return RawValuesInsertable({
      if (socialUid != null) 'social_uid': socialUid,
      if (uid != null) 'uid': uid,
      if (displayName != null) 'display_name': displayName,
      if (firstName != null) 'first_name': firstName,
      if (lastName != null) 'last_name': lastName,
      if (phoneNumber != null) 'phone_number': phoneNumber,
      if (picture != null) 'picture': picture,
      if (email != null) 'email': email,
      if (provider != null) 'provider': provider,
      if (creationTime != null) 'creation_time': creationTime,
      if (lastSignInTime != null) 'last_signin_time': lastSignInTime,
      if (locale != null) 'locale': locale,
    });
  }

  UserInfosCompanion copyWith(
      {Value<String> socialUid,
      Value<String> uid,
      Value<String> displayName,
      Value<String> firstName,
      Value<String> lastName,
      Value<String> phoneNumber,
      Value<String> picture,
      Value<String> email,
      Value<String> provider,
      Value<DateTime> creationTime,
      Value<DateTime> lastSignInTime,
      Value<String> locale}) {
    return UserInfosCompanion(
      socialUid: socialUid ?? this.socialUid,
      uid: uid ?? this.uid,
      displayName: displayName ?? this.displayName,
      firstName: firstName ?? this.firstName,
      lastName: lastName ?? this.lastName,
      phoneNumber: phoneNumber ?? this.phoneNumber,
      picture: picture ?? this.picture,
      email: email ?? this.email,
      provider: provider ?? this.provider,
      creationTime: creationTime ?? this.creationTime,
      lastSignInTime: lastSignInTime ?? this.lastSignInTime,
      locale: locale ?? this.locale,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (socialUid.present) {
      map['social_uid'] = Variable<String>(socialUid.value);
    }
    if (uid.present) {
      map['uid'] = Variable<String>(uid.value);
    }
    if (displayName.present) {
      map['display_name'] = Variable<String>(displayName.value);
    }
    if (firstName.present) {
      map['first_name'] = Variable<String>(firstName.value);
    }
    if (lastName.present) {
      map['last_name'] = Variable<String>(lastName.value);
    }
    if (phoneNumber.present) {
      map['phone_number'] = Variable<String>(phoneNumber.value);
    }
    if (picture.present) {
      map['picture'] = Variable<String>(picture.value);
    }
    if (email.present) {
      map['email'] = Variable<String>(email.value);
    }
    if (provider.present) {
      map['provider'] = Variable<String>(provider.value);
    }
    if (creationTime.present) {
      map['creation_time'] = Variable<DateTime>(creationTime.value);
    }
    if (lastSignInTime.present) {
      map['last_signin_time'] = Variable<DateTime>(lastSignInTime.value);
    }
    if (locale.present) {
      map['locale'] = Variable<String>(locale.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('UserInfosCompanion(')
          ..write('socialUid: $socialUid, ')
          ..write('uid: $uid, ')
          ..write('displayName: $displayName, ')
          ..write('firstName: $firstName, ')
          ..write('lastName: $lastName, ')
          ..write('phoneNumber: $phoneNumber, ')
          ..write('picture: $picture, ')
          ..write('email: $email, ')
          ..write('provider: $provider, ')
          ..write('creationTime: $creationTime, ')
          ..write('lastSignInTime: $lastSignInTime, ')
          ..write('locale: $locale')
          ..write(')'))
        .toString();
  }
}

class $UserInfosTable extends UserInfos
    with TableInfo<$UserInfosTable, UserInfo> {
  final GeneratedDatabase _db;
  final String _alias;
  $UserInfosTable(this._db, [this._alias]);
  final VerificationMeta _socialUidMeta = const VerificationMeta('socialUid');
  GeneratedTextColumn _socialUid;
  @override
  GeneratedTextColumn get socialUid => _socialUid ??= _constructSocialUid();
  GeneratedTextColumn _constructSocialUid() {
    return GeneratedTextColumn(
      'social_uid',
      $tableName,
      false,
    );
  }

  final VerificationMeta _uidMeta = const VerificationMeta('uid');
  GeneratedTextColumn _uid;
  @override
  GeneratedTextColumn get uid => _uid ??= _constructUid();
  GeneratedTextColumn _constructUid() {
    return GeneratedTextColumn(
      'uid',
      $tableName,
      false,
    );
  }

  final VerificationMeta _displayNameMeta =
      const VerificationMeta('displayName');
  GeneratedTextColumn _displayName;
  @override
  GeneratedTextColumn get displayName =>
      _displayName ??= _constructDisplayName();
  GeneratedTextColumn _constructDisplayName() {
    return GeneratedTextColumn(
      'display_name',
      $tableName,
      true,
    );
  }

  final VerificationMeta _firstNameMeta = const VerificationMeta('firstName');
  GeneratedTextColumn _firstName;
  @override
  GeneratedTextColumn get firstName => _firstName ??= _constructFirstName();
  GeneratedTextColumn _constructFirstName() {
    return GeneratedTextColumn(
      'first_name',
      $tableName,
      true,
    );
  }

  final VerificationMeta _lastNameMeta = const VerificationMeta('lastName');
  GeneratedTextColumn _lastName;
  @override
  GeneratedTextColumn get lastName => _lastName ??= _constructLastName();
  GeneratedTextColumn _constructLastName() {
    return GeneratedTextColumn(
      'last_name',
      $tableName,
      true,
    );
  }

  final VerificationMeta _phoneNumberMeta =
      const VerificationMeta('phoneNumber');
  GeneratedTextColumn _phoneNumber;
  @override
  GeneratedTextColumn get phoneNumber =>
      _phoneNumber ??= _constructPhoneNumber();
  GeneratedTextColumn _constructPhoneNumber() {
    return GeneratedTextColumn(
      'phone_number',
      $tableName,
      true,
    );
  }

  final VerificationMeta _pictureMeta = const VerificationMeta('picture');
  GeneratedTextColumn _picture;
  @override
  GeneratedTextColumn get picture => _picture ??= _constructPicture();
  GeneratedTextColumn _constructPicture() {
    return GeneratedTextColumn(
      'picture',
      $tableName,
      true,
    );
  }

  final VerificationMeta _emailMeta = const VerificationMeta('email');
  GeneratedTextColumn _email;
  @override
  GeneratedTextColumn get email => _email ??= _constructEmail();
  GeneratedTextColumn _constructEmail() {
    return GeneratedTextColumn(
      'email',
      $tableName,
      true,
    );
  }

  final VerificationMeta _providerMeta = const VerificationMeta('provider');
  GeneratedTextColumn _provider;
  @override
  GeneratedTextColumn get provider => _provider ??= _constructProvider();
  GeneratedTextColumn _constructProvider() {
    return GeneratedTextColumn(
      'provider',
      $tableName,
      true,
    );
  }

  final VerificationMeta _creationTimeMeta =
      const VerificationMeta('creationTime');
  GeneratedDateTimeColumn _creationTime;
  @override
  GeneratedDateTimeColumn get creationTime =>
      _creationTime ??= _constructCreationTime();
  GeneratedDateTimeColumn _constructCreationTime() {
    return GeneratedDateTimeColumn(
      'creation_time',
      $tableName,
      true,
    );
  }

  final VerificationMeta _lastSignInTimeMeta =
      const VerificationMeta('lastSignInTime');
  GeneratedDateTimeColumn _lastSignInTime;
  @override
  GeneratedDateTimeColumn get lastSignInTime =>
      _lastSignInTime ??= _constructLastSignInTime();
  GeneratedDateTimeColumn _constructLastSignInTime() {
    return GeneratedDateTimeColumn(
      'last_signin_time',
      $tableName,
      true,
    );
  }

  final VerificationMeta _localeMeta = const VerificationMeta('locale');
  GeneratedTextColumn _locale;
  @override
  GeneratedTextColumn get locale => _locale ??= _constructLocale();
  GeneratedTextColumn _constructLocale() {
    return GeneratedTextColumn(
      'locale',
      $tableName,
      true,
    );
  }

  @override
  List<GeneratedColumn> get $columns => [
        socialUid,
        uid,
        displayName,
        firstName,
        lastName,
        phoneNumber,
        picture,
        email,
        provider,
        creationTime,
        lastSignInTime,
        locale
      ];
  @override
  $UserInfosTable get asDslTable => this;
  @override
  String get $tableName => _alias ?? 'user_infos';
  @override
  final String actualTableName = 'user_infos';
  @override
  VerificationContext validateIntegrity(Insertable<UserInfo> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('social_uid')) {
      context.handle(_socialUidMeta,
          socialUid.isAcceptableOrUnknown(data['social_uid'], _socialUidMeta));
    } else if (isInserting) {
      context.missing(_socialUidMeta);
    }
    if (data.containsKey('uid')) {
      context.handle(
          _uidMeta, uid.isAcceptableOrUnknown(data['uid'], _uidMeta));
    } else if (isInserting) {
      context.missing(_uidMeta);
    }
    if (data.containsKey('display_name')) {
      context.handle(
          _displayNameMeta,
          displayName.isAcceptableOrUnknown(
              data['display_name'], _displayNameMeta));
    }
    if (data.containsKey('first_name')) {
      context.handle(_firstNameMeta,
          firstName.isAcceptableOrUnknown(data['first_name'], _firstNameMeta));
    }
    if (data.containsKey('last_name')) {
      context.handle(_lastNameMeta,
          lastName.isAcceptableOrUnknown(data['last_name'], _lastNameMeta));
    }
    if (data.containsKey('phone_number')) {
      context.handle(
          _phoneNumberMeta,
          phoneNumber.isAcceptableOrUnknown(
              data['phone_number'], _phoneNumberMeta));
    }
    if (data.containsKey('picture')) {
      context.handle(_pictureMeta,
          picture.isAcceptableOrUnknown(data['picture'], _pictureMeta));
    }
    if (data.containsKey('email')) {
      context.handle(
          _emailMeta, email.isAcceptableOrUnknown(data['email'], _emailMeta));
    }
    if (data.containsKey('provider')) {
      context.handle(_providerMeta,
          provider.isAcceptableOrUnknown(data['provider'], _providerMeta));
    }
    if (data.containsKey('creation_time')) {
      context.handle(
          _creationTimeMeta,
          creationTime.isAcceptableOrUnknown(
              data['creation_time'], _creationTimeMeta));
    }
    if (data.containsKey('last_signin_time')) {
      context.handle(
          _lastSignInTimeMeta,
          lastSignInTime.isAcceptableOrUnknown(
              data['last_signin_time'], _lastSignInTimeMeta));
    }
    if (data.containsKey('locale')) {
      context.handle(_localeMeta,
          locale.isAcceptableOrUnknown(data['locale'], _localeMeta));
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {uid};
  @override
  UserInfo map(Map<String, dynamic> data, {String tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : null;
    return UserInfo.fromData(data, _db, prefix: effectivePrefix);
  }

  @override
  $UserInfosTable createAlias(String alias) {
    return $UserInfosTable(_db, alias);
  }
}

abstract class _$UserDatabase extends GeneratedDatabase {
  _$UserDatabase(QueryExecutor e) : super(SqlTypeSystem.defaultInstance, e);
  $UserInfosTable _userInfos;
  $UserInfosTable get userInfos => _userInfos ??= $UserInfosTable(this);
  @override
  Iterable<TableInfo> get allTables => allSchemaEntities.whereType<TableInfo>();
  @override
  List<DatabaseSchemaEntity> get allSchemaEntities => [userInfos];
}
