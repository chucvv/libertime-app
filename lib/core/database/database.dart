// This annotation tells the code generator which tables this DB works with
import 'package:libertime/constants/config.dart';
import 'package:moor_flutter/moor_flutter.dart';

part 'database.g.dart';

@UseMoor(tables: [WorkspaceTable])
// _$AppDatabase is the name of the generated class
class AppDatabase extends _$AppDatabase {
  AppDatabase()
      // Specify the location of the database file
      : super(FlutterQueryExecutor.inDatabaseFolder(
          path: 'db.sqlite',
          // Good for debugging - prints SQL in the console
          logStatements: !Config.isRelease,
        ));

  // Bump this when changing tables and columns.
  // Migrations will be covered in the next part.
  @override
  int get schemaVersion => 1;
}

// The default data class name "Tasks" would now be "ProjectInfo"
@DataClassName('WorkspaceLocalModel')
class WorkspaceTable extends Table {
  // autoIncrement automatically sets this to be the primary key
  IntColumn get id => integer().autoIncrement()();

  TextColumn get ownerId => text().withDefault(const Constant(""))();

  // If the length constraint is not fulfilled, the Task will not
  // be inserted into the database and an exception will be thrown.
  TextColumn get name => text().withLength(min: 1, max: 250)();

  // DateTime is not natively supported by SQLite
  // Moor converts it to & from UNIX seconds
  DateTimeColumn get created => dateTime().nullable()();

  IntColumn get projectsRemaining => integer()();

  IntColumn get projectsCompletion => integer()();

  @override
  Set<Column> get primaryKey => {id, name};
}
