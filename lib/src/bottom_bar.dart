import 'package:bottom_navy_bar/bottom_navy_bar.dart';
import 'package:flutter/material.dart';
import 'package:share_ui/awesome_ui.dart';

import 'strings.dart';

enum TabItem { home, explore, message }

Map<TabItem, String> tabName = {
  TabItem.home: Strings.navigatorHomeTitle,
  TabItem.explore: Strings.navigatorExploreTitle,
  TabItem.message: Strings.navigatorMessageTitle,
};

Map<TabItem, MaterialColor> activeTabColor = {
  TabItem.home: Colors.amber,
  TabItem.explore: Colors.amber,
  TabItem.message: Colors.amber,
};

Map<TabItem, IconData> tabIcons = {
  TabItem.home: Iconfont.a_z,
  TabItem.explore: Iconfont.recents,
  TabItem.message: Iconfont.favorite,
};

class BottomNavigatorBar extends StatelessWidget {
  const BottomNavigatorBar({this.currentTab, this.onSelectTab});

  final TabItem currentTab;
  final ValueChanged<TabItem> onSelectTab;

  @override
  Widget build(BuildContext context) {
    return BottomNavyBar(
      backgroundColor: Theme.of(context).primaryColor,
      selectedIndex: currentTab.index,
      // use this to remove appBar's elevation
      items: [
        _buildItem(tabItem: TabItem.home),
        _buildItem(tabItem: TabItem.explore),
        _buildItem(tabItem: TabItem.message),
      ],
      onItemSelected: (index) => onSelectTab(TabItem.values[index]),
    );
  }

  BottomNavyBarItem _buildItem({TabItem tabItem}) => BottomNavyBarItem(
        icon: Icon(
          tabIcons[tabItem],
          size: Dimens.bottom_navigator_bar_ico_size,
          color: lTBgColorContrast,
        ),
        title: Text(
          tabName[tabItem],
          style: const TextStyle(
            color: lTBgColorContrast,
          ),
        ),
        activeColor: activeTabColor[tabItem],
      );
}
