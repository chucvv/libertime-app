import 'package:flutter/material.dart';

class AppColors {
  AppColors._(); // this basically makes it so you can instantiate this class

  static const Map<int, Color> primaryColor = <int, Color>{
    50: Color(0xFFE2EFFD),
    100: Color(0xFFB6D6FA),
    200: Color(0xFF86BBF6),
    300: Color(0xFF569FF2),
    400: Color(0xFF318BF0),
    500: Color(0xFF0D76ED),
    600: Color(0xFF0B6EEB),
    700: Color(0xFF0963E8),
    800: Color(0xFF0759E5),
    900: Color(0xFF0346E0),
  };

  static const Map<int, Color> primaryColorAccent = <int, Color>{
    100: Color(0xFFFFFFFF),
    200: Color(0xFFD4DFFF),
    400: Color(0xFFA1B8FF),
    700: Color(0xFF88A5FF),
  };
}

const clPrimary = Color(0xFF0D76ED);
const clBackgroud = Color(0xFFF6F7FA);

const kPrimaryColor = Color(0xff7C7B9B);
const kPrimaryColorVariant = Color(0xff686795);
const kAccentColor = Color(0xffFCAAAB);
const kAccentColorVariant = Color(0xffF7A3A2);
const kLowOpacityAccentColor = Color(0xF9BFBE);
