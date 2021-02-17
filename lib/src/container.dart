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
    MessageScreen(),
    SettingScreen()
  ];
  final List<Widget> _tabs = [
    Tab(
      child: Align(
        alignment: Alignment.center,
        child: Column(
          children: [
            Icon(IconFonts.home),
            Text(
              Strings.navigatorHomeTitle,
            ),
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
    Tab(
      child: Align(
        alignment: Alignment.center,
        child: Column(
          children: [
            Icon(IconFonts.cog),
            Text(Strings.navigatorSettingTitle),
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
        bottomNavigationBar: Container(
          decoration: BoxDecoration(
            color: clBackgroud,
            boxShadow: [
              BoxShadow(
                  color: Colors.grey.shade400,
                  offset: Offset(0.0, 0.5),
                  blurRadius: 20.0)
            ],
          ),
          child: TabBar(
            labelPadding: EdgeInsetsDirectional.only(top: 6),
            indicatorSize: TabBarIndicatorSize.tab,
            indicatorColor: Theme.of(context).primaryColor,
            labelStyle: Theme.of(context).textTheme.bodyText1,
            labelColor: Colors.redAccent,
            unselectedLabelColor: Theme.of(context).disabledColor,
            tabs: _tabs,
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
