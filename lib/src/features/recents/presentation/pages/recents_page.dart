import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:widget/src/app_theme.dart';

class RecentProjectPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: lTPrimaryColor,
        appBar: AppBar(),
        body: Center(
          child: Text("RecentProjectPage"),
        ),
      ),
    );
  }
}
