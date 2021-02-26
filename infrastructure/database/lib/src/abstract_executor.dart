import 'package:moor/moor.dart';

// ignore: one_member_abstracts
abstract class AbstractExecutor {
  QueryExecutor provideExecutor({@required String dbFileName});
}
