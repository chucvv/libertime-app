import 'package:moor/moor.dart';

import 'user_table.dart';
part 'user_database.g.dart';

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

  Future<Profile> getProfile() => (select(profiles)..limit(1)).getSingle();

  Future<int> put(Profile profile) =>
      into(profiles).insertOnConflictUpdate(profile);

  Future<void> remove(String uid) =>
      (delete(profiles)..where((t) => t.uid.equals(uid))).go();
}
