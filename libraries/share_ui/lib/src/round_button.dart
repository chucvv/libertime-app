import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

typedef OnClick = void Function();

class RoundedButton extends StatelessWidget {
  final BorderRadiusGeometry borderRadius;
  final Color backgroundColor;
  final Color textColor;
  final IconData icon;
  final String text;
  final EdgeInsetsGeometry padding;
  final double elevation;
  final OnClick onTap;

  const RoundedButton({
    Key key,
    this.text,
    this.icon,
    this.backgroundColor = Colors.redAccent,
    this.textColor = Colors.white,
    this.borderRadius = BorderRadius.zero,
    this.padding,
    this.elevation = 0,
    this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      color: backgroundColor,
      borderRadius: borderRadius,
      elevation: elevation,
      child: InkWell(
        splashColor: Theme.of(context).primaryColorLight,
        onTap: onTap,
        child: Padding(
          padding: padding,
          child: Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              FaIcon(
                icon,
                size: 25.0,
              ),
              SizedBox(
                width: 8.0,
              ),
              Text(
                text,
                style:
                    Theme.of(context).textTheme.button.apply(color: textColor),
              )
            ],
          ),
        ),
      ),
    );
  }
}
