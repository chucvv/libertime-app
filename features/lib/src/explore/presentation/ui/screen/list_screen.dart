import 'package:flutter/material.dart';
import 'package:flutter_fimber/flutter_fimber.dart';

class ListScreen extends StatefulWidget {
  @override
  _ListScreenState createState() => _ListScreenState();
}

class _ListScreenState extends State<ListScreen> {
  @override
  void initState() {
    super.initState();
    Fimber.d("initState");
  }

  @override
  Widget build(BuildContext context) {
    return Container(alignment: Alignment.center, child: Text('list'));
  }
}
