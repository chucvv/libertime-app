import 'package:flutter/material.dart';

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
          Icon(headerIcon),
          SizedBox(
            width: 6.0,
          ),
          Text(
            headerText,
            style: Theme.of(context)
                .textTheme
                .headline3
                .apply(color: Colors.black45),
          ),
        ],
      ),
      trailing: Icon(
        trailIcon,
        size: 15.0,
        color: Colors.grey,
      ),
    );
  }
}
