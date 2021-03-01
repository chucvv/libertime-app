import 'package:flutter/material.dart';

class StyleAppBar extends StatelessWidget implements PreferredSizeWidget {
  final double height;
  final Widget leading;
  final double leadingWidth;
  final Widget title;
  final List<Widget> actions;
  final Color backgroundColor;

  const StyleAppBar(
      {Key key,
      this.height,
      this.leading,
      this.title,
      this.actions,
      this.backgroundColor = Colors.white,
      this.leadingWidth})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: backgroundColor,
      toolbarHeight: height,
      title: title,
      actions: actions,
      leading: leading,
      leadingWidth: leadingWidth,
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(height);
}
