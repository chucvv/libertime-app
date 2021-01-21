import 'package:moor/moor.dart';

@DataClassName('Profile')
class Profile extends Table {
  IntColumn get id => integer().autoIncrement()();
  TextColumn get fullname => text().nullable()();
  TextColumn get avatar => text().nullable()();
  TextColumn get firstName => text().named('first-name').nullable()();
  TextColumn get lastName => text().named('last-name').nullable()();
  TextColumn get email => text().nullable()();
}
