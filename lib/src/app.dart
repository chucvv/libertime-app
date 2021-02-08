import 'package:flutter/material.dart';
import 'package:share_ui/awesome_ui.dart';

import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'app_router.dart';
import 'strings.dart';

class LiberMeApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    //Set the fit size (fill in the screen size of the device in the design)
    //If the design is based on the size of the iPhone6 ​​(iPhone6 ​​750*1334)
    return ScreenUtilInit(
      designSize: Size(360, 690),
      allowFontScaling: false,
      child: MaterialApp(
        title: Strings.appName,
        theme: theme,
        onGenerateRoute: AppRouter.generateRoutes,
        debugShowCheckedModeBanner: false,
      ),
    );
  }
}
