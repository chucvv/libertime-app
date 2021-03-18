import 'package:flutter/material.dart';
import 'package:share_ui/awesome_external_widgets.dart';
import 'package:share_ui/awesome_ui.dart';

typedef onTapItem = void Function();

class ProfileItem extends StatelessWidget {
  final IconData headerIcon;
  final String headerText;
  final IconData trailIcon;
  final onTapItem onTap;

  const ProfileItem(
      {Key key,
      @required this.headerIcon,
      @required this.headerText,
      this.trailIcon,
      this.onTap})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: onTap,
      leading: Row(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Icon(
            headerIcon,
            color: AppColors.primaryColor[500],
          ),
          SizedBox(
            width: 12.0,
          ),
          Text(
            headerText,
            style: Theme.of(context).textTheme.headline3,
          ),
        ],
      ),
      trailing: FaIcon(
        trailIcon,
        size: 8.0,
        color: Colors.grey,
      ),
    );
  }
}
