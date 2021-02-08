import 'package:flutter/material.dart';
import 'package:share_ui/awesome_ui.dart';

import 'animation/zoom_slideup_transition.dart';

final ThemeData theme = ThemeData(
  primaryColor: clPrimary,
  secondaryHeaderColor: AppColors.primaryColor[400],
  accentColor: AppColors.primaryColor[100],
  pageTransitionsTheme: _pageTransitionsTheme,
  appBarTheme: _appBarTheme,
  scaffoldBackgroundColor: Colors.white.withOpacity(0.95),
  textTheme: _textTheme,
  typography: Typography.material2018(),
  visualDensity: VisualDensity.adaptivePlatformDensity,
);

const PageTransitionsTheme _pageTransitionsTheme =
    PageTransitionsTheme(builders: {
  TargetPlatform.iOS: ZoomPageTransitionsBuilder(),
  TargetPlatform.android: ZoomSlideUpTransitionsBuilder(),
});

final AppBarTheme _appBarTheme = AppBarTheme(
  elevation: 0.0,
  color: Colors.white,
  iconTheme: IconThemeData(color: Colors.black54),
  textTheme: TextTheme(
    headline6: _TextStyles.headline6.copyWith(color: Colors.black54),
  ),
);

final TextTheme _textTheme = TextTheme(
  headline4: _TextStyles.headline4,
  headline5: _TextStyles.headline5,
  headline6: _TextStyles.headline6,
  subtitle1: _TextStyles.subtitle1,
  subtitle2: _TextStyles.subtitle2,
  bodyText1: _TextStyles.bodyText1,
  bodyText2: _TextStyles.bodyText2,
);

class _TextStyles {
  _TextStyles._();
  static final TextStyle headline4 = TextStyle(
    fontFamily: 'RobotoMedium',
    fontSize: 34.0,
    color: Colors.black.withOpacity(0.75),
  );
  static final TextStyle headline5 = TextStyle(
    fontFamily: 'Roboto',
    fontSize: 24.0,
    color: Colors.black.withOpacity(0.65),
  );
  static final TextStyle headline6 = TextStyle(
    fontFamily: 'RobotoMedium',
    fontSize: 20.0,
    color: Colors.black.withOpacity(0.65),
  );
  static final TextStyle subtitle1 = TextStyle(
    fontFamily: 'RobotoMedium',
    fontSize: 16.0,
    color: Colors.black.withOpacity(0.65),
  );
  static final TextStyle subtitle2 = TextStyle(
    fontFamily: 'Roboto',
    fontSize: 16.0,
    color: Colors.black.withOpacity(0.65),
  );
  static final TextStyle bodyText1 = TextStyle(
    fontFamily: 'RobotoMedium',
    fontSize: 14.0,
    color: Colors.black.withOpacity(0.65),
  );
  static final TextStyle bodyText2 = TextStyle(
    fontFamily: 'Roboto',
    fontSize: 14.0,
    color: Colors.black.withOpacity(0.65),
  );
}