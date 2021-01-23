import 'package:features/modules.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:common/utility.dart';
import 'package:share_ui/awesome_ui.dart';

import 'bottom_bar.dart';

class MainPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  TabItem _currentTab = TabItem.home;

  final PageController _pageController = PageController();
  final Map<int, TabItem> _indexToTab = {
    0: TabItem.home,
    1: TabItem.explore,
    2: TabItem.message
  };

  final List<Widget> _widgePage = [
    HomeWidget(),
    const ExploreWidget(),
    MessageWidget()
  ];

  void _selectTab(TabItem tabItem) {
    setState(() => _currentTab = tabItem);
    _pageController.jumpToPage(tabItem?.index ?? 0);
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    changeStatusColor(clWhiteBackgroud);
    return Scaffold(
        backgroundColor: clWhiteBackgroud,
        body: SizedBox.expand(
          child: PageView(
            controller: _pageController,
            onPageChanged: (index) {
              _selectTab(_indexToTab[index]);
            },
            children: _widgePage,
          ),
        ),
        bottomNavigationBar: BottomNavigatorBar(
            currentTab: _currentTab, onSelectTab: _selectTab));
  }
}
