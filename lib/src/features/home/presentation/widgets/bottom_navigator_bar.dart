import 'package:bottom_navy_bar/bottom_navy_bar.dart';
import 'package:flutter/material.dart';
import 'package:libertime/constants/strings.dart';
import 'package:common_ui/awesome_ui.dart';

enum TabItem { workspace, recents, favorites }

Map<TabItem, String> tabName = {
  TabItem.workspace: Strings.bottom_navigator_bar_workspace,
  TabItem.recents: Strings.bottom_navigator_bar_recent,
  TabItem.favorites: Strings.bottom_navigator_bar_favorite,
};

Map<TabItem, MaterialColor> activeTabColor = {
  TabItem.workspace: Colors.amber,
  TabItem.recents: Colors.amber,
  TabItem.favorites: Colors.amber,
};

Map<TabItem, IconData> tabIcons = {
  TabItem.workspace: Iconfont.a_z,
  TabItem.recents: Iconfont.recents,
  TabItem.favorites: Iconfont.favorite,
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
      showElevation: true,
      // use this to remove appBar's elevation
      items: [
        _buildItem(tabItem: TabItem.workspace),
        _buildItem(tabItem: TabItem.recents),
        _buildItem(tabItem: TabItem.favorites),
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
          style: TextStyle(
            color: lTBgColorContrast,
          ),
        ),
        activeColor: activeTabColor[tabItem],
      );
}
