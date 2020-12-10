import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:share_ui/awesome_ui.dart';

class RecentProjectPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: lTPrimaryColor,
        appBar: AppBar(),
        body: const Center(
          child: Text("RecentProjectPage"),
        ),
      ),
    );
  }
}
