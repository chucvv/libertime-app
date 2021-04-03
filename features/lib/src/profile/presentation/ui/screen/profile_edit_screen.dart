import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:share_ui/awesome_external_widgets.dart';
import 'package:share_ui/awesome_ui.dart';

class ProfileEditScreen extends StatefulWidget {
  const ProfileEditScreen({Key key}) : super(key: key);

  @override
  _ProfileEditScreenState createState() => _ProfileEditScreenState();
}

class _ProfileEditScreenState extends State<ProfileEditScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            Padding(
              child: CircleButton(
                icon: FontAwesomeIcons.chevronLeft,
                iconSize: 18,
                width: ScreenUtil().setWidth(30.0),
                height: ScreenUtil().setHeight(30.0),
                onTap: () {
                  Navigator.of(context).pop();
                },
              ),
              padding: EdgeInsets.all(6.0),
            ),
          ],
        ),
      ),
    );
  }
}
