import 'package:features/src/message/presentation/ui/screen/message_history_screen.dart';
import 'package:features/src/message/presentation/ui/screen/match_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_fimber/flutter_fimber.dart';

class MessageScreen extends StatefulWidget {
  @override
  _MessageScreenState createState() => _MessageScreenState();
}

class _MessageScreenState extends State<MessageScreen>
    with AutomaticKeepAliveClientMixin<MessageScreen> {
  final List<Widget> _widgePage = [MessageHistoryScreen(), MatchScreen()];
  final List<Widget> _tabs = [
    Tab(
      child: Text('All'),
    ),
    Tab(
      child: Text('Matches'),
    ),
  ];
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
    return DefaultTabController(
      length: _tabs.length,
      child: Scaffold(
        appBar: AppBar(
          title: TabBar(
            isScrollable: true,
            indicatorSize: TabBarIndicatorSize.tab,
            indicatorColor: Colors.redAccent,
            labelColor: Colors.redAccent,
            unselectedLabelColor: Theme.of(context).disabledColor,
            tabs: _tabs,
            labelStyle: Theme.of(context)
                .textTheme
                .headline5
                .copyWith(fontWeight: FontWeight.bold),
          ),
        ),
        body: TabBarView(
          physics: NeverScrollableScrollPhysics(),
          children: _widgePage,
        ),
      ),
    );
  }
}
