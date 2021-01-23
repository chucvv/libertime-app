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

Map<TabItem, Color> activeTabColor = {
  TabItem.home: AppColors.primaryColor[900],
  TabItem.explore: AppColors.primaryColor[900],
  TabItem.message: AppColors.primaryColor[900],
};

Map<TabItem, IconData> tabIcons = {
  TabItem.home: IconFonts.home,
  TabItem.explore: IconFonts.explore,
  TabItem.message: IconFonts.wechat,
};

class BottomNavigatorBar extends StatelessWidget {
  const BottomNavigatorBar({this.currentTab, this.onSelectTab});

  final TabItem currentTab;
  final ValueChanged<TabItem> onSelectTab;

  @override
  Widget build(BuildContext context) {
    return BottomNavyBar(
      itemCornerRadius: 24,
      curve: Curves.easeIn,
      //backgroundColor: clNavigatorBar,
      selectedIndex: currentTab?.index ?? 0,
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
          size: Sizes.NavigatorBarIcoSize,
        ),
        title: Text(
          tabName[tabItem] ?? '',
        ),
        activeColor: activeTabColor[tabItem] ?? clPrimary,
        textAlign: TextAlign.center,
      );
}
