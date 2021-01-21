import 'package:moor/moor.dart';

@DataClassName('GlobalSetting')
class GlobalSetting extends Table {
  IntColumn get id => integer().autoIncrement()();
  TextColumn get key => text()();
  TextColumn get value => text()();
}
