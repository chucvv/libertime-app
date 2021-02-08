import 'package:features/modules.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:share_ui/awesome_ui.dart';

import 'strings.dart';

class MainScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  final List<Widget> _widgePage = [
    HomeScreen(),
    ExploreWidget(),
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
    )
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: Strings.appName,
      theme: theme,
      debugShowCheckedModeBanner: false,
      home: DefaultTabController(
        length: _tabs.length,
        child: Scaffold(
          appBar: AppBar(
            bottom: TabBar(
              indicatorSize: TabBarIndicatorSize.tab,
              indicator: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(10),
                      topRight: Radius.circular(10))),
              labelColor: clPrimary,
              unselectedLabelColor: Colors.white,
              tabs: _tabs,
            ),
          ),
          body: TabBarView(
            children: _widgePage,
          ),
        ),
      ),
    );
  }
}
