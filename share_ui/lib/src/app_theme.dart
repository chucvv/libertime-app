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

import 'animation/zoom_slideup_transition.dart';

class AppColors {
  AppColors._(); // this basically makes it so you can instantiate this class

  static const Map<int, Color> primaryColor = <int, Color>{
    50: Color(0xFFFFF2EF),
    100: Color(0xFFFEDFD7),
    200: Color(0xFFFECABD),
    300: Color(0xFFFEB4A2),
    400: Color(0xFFFDA48E),
    500: clPrimary,
    600: Color(0xFFFD8C72),
    700: Color(0xFFFC8167),
    800: Color(0xFFFC775D),
    900: Color(0xFFFC654A),
  };
}

class TextColors {
  TextColors._();

  static const textColorPrimary = Color(0xFF8F8F8F);
  static const textColorSecondary = Color(0xFFC4C4C4);
  static const textColorThird = Color(0xFFDCDCDC);
  static const textColorGrey = Color(0xFFB4BBC2);
}

const clPrimary = Color(0xFFFD947A);
const lTNormalColor = Color(0xFF4E342E);
const clWhiteBackgroud = Color(0xFFF6F7FA);
const clNavigatorBar = Color(0xAAFFFFFF);
const clNavigatorBarBorder = Color(0x1AFFFFFF);
const lTFontName = "Raleway";
const lTOrangeColor = Colors.amberAccent;

final ThemeData themeData = ThemeData(
    pageTransitionsTheme: const PageTransitionsTheme(builders: {
      TargetPlatform.iOS: ZoomPageTransitionsBuilder(),
      TargetPlatform.android: ZoomSlideUpTransitionsBuilder(),
    }),
    backgroundColor: clWhiteBackgroud,
    fontFamily: lTFontName,
    brightness: Brightness.light,
    primarySwatch: const MaterialColor(500, AppColors.primaryColor),
    primaryColor: AppColors.primaryColor[500],
    primaryColorLight: AppColors.primaryColor[200],
    primaryColorBrightness: Brightness.light,
    accentColor: AppColors.primaryColor[500],
    accentColorBrightness: Brightness.light,
    textTheme: TextTheme(
        headline5: TextStyle(
            fontSize: 18.0,
            fontWeight: FontWeight.w400,
            color: TextColors.textColorPrimary),
        headline6: TextStyle(
            fontSize: 16.0,
            fontWeight: FontWeight.w500,
            color: TextColors.textColorThird),
        caption: TextStyle(
            fontSize: 16.0,
            fontWeight: FontWeight.w500,
            color: TextColors.textColorGrey),
        subtitle2: TextStyle(
            fontSize: 16.0,
            fontWeight: FontWeight.w500,
            color: TextColors.textColorSecondary),
        bodyText2: const TextStyle(
            fontSize: 14.0,
            fontFamily: lTFontName,
            color: TextColors.textColorPrimary)));
