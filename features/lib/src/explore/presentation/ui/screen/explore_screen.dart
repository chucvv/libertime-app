import 'package:flutter/material.dart';
import 'package:flutter_fimber/flutter_fimber.dart';

class ExploreScreen extends StatefulWidget {
  const ExploreScreen({Key key}) : super(key: key);

  @override
  _ExploreScreenState createState() => _ExploreScreenState();
}

class _ExploreScreenState extends State<ExploreScreen>
    with AutomaticKeepAliveClientMixin<ExploreScreen> {
  @override
  void initState() {
    super.initState();
    Fimber.d("initState");
  }

  @override
  bool get wantKeepAlive => true;

  @override
  Widget build(BuildContext context) {
    super.build(context);
    return const SafeArea(
      child: Center(
        child: Text('Explore Page'),
      ),
    );
  }
}
