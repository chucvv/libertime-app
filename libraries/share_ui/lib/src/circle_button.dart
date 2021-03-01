import 'package:flutter/material.dart';
import 'package:share_ui/awesome_external_widgets.dart';
import 'package:share_ui/awesome_ui.dart';

typedef OnTap = void Function();

class CircleButton extends StatelessWidget {
  final IconData icon;
  final double iconSize;
  final double width;
  final double height;
  final Color backgroundColor;
  final Color iconColor;

  final OnTap onTap;

  const CircleButton({
    Key key,
    this.icon,
    this.iconSize,
    this.backgroundColor = Colors.white,
    this.iconColor = kPrimaryColor,
    this.width,
    this.height,
    this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      decoration: BoxDecoration(color: backgroundColor, shape: BoxShape.circle),
      child: IconButton(
          icon: FaIcon(icon, size: iconSize, color: iconColor),
          onPressed: onTap),
    );
  }
}
