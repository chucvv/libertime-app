import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:libertime/src/features/favorites/presentation/pages/favorites_page.dart';
import 'package:libertime/src/features/home/presentation/widgets/bottom_navigator_bar.dart';
import 'package:share_ui/awesome_ui.dart';

class HomePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var _currentTab = TabItem.workspace;

  final PageController _pageController = PageController();
  final Map<int, TabItem> _indexToTab = {
    0: TabItem.workspace,
    1: TabItem.recents,
    2: TabItem.favorites
  };

  void _selectTab(TabItem tabItem) {
    setState(() => _currentTab = tabItem);
    _pageController.jumpToPage(tabItem.index);
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: lTPrimaryColor,
        body: SizedBox.expand(
          child: PageView(
            controller: _pageController,
            onPageChanged: (index) {
              _selectTab(_indexToTab[index]);
            },
            children: <Widget>[
              FavoriteProjectPage(),
              FavoriteProjectPage(),
              FavoriteProjectPage(),
            ],
          ),
        ),
        bottomNavigationBar: BottomNavigatorBar(
            currentTab: _currentTab, onSelectTab: _selectTab));
  }
}
