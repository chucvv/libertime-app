import 'package:flutter/material.dart';
import 'package:moor/moor_web.dart';
// ignore: implementation_imports
import 'package:moor/src/runtime/executor/executor.dart';

import 'abstract_executor.dart';

class Executor extends AbstractExecutor {
  final bool logStatements;
  factory Executor({bool logStatements = false}) =>
      Executor._internal(logStatements);
  Executor._internal(this.logStatements);
  @override
  QueryExecutor provideExecutor({@required String dbFileName}) {
    return WebDatabase(dbFileName, logStatements: logStatements);
  }
}
