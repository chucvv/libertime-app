import 'package:moor/moor.dart';
part 'user_database.g.dart';

@DataClassName('Profile')
class Profiles extends Table {
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

@UseMoor(tables: [Profiles])
class UserDatabase extends _$UserDatabase {
  UserDatabase(QueryExecutor e) : super(e);

  // you should bump this number whenever you change or add a table definition.
  @override
  int get schemaVersion => 1;

  @override
  MigrationStrategy get migration {
    return MigrationStrategy(
        onCreate: (m) {
          return m.createAll();
        },
        onUpgrade: (m, from, to) async {},
        beforeOpen: (details) async {
          if (details.wasCreated) {}
        });
  }

  Future<Profile> getProfile(String uid) =>
      (select(profiles)..where((t) => t.uid.equals(uid))).getSingle();

  Future<int> put(
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
          String locale) =>
      into(profiles).insertOnConflictUpdate(Profile(
          uid: uid,
          displayName: displayName,
          firstName: firstName,
          lastName: lastName,
          picture: picture,
          email: email,
          phoneNumber: phoneNumber,
          provider: provider,
          creationTime: creationTime,
          lastSignInTime: lastSignInTime,
          locale: locale));
}
