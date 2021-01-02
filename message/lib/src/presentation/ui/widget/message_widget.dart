import 'package:flutter/material.dart';

class MessageWidget extends StatelessWidget {
  const MessageWidget({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Center(
        child: Text("Chat Page"),
      ),
    );
  }
}
