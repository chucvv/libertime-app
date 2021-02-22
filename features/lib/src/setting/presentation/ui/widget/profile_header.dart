import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:share_ui/awesome_ui.dart';

class ProfileHeader extends StatelessWidget {
  final String imageUrl;
  final String userName;

  const ProfileHeader(
      {Key key, @required this.imageUrl, @required this.userName})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        StyledCacheImage(
          width: ScreenUtil().setWidth(100.0),
          height: ScreenUtil().setHeight(100.0),
          url: imageUrl,
          isRound: true,
          defaultIcon: Icon(
            IconFonts.bleeding_hearts,
            color: kAccentColor,
          ),
          boxBorder: Border.all(
              width: 3.0, color: kAccentColorVariant.withOpacity(0.8)),
          boxShadow: [
            BoxShadow(
                color: Colors.grey.withOpacity(.3),
                offset: Offset(0, 2),
                blurRadius: 5)
          ],
        ),
        SizedBox(
          height: 6.0,
        ),
        Text(
          userName,
          style: Theme.of(context)
              .textTheme
              .headline3
              .apply(color: Colors.redAccent),
        )
      ],
    );
  }
}
