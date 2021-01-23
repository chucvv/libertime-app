import 'package:moor/moor.dart';

abstract class AbstractExecutor {
  QueryExecutor provideExecutor({@required String dbFileName});
}
