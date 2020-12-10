import 'package:common_ui/awesome_ui.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class FavoriteProjectPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: lTPrimaryColor,
        appBar: AppBar(),
        body: const Center(
          child: Text("FavoriteWorkspacePage"),
        ),
      ),
    );
  }
}
