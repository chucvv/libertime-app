import 'package:database/database.dart';
import 'package:features/src/constants.dart';
import 'package:flutter/material.dart';

class HomeWidget extends StatefulWidget {
  HomeWidget({Key key}) : super(key: key);

  @override
  _HomeWidgetState createState() => _HomeWidgetState();
}

class _HomeWidgetState extends State<HomeWidget> {
  @override
  void initState() {
    super.initState();
    GlobalDatabase(Executor(logStatements: true)
            .provideExecutor(dbFileName: globalDbFileName))
        .put('test', 'value');
  }

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Center(
        child: Text('Home Page'),
      ),
    );
  }
}
