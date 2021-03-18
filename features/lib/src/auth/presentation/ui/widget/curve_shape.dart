import 'package:flutter/material.dart';

class CurvedShape extends StatelessWidget {
  final double height;
  final Color color;

  const CurvedShape({Key key, this.height, this.color}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: height,
      child: CustomPaint(
        painter: _CurvedPainter(context, color),
      ),
    );
  }
}

class _CurvedPainter extends CustomPainter {
  final BuildContext context;
  final Color color;

  _CurvedPainter(this.context, this.color);
  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..style = PaintingStyle.fill
      ..isAntiAlias = true
      ..color = color;

    final height = size.height;
    final width = size.width;

    var path = Path()
      ..moveTo(0, 0)
      ..lineTo(0, height)
      ..quadraticBezierTo(
          width * 0.25, height * 0.95, width * 0.5, height * 0.7)
      ..quadraticBezierTo(width * 0.75, height * 0.95, width, height)
      ..lineTo(size.width, 0)
      ..close();

    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => true;
}
