import 'package:moor/moor.dart';

@DataClassName('UserInfo')
class UserInfos extends Table {
  TextColumn get socialUid => text().named('social_uid')();
  TextColumn get uid => text().named('uid')();
  TextColumn get displayName => text().named('display_name').nullable()();
  TextColumn get firstName => text().named('first_name').nullable()();
  TextColumn get lastName => text().named('last_name').nullable()();
  TextColumn get phoneNumber => text().named('phone_number').nullable()();
  TextColumn get picture => text().nullable()();
  TextColumn get email => text().nullable()();
  TextColumn get provider => text().nullable()();
  DateTimeColumn get creationTime =>
      dateTime().named('creation_time').nullable()();
  DateTimeColumn get lastSignInTime =>
      dateTime().named('last_signin_time').nullable()();
  TextColumn get locale => text().nullable()();

  @override
  Set<Column> get primaryKey => {uid};
}
