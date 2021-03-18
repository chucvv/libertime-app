import 'package:features/src/profile/presentation/model/user_info.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:share_ui/awesome_external_widgets.dart';
import 'package:share_ui/awesome_ui.dart';

typedef MatchItemClicked = void Function(String userName, String imageUrl);

class MatchItem extends StatelessWidget {
  final double offset;
  final UserInfo userInfo;
  final MatchItemClicked onTap;

  const MatchItem({Key key, this.userInfo, this.onTap, this.offset})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    final iconWidget = Align(
      alignment: Alignment.bottomRight,
      child: Icon(IconFonts.wechat).centerLinearGradient(
          shape: BoxShape.circle,
          padding: EdgeInsets.all(ScreenUtil().setWidth(6.0))),
    );
    final roundedAvatarWidget = Align(
      alignment: Alignment(-1, -1 + offset),
      child: AspectRatio(
        aspectRatio: 1 / 1,
        child: Stack(
          children: [
            Positioned.fill(
              child: StyledCacheImage(
                url: userInfo.imageUrl,
                isRound: true,
              ),
            ),
            iconWidget
          ],
        ),
      ),
    );

    final infoWidget = Align(
      alignment: Alignment(0, 0.6 + offset / 2),
      child: AutoSizeText(
        userInfo.name,
        maxLines: 1,
        overflow: TextOverflow.ellipsis,
        style: TextStyle(
            color: Colors.black45,
            fontSize: ScreenUtil().setSp(12.0),
            fontWeight: FontWeight.w600),
      ),
    );
    return InkWell(
      onTap: () {
        onTap(userInfo.name, userInfo.imageUrl);
      },
      child: Stack(
        children: [roundedAvatarWidget, infoWidget],
      ),
    );
  }
}
