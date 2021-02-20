import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:share_ui/awesome_ui.dart';
import 'package:flutter/widgets.dart';
import 'animation/zoom_slideup_transition.dart';

final ThemeData theme = ThemeData(
  primaryColor: clPrimary,
  secondaryHeaderColor: clPrimary.withOpacity(0.5),
  pageTransitionsTheme: _pageTransitionsTheme,
  appBarTheme: _appBarTheme,
  bottomAppBarTheme: _bottomBarTheme,
  textTheme: _textTheme,
  iconTheme: _iconTheme,
  buttonTheme: ButtonThemeData(
    buttonColor: kAccentColorVariant,
    disabledColor: kAccentColorVariant.withOpacity(0.5),
    splashColor: kAccentColorVariant,
    textTheme: ButtonTextTheme.primary,
  ),
  hintColor: kPrimaryColorVariant,
  inputDecorationTheme: const InputDecorationTheme(
    fillColor: Color.fromRGBO(37, 37, 37, 1),
    filled: true,
  ),
  typography: Typography.material2018(),
  visualDensity: VisualDensity.adaptivePlatformDensity,
);

const PageTransitionsTheme _pageTransitionsTheme =
    PageTransitionsTheme(builders: {
  TargetPlatform.iOS: ZoomPageTransitionsBuilder(),
  TargetPlatform.android: ZoomSlideUpTransitionsBuilder(),
});
final _iconTheme = IconThemeData(color: Colors.white);
final _bottomBarTheme = BottomAppBarTheme(color: clBackgroud, elevation: 0.0);

final _appBarTheme = AppBarTheme(
    color: clBackgroud,
    brightness: Brightness.light,
    elevation: 0.0,
    iconTheme: IconThemeData(color: Colors.black26),
    textTheme: _textTheme);

final _textTheme = TextTheme(
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
  static final TextStyle headline4 = GoogleFonts.roboto(
      fontSize: 24.0,
      color: Colors.black.withOpacity(0.75),
      fontWeight: FontWeight.w600);
  static final TextStyle headline5 = GoogleFonts.roboto(
      fontSize: 22.0,
      color: Colors.black.withOpacity(0.65),
      fontWeight: FontWeight.w500);
  static final TextStyle headline6 = GoogleFonts.roboto(
      fontSize: 20.0, color: Colors.grey, fontWeight: FontWeight.w400);
  static final TextStyle subtitle1 = GoogleFonts.roboto(
    fontSize: 16.0,
    color: Colors.black.withOpacity(0.65),
  );
  static final TextStyle subtitle2 = GoogleFonts.roboto(
    fontSize: 16.0,
    color: Colors.black.withOpacity(0.65),
  );
  static final TextStyle bodyText1 = GoogleFonts.roboto(
    fontSize: 14.0,
    color: Colors.black.withOpacity(0.65),
  );
  static final TextStyle bodyText2 = GoogleFonts.roboto(
    fontSize: 14.0,
    color: Colors.black.withOpacity(0.65),
  );
}
