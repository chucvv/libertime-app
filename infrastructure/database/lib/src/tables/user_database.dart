import 'package:moor/moor.dart';

import 'user_info_table.dart';
part 'user_database.g.dart';

@UseMoor(tables: [UserInfos])
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

  Future<UserInfo> getUserInfo() => (select(userInfos)..limit(1)).getSingle();

  Future<int> putUserInfo(UserInfo userInfo) =>
      into(userInfos).insertOnConflictUpdate(userInfo);

  Future<void> removeUserInfo(String uid) =>
      (delete(userInfos)..where((t) => t.uid.equals(uid))).go();
}
