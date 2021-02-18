import 'package:features/src/information/presentation/model/user_info.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:share_ui/awesome_ui.dart';

typedef MatchItemClicked = void Function(String userId);

class MatchItem extends StatelessWidget {
  final double offset;
  final UserInfo userInfo;
  final MatchItemClicked onTap;

  const MatchItem({Key key, this.userInfo, this.onTap, this.offset})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    final roundedAvatarWidget = Align(
      alignment: Alignment(-1, -1 + offset),
      child: AspectRatio(
        aspectRatio: 1 / 1,
        child: ClipRRect(
          borderRadius: BorderRadius.circular(60.0),
          child: NetworkingImage(url: userInfo.imageUrl, boxFit: BoxFit.cover),
        ),
      ),
    );
    final chattingIconWidget = Align(
        alignment: Alignment(0.6, 0.1 + offset * 2 / 3),
        child: Container(
          padding: EdgeInsets.all(ScreenUtil().setWidth(8.0)),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(60.0)),
            gradient: LinearGradient(
                colors: [
                  Colors.redAccent,
                  Colors.deepPurpleAccent,
                ],
                begin: Alignment.centerLeft,
                end: Alignment.centerRight,
                tileMode: TileMode.mirror),
          ),
          child: Icon(IconFonts.wechat),
        ));
    final infoWidget = Align(
      alignment: Alignment(0, 0.8 + offset * 2 / 3),
      child: Text(
        userInfo.name,
        maxLines: 2,
        overflow: TextOverflow.ellipsis,
        style: TextStyle(
            color: Colors.black45,
            fontSize: ScreenUtil().setSp(14.0),
            fontWeight: FontWeight.w600),
      ),
    );
    return InkWell(
      onTap: () {
        onTap(userInfo.id);
      },
      child: Stack(
        children: [roundedAvatarWidget, infoWidget, chattingIconWidget],
      ),
    );
  }
}
