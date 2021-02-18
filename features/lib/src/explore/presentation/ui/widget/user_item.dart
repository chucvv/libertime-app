import 'package:features/src/information/presentation/model/user_info.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:share_ui/awesome_ui.dart';

typedef UserItemClicked = void Function(String userId);

class UserItem extends StatelessWidget {
  final UserInfo userInfo;
  final UserItemClicked onTap;

  const UserItem({Key key, this.userInfo, this.onTap}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final personalInfoWidget = Positioned(
      bottom: 0.0,
      left: 0.0,
      right: 0.0,
      child: Container(
        padding: EdgeInsets.all(ScreenUtil().setHeight(3.0)),
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
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Row(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                SizedBox(
                  width: MediaQuery.of(context).size.width / 3,
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
                        fontSize: ScreenUtil().setSp(14.0),
                        fontWeight: FontWeight.w600),
                  ),
                ),
                SizedBox(
                  width: ScreenUtil().setWidth(5.0),
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
                      fontSize: ScreenUtil().setSp(14.0),
                      fontWeight: FontWeight.w300),
                ),
              ],
            ),
            SizedBox(
              height: ScreenUtil().setHeight(3.0),
            ),
            Row(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Icon(
                  IconFonts.direction_1,
                  size: ScreenUtil().setHeight(12.0),
                  color: Colors.white,
                ),
                SizedBox(
                  width: ScreenUtil().setWidth(5.0),
                ),
                Text(
                  userInfo.distance,
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: ScreenUtil().setSp(14.0),
                      fontWeight: FontWeight.w400),
                ),
              ],
            ),
          ],
        ),
      ),
    );

    final avatarWidget = Hero(
        tag: 'info_${userInfo.id}',
        child: AspectRatio(
          aspectRatio: 1 / 1,
          child: ClipRRect(
            borderRadius: BorderRadius.circular(10.0),
            child:
                NetworkingImage(url: userInfo.imageUrl, boxFit: BoxFit.cover),
          ),
        ));
    return InkWell(
      onTap: () {
        onTap(userInfo.id);
      },
      child: Stack(
        children: [avatarWidget, personalInfoWidget],
      ),
    );
  }
}
