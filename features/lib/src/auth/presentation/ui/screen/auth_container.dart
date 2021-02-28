import 'package:features/src/auth/presentation/ui/screen/login.dart';
import 'package:features/src/auth/presentation/ui/screen/register.dart';
import 'package:features/src/auth/presentation/ui/widget/circle_planet.dart';
import 'package:features/src/auth/presentation/ui/widget/curve_shape.dart';
import 'package:flutter/material.dart';
import 'package:share_ui/awesome_ui.dart';

class AuthContainer extends StatelessWidget {
  final List<Widget> _widgePage = [LoginScreen(), RegisterScreen()];
  final List<Widget> _tabs = [
    Tab(
      child: Row(
        children: [Text('Login')],
      ),
    ),
    Tab(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [Text('Register')],
      ),
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(children: [
        Stack(
          children: [
            Positioned(
              child: CurvedShape(
                height: MediaQuery.of(context).size.height / 3,
              ),
            ),
            Positioned(
                bottom: 0,
                left: 0,
                right: 0,
                child: CirclePlanet(
                  width: 240,
                  height: 240,
                  centerRadius: 35,
                ))
          ],
        ),
        Expanded(
          child: DefaultTabController(
            length: _tabs.length,
            child: Scaffold(
              backgroundColor: Colors.white,
              appBar: PreferredSize(
                preferredSize: Size.fromHeight(50.0),
                child: AppBar(
                  elevation: 0,
                  backgroundColor: Colors.white,
                  title: TabBar(
                    indicatorColor: Colors.transparent,
                    labelColor: kAccentColorVariant,
                    unselectedLabelColor: AppColors.primaryColor[100],
                    tabs: _tabs,
                    labelStyle: Theme.of(context)
                        .appBarTheme
                        .textTheme
                        .headline3
                        .copyWith(letterSpacing: 2),
                  ),
                ),
              ),
              body: TabBarView(
                physics: NeverScrollableScrollPhysics(),
                children: _widgePage,
              ),
            ),
          ),
        ),
      ]),
    );
  }
}
