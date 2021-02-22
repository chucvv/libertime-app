import 'package:flutter/material.dart';
import 'package:share_ui/awesome_ui.dart';

class SettingScreen extends StatelessWidget {
  const SettingScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: StyleAppBar(
        height: 60.0,
      ),
      body: Center().topRound(),
    );
  }
}
