import 'package:features/modules.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:share_ui/awesome_ui.dart';

class MainContainer extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _MainContainerState();
}

class _MainContainerState extends State<MainContainer> {
  final List<Widget> _widgePage = [
    HomeScreen(),
    ExploreScreen(),
    MessageScreen(),
    ProfileScreen()
  ];
  final List<Widget> _tabs = [
    Tab(
      child: FaIcon(FontAwesomeIcons.grinHearts),
    ),
    Tab(
      child: FaIcon(FontAwesomeIcons.searchLocation),
    ),
    Tab(
      child: FaIcon(FontAwesomeIcons.commentDots),
    ),
    Tab(
      child: FaIcon(FontAwesomeIcons.user),
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
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(24),
              topRight: Radius.circular(24),
            ),
            boxShadow: [
              BoxShadow(
                  color: Colors.grey.shade400,
                  offset: Offset(0.0, 0.5),
                  blurRadius: 10.0)
            ],
          ),
          child: TabBar(
            labelPadding: EdgeInsetsDirectional.only(top: 6),
            indicator:
                CircleTabIndicator(color: kAccentColorVariant, radius: 4.0),
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
