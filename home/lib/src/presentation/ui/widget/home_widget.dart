import 'package:flutter/material.dart';
import 'package:share_ui/awesome_ui.dart';

class HomeWidget extends StatelessWidget {
  const HomeWidget({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: lTPrimaryColor,
        appBar: AppBar(),
        body: const Center(
          child: Text("Home Page"),
        ),
      ),
    );
  }
}
