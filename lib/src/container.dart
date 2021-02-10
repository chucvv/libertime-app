import 'package:features/modules.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:share_ui/awesome_ui.dart';

import 'strings.dart';

class MainContainer extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _MainContainerState();
}

class _MainContainerState extends State<MainContainer> {
  final List<Widget> _widgePage = [
    HomeScreen(),
    ExploreScreen(),
    MessageHistoryScreen()
  ];
  final List<Widget> _tabs = [
    Tab(
      child: Align(
        alignment: Alignment.center,
        child: Column(
          children: [
            Icon(IconFonts.home),
            Text(Strings.navigatorHomeTitle),
          ],
        ),
      ),
    ),
    Tab(
      child: Align(
        alignment: Alignment.center,
        child: Column(
          children: [
            Icon(IconFonts.explore),
            Text(Strings.navigatorExploreTitle),
          ],
        ),
      ),
    ),
    Tab(
      child: Align(
        alignment: Alignment.center,
        child: Column(
          children: [
            Icon(IconFonts.wechat),
            Text(Strings.navigatorMessageTitle),
          ],
        ),
      ),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: _tabs.length,
      child: Scaffold(
        backgroundColor: clBackgroud,
        appBar: AppBar(
          leading: Container(
            margin: EdgeInsetsDirectional.only(start: 10),
            child: Icon(
              IconFonts.heartbeat,
              size: 40,
              color: Colors.redAccent,
            ),
          ),
          title: Text(Strings.appName),
          actions: [
            IconButton(icon: Icon(IconFonts.bell_alt), onPressed: () {})
          ],
        ),
        bottomNavigationBar: TabBar(
          indicatorSize: TabBarIndicatorSize.tab,
          indicatorColor: Theme.of(context).primaryColor,
          indicator: BoxDecoration(
              color: Theme.of(context).primaryColor,
              borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(10),
                  bottomRight: Radius.circular(10))),
          labelColor: Colors.white,
          unselectedLabelColor: Theme.of(context).primaryColor,
          tabs: _tabs,
        ),
        body: TabBarView(
          physics: NeverScrollableScrollPhysics(),
          children: _widgePage,
        ),
      ),
    );
  }
}
