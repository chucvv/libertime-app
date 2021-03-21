import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:share_ui/awesome_ui.dart';

class CirclePlanet extends StatelessWidget {
  final double width;
  final double height;
  final double centerRadius;

  const CirclePlanet({Key key, this.width, this.height, this.centerRadius})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      child: CustomPaint(
        painter: _CirclePainter(centerRadius),
      ),
    );
  }
}

class _CirclePainter extends CustomPainter {
  final double centerRadius;
  final colors = [kAccentColor, Colors.red, Colors.green, Colors.yellow];

  _CirclePainter(this.centerRadius);
  @override
  void paint(Canvas canvas, Size size) {
    final fillCirclePaint = Paint()
      ..style = PaintingStyle.fill
      ..isAntiAlias = true
      ..color = Colors.white;

    final solidCirclePaint = Paint()
      ..color = Colors.white
      ..strokeWidth = 1
      ..style = PaintingStyle.stroke
      ..strokeCap = StrokeCap.round;

    final height = size.height;
    final width = size.width;

    final center = Offset(width / 2, height / 2);

    canvas.drawCircle(center, centerRadius, fillCirclePaint);

    final icon = IconFonts.heartbeat;
    final textPainter = TextPainter(textDirection: TextDirection.ltr);
    textPainter.text = TextSpan(
      text: String.fromCharCode(icon.codePoint),
      style: TextStyle(
        color: Colors.redAccent,
        fontSize: 40,
        fontFamily: icon.fontFamily,
        package:
            icon.fontPackage, // This line is mandatory for external icon packs
      ),
    );
    textPainter.layout();
    textPainter.paint(canvas, Offset(center.dx - 20, center.dy - 20));

    canvas.drawCircle(
        center,
        centerRadius + 10,
        solidCirclePaint
          ..color = Colors.white
          ..strokeWidth = 3);
    canvas.drawCircle(
        center,
        centerRadius + 30,
        solidCirclePaint
          ..color = Colors.white70
          ..strokeWidth = 2);
    canvas.drawCircle(
        center,
        centerRadius + 50,
        solidCirclePaint
          ..color = Colors.white54
          ..strokeWidth = 1);
    /*
    for (var i = 0; i < 10; i++) {
      canvas.drawCircle(
          Offset(Random().nextInt(width.toInt()).toDouble(),
              Random().nextInt(height.toInt()).toDouble()),
          6,
          solidCirclePaint
            ..color = colors[Random().nextInt(colors.length)]
            ..strokeWidth = 1);
    }*/
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => false;
}
