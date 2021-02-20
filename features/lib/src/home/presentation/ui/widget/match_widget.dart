import 'package:features/src/information/presentation/model/user_info.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:share_ui/awesome_ui.dart';

typedef MatchWidgetClicked = void Function(String userId);

class MatchWidget extends StatelessWidget {
  final UserInfo userInfo;
  final MatchWidgetClicked onTap;

  const MatchWidget({Key key, this.userInfo, this.onTap}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final personalInfoWidget = Positioned(
      bottom: 0.0,
      left: 0.0,
      right: 0.0,
      child: Container(
        padding: EdgeInsets.all(ScreenUtil().setHeight(5.0)),
        decoration: BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.bottomCenter,
                end: Alignment.topCenter,
                tileMode: TileMode.mirror,
                stops: [
                  0.1,
                  0.4,
                  0.6,
                  0.9
                ],
                colors: [
                  Colors.black54,
                  Colors.black45,
                  Colors.black38,
                  Colors.black12,
                ]),
            borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(10),
                bottomRight: Radius.circular(10))),
        child: Column(
          mainAxisSize: MainAxisSize.max,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Row(
              mainAxisSize: MainAxisSize.max,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                SizedBox(
                  width: MediaQuery.of(context).size.width / 3 * 2,
                  child: Text(
                    userInfo.name,
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(
                        shadows: [
                          Shadow(
                              color: Colors.black54,
                              offset: Offset(1.0, 2.0),
                              blurRadius: 10.0)
                        ],
                        color: Colors.white,
                        fontSize: ScreenUtil().setSp(18.0),
                        fontWeight: FontWeight.w600),
                  ),
                ),
                SizedBox(
                  width: ScreenUtil().setWidth(10.0),
                ),
                Text(
                  userInfo.age.toString(),
                  style: TextStyle(
                      shadows: [
                        Shadow(
                            color: Colors.black54,
                            offset: Offset(1.0, 2.0),
                            blurRadius: 10.0)
                      ],
                      color: Colors.white,
                      fontSize: ScreenUtil().setSp(24.0),
                      fontWeight: FontWeight.w300),
                ),
              ],
            ),
            SizedBox(
              height: ScreenUtil().setHeight(3.0),
            ),
            Row(
              children: [
                Icon(
                  IconFonts.suitcase,
                  color: Theme.of(context).iconTheme.color,
                ),
                SizedBox(
                  width: ScreenUtil().setWidth(5.0),
                ),
                Text(
                  userInfo.occupation,
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: ScreenUtil().setSp(16.0),
                      fontWeight: FontWeight.w400),
                ),
              ],
            ),
            SizedBox(
              height: ScreenUtil().setHeight(3.0),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Icon(
                      IconFonts.direction_1,
                      color: Colors.white,
                    ),
                    SizedBox(
                      width: ScreenUtil().setWidth(5.0),
                    ),
                    Text(
                      userInfo.distance,
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: ScreenUtil().setSp(16.0),
                          fontWeight: FontWeight.w400),
                    ),
                  ],
                ),
                IconButton(
                    icon: Icon(IconFonts.more_vert),
                    color: Theme.of(context).iconTheme.color,
                    onPressed: () {
                      onTap(userInfo.id);
                    }),
              ],
            ),
          ],
        ),
      ),
    );

    final avatarWidget = Container(
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
              color: Colors.grey.shade500,
              offset: Offset(0.0, 5.0),
              blurRadius: 15.0)
        ],
        borderRadius: BorderRadius.circular(10.0),
      ),
      child: StyledCacheImage(
        url: userInfo.imageUrl,
        height: MediaQuery.of(context).size.height * 0.75,
        width: MediaQuery.of(context).size.width - 30.0,
        borderRadius: BorderRadius.circular(10.0),
      ),
    );
    return Stack(
      children: [avatarWidget, personalInfoWidget],
    );
  }
}
