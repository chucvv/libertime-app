import 'package:moor/moor.dart';
part 'user_database.g.dart';

@DataClassName('Profile')
class Profiles extends Table {
  TextColumn get userId => text().named('user_id')();
  TextColumn get fullName => text().named('full_name').nullable()();
  TextColumn get avatar => text().nullable()();
  TextColumn get firstName => text().named('first_name').nullable()();
  TextColumn get lastName => text().named('last_name').nullable()();
  TextColumn get email => text().nullable()();

  @override
  Set<Column> get primaryKey => {userId};
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
        onCreate: (Migrator m) {
          return m.createAll();
        },
        onUpgrade: (Migrator m, int from, int to) async {},
        beforeOpen: (details) async {
          if (details.wasCreated) {}
        });
  }

  Future<Profile> getProfile(String userId) =>
      (select(profiles)..where((t) => t.userId.equals(userId))).getSingle();

  Future<int> put(String userId, String fullName, String avatar,
          String firstName, String lastName, String email) =>
      into(profiles).insertOnConflictUpdate(Profile(
          userId: userId,
          fullName: fullName,
          avatar: avatar,
          firstName: firstName,
          lastName: lastName,
          email: email));
}
