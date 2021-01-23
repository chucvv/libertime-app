import 'package:moor/moor.dart';
part 'global_database.g.dart';

@DataClassName('GlobalSetting')
class GlobalSettings extends Table {
  IntColumn get id => integer().autoIncrement()();
  TextColumn get key => text()();
  TextColumn get value => text()();
}

@UseMoor(tables: [GlobalSettings])
class GlobalDatabase extends _$GlobalDatabase {
  GlobalDatabase(QueryExecutor e) : super(e);

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

  Future<GlobalSetting> getValue(String key) =>
      (select(globalSettings)..where((t) => t.key.equals(key))).getSingle();

  Future<int> put(String key, String value) =>
      into(globalSettings).insertOnConflictUpdate(
          GlobalSettingsCompanion.insert(key: key, value: value));

  Future remove(String key) =>
      (delete(globalSettings)..where((t) => t.key.equals(key))).go();
}
