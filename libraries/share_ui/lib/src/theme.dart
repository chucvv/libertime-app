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
  headline1: _TextStyles.headline1,
  headline2: _TextStyles.headline2,
  headline3: _TextStyles.headline3,
  headline4: _TextStyles.headline4,
  headline5: _TextStyles.headline5,
  headline6: _TextStyles.headline6,
  subtitle1: _TextStyles.subtitle1,
  subtitle2: _TextStyles.subtitle2,
  bodyText1: _TextStyles.bodyText1,
  bodyText2: _TextStyles.bodyText2,
  button: _TextStyles.button,
);

class _TextStyles {
  _TextStyles._();

  static final TextStyle headline1 = TextStyle(
      color: Color(0xff686795),
      fontSize: 18,
      fontWeight: FontWeight.w600,
      letterSpacing: 1.5);
  static final TextStyle headline2 = TextStyle(
      color: Color(0xff686795),
      fontSize: 20,
      fontWeight: FontWeight.w600,
      letterSpacing: 1.5);

  static final TextStyle headline3 = TextStyle(
      color: Color(0xff686795),
      fontSize: 22,
      fontWeight: FontWeight.w600,
      letterSpacing: 1.5);

  static final TextStyle headline4 = GoogleFonts.roboto(
      fontSize: 24.0,
      color: Color(0xff686795),
      fontWeight: FontWeight.w600,
      letterSpacing: 1.5);

  static final TextStyle headline5 = GoogleFonts.roboto(
      fontSize: 26.0,
      color: Color(0xff686795),
      fontWeight: FontWeight.w500,
      letterSpacing: 1.5);

  static final TextStyle headline6 = GoogleFonts.roboto(
      fontSize: 28.0,
      color: Color(0xff686795),
      fontWeight: FontWeight.w400,
      letterSpacing: 2.0);

  static final TextStyle subtitle1 = GoogleFonts.roboto(
      fontSize: 16.0,
      color: Color(0xff686795),
      fontWeight: FontWeight.w200,
      letterSpacing: 1.5);

  static final TextStyle subtitle2 = GoogleFonts.roboto(
      fontSize: 12.0,
      color: Color(0xffAEABC9),
      letterSpacing: 1.2,
      fontWeight: FontWeight.w500);

  static final TextStyle bodyText1 = GoogleFonts.roboto(
      color: Color(0xffAEABC9),
      fontSize: 14,
      letterSpacing: 1.2,
      fontWeight: FontWeight.w500);

  static final TextStyle bodyText2 = GoogleFonts.roboto(
      color: Color(0xffAEABC9),
      fontSize: 14,
      letterSpacing: 1.2,
      fontWeight: FontWeight.w500);

  static final TextStyle button = GoogleFonts.roboto(
      color: Color(0xff686795),
      fontSize: 20,
      letterSpacing: 1.2,
      fontWeight: FontWeight.w500);
}
