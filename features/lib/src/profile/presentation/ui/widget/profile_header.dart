import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:share_ui/awesome_external_widgets.dart';
import 'package:share_ui/awesome_ui.dart';

class ProfileHeader extends StatelessWidget {
  final String imageUrl;
  final String userName;
  final onTapImage onTap;

  const ProfileHeader(
      {Key key, @required this.imageUrl, @required this.userName, this.onTap})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        StyledCacheImage(
          width: ScreenUtil().setWidth(120.0),
          height: ScreenUtil().setHeight(120.0),
          url: imageUrl,
          isRound: true,
          defaultWidget: Container(
            width: ScreenUtil().setWidth(120.0),
            height: ScreenUtil().setHeight(120.0),
            child: Icon(
              IconFonts.bleeding_hearts,
              color: Colors.redAccent,
              size: ScreenUtil().setWidth(60.0),
            ),
            decoration: BoxDecoration(
              color: kBackgroudColor,
              shape: BoxShape.circle,
              border: Border.all(
                  width: 2.0, color: kAccentColorVariant.withOpacity(0.9)),
              boxShadow: [
                BoxShadow(
                    color: Colors.grey.withOpacity(.3),
                    offset: Offset(0, 2),
                    blurRadius: 5)
              ],
            ),
          ),
          boxBorder: Border.all(
              width: 2.0, color: kAccentColorVariant.withOpacity(0.9)),
          boxShadow: [
            BoxShadow(
                color: Colors.grey.withOpacity(.3),
                offset: Offset(0, 2),
                blurRadius: 5)
          ],
          onTap: onTap,
        ),
        SizedBox(
          height: 6.0,
        ),
        AutoSizeText(
          userName,
          maxLines: 2,
          style: Theme.of(context).textTheme.headline3.apply(color: kBlueColor),
        )
      ],
    );
  }
}
