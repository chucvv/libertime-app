import 'package:features/src/auth/presentation/ui/screen/login.dart';
import 'package:features/src/auth/presentation/ui/screen/register.dart';
import 'package:features/src/auth/presentation/ui/widget/circle_planet.dart';
import 'package:features/src/auth/presentation/ui/widget/curve_shape.dart';
import 'package:flutter/material.dart';
import 'package:share_ui/awesome_ui.dart';

enum Page { login, register }

class AuthContainer extends StatelessWidget {
  final Page page;

  const AuthContainer({Key key, this.page = Page.login}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Unfocus(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Stack(
                children: [
                  Positioned(
                    child: CurvedShape(
                      height: MediaQuery.of(context).size.height / 3,
                      color: AppColors.primaryColor[500],
                    ),
                  ),
                  Positioned(
                      bottom: 0,
                      left: 0,
                      right: 0,
                      child: CirclePlanet(
                        width: 200,
                        height: 200,
                        centerRadius: 35,
                      ))
                ],
              ),
              Container(
                margin: EdgeInsets.only(left: 20.0, right: 20.0, top: 30.0),
                child: page == Page.login ? LoginScreen() : RegisterScreen(),
              ),
            ]),
      ),
    );
  }
}
