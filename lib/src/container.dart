import 'package:features/modules.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
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
            FaIcon(FontAwesomeIcons.home),
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
            FaIcon(FontAwesomeIcons.searchLocation),
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
            FaIcon(FontAwesomeIcons.solidCommentDots),
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
            FaIcon(FontAwesomeIcons.userAlt),
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
        backgroundColor: kBackgroudColor,
        bottomNavigationBar: Container(
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.all(Radius.circular(12)),
            boxShadow: [
              BoxShadow(
                  color: Colors.grey.shade400,
                  offset: Offset(0.0, 0.5),
                  blurRadius: 10.0)
            ],
          ),
          child: TabBar(
            labelPadding: EdgeInsetsDirectional.only(top: 12),
            indicator:
                CircleTabIndicator(color: kAccentColorVariant, radius: 4.0),
            labelStyle: Theme.of(context).textTheme.bodyText1,
            labelColor: AppColors.primaryColor[900],
            unselectedLabelColor: AppColors.primaryColor[100],
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
