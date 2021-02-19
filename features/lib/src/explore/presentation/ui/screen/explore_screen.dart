import 'package:features/src/explore/presentation/ui/screen/user_list_screen.dart';
import 'package:features/src/explore/presentation/ui/screen/nearly_screen.dart';
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
        appBar: AppBar(
          title: TabBar(
            isScrollable: true,
            indicatorSize: TabBarIndicatorSize.tab,
            indicatorColor: Colors.redAccent,
            labelColor: Colors.redAccent,
            unselectedLabelColor: Theme.of(context).disabledColor,
            tabs: _tabs,
            labelStyle: Theme.of(context)
                .appBarTheme
                .textTheme
                .headline4
                .copyWith(letterSpacing: 2, fontWeight: FontWeight.w300),
          ),
          actions: [
            IconButton(
                icon: Icon(
                  IconFonts.filter,
                  size: ScreenUtil().setHeight(25),
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
