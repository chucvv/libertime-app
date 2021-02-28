import 'package:features/src/explore/presentation/ui/screen/match_users_tab.dart';
import 'package:features/src/explore/presentation/ui/screen/nearly_map_tab.dart';
import 'package:flutter/material.dart';
import 'package:flutter_fimber/flutter_fimber.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:share_ui/awesome_ui.dart';

class ExploreScreen extends StatefulWidget {
  const ExploreScreen({Key key}) : super(key: key);

  @override
  _ExploreScreenState createState() => _ExploreScreenState();
}

class _ExploreScreenState extends State<ExploreScreen>
    with AutomaticKeepAliveClientMixin<ExploreScreen> {
  final List<Widget> _widgePage = [NearlyScreen(), UserListScreen()];
  final List<Widget> _tabs = [
    Tab(
      child: Text('Nearly'),
    ),
    Tab(
      child: Text('List'),
    ),
  ];
  @override
  void initState() {
    super.initState();
    Fimber.d("initState");
  }

  @override
  bool get wantKeepAlive => true;

  @override
  Widget build(BuildContext context) {
    super.build(context);
    return DefaultTabController(
      length: _tabs.length,
      child: Scaffold(
        backgroundColor: AppColors.primaryColor[500],
        appBar: StyleAppBar(
          height: ScreenUtil().setHeight(40),
          title: TabBar(
            isScrollable: true,
            indicatorSize: TabBarIndicatorSize.tab,
            indicatorColor: kAccentColorVariant,
            labelColor: kAccentColorVariant,
            unselectedLabelColor: Colors.white,
            tabs: _tabs,
            labelStyle: Theme.of(context)
                .appBarTheme
                .textTheme
                .headline3
                .copyWith(letterSpacing: 2),
          ),
          actions: [
            IconButton(
                icon: Icon(
                  IconFonts.filter,
                  size: ScreenUtil().setHeight(25),
                  color: Colors.white,
                ),
                onPressed: () {
                  Navigator.of(context).pushNamed('/filter_settings');
                }),
          ],
        ),
        body: TabBarView(
          physics: NeverScrollableScrollPhysics(),
          children: _widgePage,
        ),
      ),
    );
  }
}
