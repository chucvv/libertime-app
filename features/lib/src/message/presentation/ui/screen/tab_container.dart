import 'package:features/src/message/presentation/ui/screen/history_tab.dart';
import 'package:features/src/message/presentation/ui/screen/match_tab.dart';
import 'package:flutter/material.dart';
import 'package:flutter_fimber/flutter_fimber.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:share_ui/awesome_ui.dart';

class MessageScreen extends StatefulWidget {
  @override
  _MessageScreenState createState() => _MessageScreenState();
}

class _MessageScreenState extends State<MessageScreen>
    with AutomaticKeepAliveClientMixin<MessageScreen> {
  final List<Widget> _widgePage = [ChatHistoryScreen(), MatchScreen()];
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
        backgroundColor: AppColors.primaryColor[500],
        appBar: StyleAppBar(
          backgroundColor: AppColors.primaryColor[500],
          height: ScreenUtil().setHeight(40),
          title: TabBar(
            isScrollable: true,
            indicatorSize: TabBarIndicatorSize.tab,
            indicatorColor: kAccentColorVariant,
            labelColor: kAccentColorVariant,
            unselectedLabelColor: Colors.white,
            tabs: _tabs,
            labelStyle: Theme.of(context)
                .appBarTheme
                .textTheme
                .headline3
                .copyWith(letterSpacing: 2),
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
