/**
 * Creating custom color palettes is part of creating a custom app. The idea is to create
 * your class of custom colors, in this case `CompanyColors` and then create a `ThemeData`
 * object with those colors you just defined.
 *
 * Resource:
 * A good resource would be this website: http://mcg.mbitson.com/
 * You simply need to put in the colour you wish to use, and it will generate all shades
 * for you. Your primary colour will be the `500` value.
 *
 * Colour Creation:
 * In order to create the custom colours you need to create a `Map<int, Color>` object
 * which will have all the shade values. `const Color(0xFF...)` will be how you create
 * the colours. The six character hex code is what follows. If you wanted the colour
 * #114488 or #D39090 as primary colours in your theme, then you would have
 * `const Color(0x114488)` and `const Color(0xD39090)`, respectively.
 *
 * Usage:
 * In order to use this newly created theme or even the colours in it, you would just
 * `import` this file in your project, anywhere you needed it.
 * `import 'path/to/theme.dart';`
 */

import 'package:flutter/material.dart';
import 'package:widget/awesome_widgets.dart';

class AppColors {
  AppColors._(); // this basically makes it so you can instantiate this class

  static const Map<int, Color> primaryColor = <int, Color>{
    50: Color(0xFFEFEBE9),
    100: Color(0xFFD7CCC8),
    200: Color(0xFFBCAAA4),
    300: Color(0xFFA1887F),
    400: Color(0xFF8D6E63),
    500: Color(0xFF795548),
    600: Color(0xFF6D4C41),
    700: Color(0xFF5D4037),
    800: Color(0xFF4E342E),
    900: Color(0xFF3E2723),
  };
}

const lTPrimaryColor = Color(0xFF795548);
const lTNormalColor = Color(0xFF4E342E);
const lTBgColorContrast = Colors.white;
const lTActiveColor = Colors.amberAccent;
const lTHintTextColor = Color(0xFFEFEBE9);
const ltIconColor = Color(0xFF3E2723);
const lTOverLayerColor = Color.fromRGBO(64, 75, 96, .9);
const lTDisableStateColor = Color(0xFFBCAAA4);
const lTTextColor = Color(0xFF3E2723);
const lTFontName = "Raleway";
const lTOrangeColor = Colors.amberAccent;

final ThemeData themeData = ThemeData(
    pageTransitionsTheme: const PageTransitionsTheme(builders: {
      TargetPlatform.iOS: ZoomPageTransitionsBuilder(),
      TargetPlatform.android: ZoomSlideUpTransitionsBuilder(),
    }),
    backgroundColor: lTPrimaryColor,
    fontFamily: lTFontName,
    brightness: Brightness.light,
    primarySwatch: const MaterialColor(500, AppColors.primaryColor),
    primaryColor: AppColors.primaryColor[500],
    primaryColorLight: AppColors.primaryColor[200],
    primaryColorBrightness: Brightness.light,
    accentColor: AppColors.primaryColor[500],
    accentColorBrightness: Brightness.light,
    textTheme: TextTheme(
        headline: TextStyle(
            fontSize: 18.0, fontWeight: FontWeight.w400, color: lTTextColor),
        title: TextStyle(
            fontSize: 16.0, fontWeight: FontWeight.w500, color: lTTextColor),
        caption: TextStyle(
            fontSize: 16.0, fontWeight: FontWeight.w500, color: lTTextColor),
        subtitle: TextStyle(
            fontSize: 16.0, fontWeight: FontWeight.w500, color: lTTextColor),
        body1: const TextStyle(
            fontSize: 14.0, fontFamily: lTFontName, color: lTTextColor)));
