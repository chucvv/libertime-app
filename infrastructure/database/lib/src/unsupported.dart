// ignore: implementation_imports
import 'package:moor/src/runtime/executor/executor.dart';

import 'abstract_executor.dart';

class Executor extends AbstractExecutor {
  factory Executor({bool logStatements = false}) {
    throw 'Platform not supported';
  }

  @override
  QueryExecutor provideExecutor({String dbFileName}) {
    throw UnimplementedError();
  }
}
