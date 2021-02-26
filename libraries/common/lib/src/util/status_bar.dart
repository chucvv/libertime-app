import 'dart:ui';
import 'package:flutter_statusbarcolor/flutter_statusbarcolor.dart';

Future<void> changeStatusColor(Color color) async {
  await FlutterStatusbarcolor.setStatusBarColor(color, animate: true);
  await FlutterStatusbarcolor.setStatusBarWhiteForeground(
      useWhiteForeground(color));
}
