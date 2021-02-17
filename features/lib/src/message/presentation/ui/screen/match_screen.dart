import 'package:flutter/material.dart';

class MatchScreen extends StatefulWidget {
  @override
  _ChatScreenState createState() => _ChatScreenState();
}

class _ChatScreenState extends State<MatchScreen>
    with AutomaticKeepAliveClientMixin<MatchScreen> {
  @override
  Widget build(BuildContext context) {
    super.build(context);
    return Container();
  }

  @override
  bool get wantKeepAlive => true;
}
