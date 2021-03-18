import 'dart:io';

import 'package:database/src/abstract_executor.dart';
import 'package:moor/ffi.dart';
import 'package:moor/moor.dart';
// ignore: implementation_imports
import 'package:moor/src/runtime/executor/executor.dart';
import 'package:path_provider/path_provider.dart';
import 'package:path/path.dart' as p;

class Executor extends AbstractExecutor {
  final bool logStatements;

  factory Executor({bool logStatements = false}) =>
      Executor._internal(logStatements);

  Executor._internal(this.logStatements);

  @override
  QueryExecutor provideExecutor({String dbFileName}) => LazyDatabase(() async {
        final dbFolder = await getApplicationDocumentsDirectory();
        final file = File(p.join(dbFolder.path, '$dbFileName.sqlite'));
        return VmDatabase(file, logStatements: logStatements);
      });
}
