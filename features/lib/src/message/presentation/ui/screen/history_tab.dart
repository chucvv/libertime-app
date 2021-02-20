import 'package:features/src/message/data/repositories/data.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:share_ui/awesome_ui.dart';

class ChatHistoryScreen extends StatefulWidget {
  @override
  _ChatHistoryScreenState createState() => _ChatHistoryScreenState();
}

class _ChatHistoryScreenState extends State<ChatHistoryScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.centerLeft,
          end: Alignment.centerRight,
          colors: <Color>[Colors.white, kLowOpacityAccentColor],
        ),
      ),
      child: ListView.builder(
        itemBuilder: (ctx, i) {
          return Column(
            children: [_buildItem(i), Divider()],
          );
        },
        itemCount: friendsList.length,
      ).topRound(40, clBackgroud, clBackgroud),
    );
  }

  ListTile _buildItem(int i) {
    return ListTile(
      isThreeLine: true,
      onLongPress: () {},
      onTap: () => Navigator.pushNamed(context, '/chat'),
      leading: Container(
        width: ScreenUtil().setWidth(50.0),
        height: ScreenUtil().setHeight(50.0),
        child: Stack(
          children: <Widget>[
            Positioned.fill(
              child: StyledCacheImage(
                url: friendsList[i]['imgUrl'],
                defaultIcon: Icon(
                  IconFonts.bleeding_hearts,
                  color: kAccentColor,
                ),
                isRound: true,
                boxBorder: Border.all(
                  color: Colors.white,
                  width: 3,
                ),
                boxShadow: [
                  BoxShadow(
                      color: Colors.grey.withOpacity(.3),
                      offset: Offset(0, 5),
                      blurRadius: 25)
                ],
              ),
            ),
            friendsList[i]['isOnline']
                ? Align(
                    alignment: Alignment.topRight,
                    child: Container(
                      height: 15,
                      width: 15,
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: Colors.white,
                          width: 3,
                        ),
                        shape: BoxShape.circle,
                        color: Colors.green,
                      ),
                    ),
                  )
                : Container(),
          ],
        ),
      ),
      title: Text(
        "${friendsList[i]['username']}",
        style: Theme.of(context).textTheme.headline6,
      ),
      subtitle: Text(
        "${friendsList[i]['lastMsg']}",
        style: !friendsList[i]['seen']
            ? Theme.of(context).textTheme.subtitle2.apply(color: Colors.black87)
            : Theme.of(context)
                .textTheme
                .subtitle2
                .apply(color: Colors.black54),
      ),
      trailing: Container(
        width: 60,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: <Widget>[
            Row(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                friendsList[i]['seen']
                    ? Icon(
                        Icons.check,
                        size: 15,
                      )
                    : Container(height: 15, width: 15),
                Text("${friendsList[i]['lastMsgTime']}")
              ],
            ),
            SizedBox(
              height: 5.0,
            ),
            friendsList[i]['hasUnSeenMsgs']
                ? Container(
                    alignment: Alignment.center,
                    height: 25,
                    width: 25,
                    decoration: BoxDecoration(
                      color: clPrimary,
                      shape: BoxShape.circle,
                    ),
                    child: Text(
                      "${friendsList[i]['unseenCount']}",
                      style: TextStyle(color: Colors.white),
                    ),
                  )
                : Container(
                    height: 25,
                    width: 25,
                  ),
          ],
        ),
      ),
    );
  }
}
