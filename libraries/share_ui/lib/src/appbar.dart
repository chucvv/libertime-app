import 'package:flutter/material.dart';
import 'package:share_ui/src/colors.dart';

class StyleAppBar extends StatelessWidget implements PreferredSizeWidget {
  final double height;
  final Widget leading;
  final Widget title;
  final List<Widget> actions;

  const StyleAppBar(
      {Key key, this.height, this.leading, this.title, this.actions})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
        title: title,
        actions: actions,
        leading: leading,
        flexibleSpace: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.centerLeft,
              end: Alignment.centerRight,
              colors: <Color>[
                Colors.white,
                kLowOpacityAccentColor,
              ],
            ),
          ),
        ));
  }

  @override
  Size get preferredSize => Size.fromHeight(height);
}
