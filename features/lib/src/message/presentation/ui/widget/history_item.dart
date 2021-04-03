import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:share_ui/awesome_ui.dart';

typedef onTapItem = void Function(String name, String imageUrl);

class HistoryItem extends StatelessWidget {
  final Map<String, dynamic> item;
  final onTapItem onTap;

  const HistoryItem({Key key, @required this.item, @required this.onTap})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return ListTile(
      isThreeLine: true,
      onLongPress: () {},
      onTap: () => {onTap(item['username'], item['imgUrl'])},
      leading: Container(
        width: ScreenUtil().setWidth(50.0),
        height: ScreenUtil().setHeight(50.0),
        child: Stack(
          children: <Widget>[
            Positioned.fill(
              child: StyledCacheImage(
                url: item['imgUrl'],
                defaultWidget: Icon(
                  IconFonts.bleeding_hearts,
                  color: kAccentColor,
                ),
                isRound: true,
                boxShadow: [
                  BoxShadow(
                      color: Colors.grey.withOpacity(.3),
                      offset: Offset(0, 5),
                      blurRadius: 25)
                ],
              ),
            ),
            item['isOnline']
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
        "${item['username']}",
        style: Theme.of(context).textTheme.headline1,
      ),
      subtitle: Text(
        "${item['lastMsg']}",
        maxLines: 2,
        overflow: TextOverflow.ellipsis,
        style: !item['seen']
            ? Theme.of(context).textTheme.subtitle2
            : Theme.of(context)
                .textTheme
                .subtitle2
                .apply(color: kPrimaryColorVariant),
      ),
      trailing: Container(
        width: ScreenUtil().setWidth(60.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: <Widget>[
            Row(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                item['seen']
                    ? Icon(
                        Icons.check,
                        size: 15,
                      )
                    : Container(height: 15, width: 15),
                Text("${item['lastMsgTime']}")
              ],
            ),
            SizedBox(
              height: 5.0,
            ),
            item['hasUnSeenMsgs']
                ? Container(
                    alignment: Alignment.center,
                    height: ScreenUtil().setHeight(20.0),
                    width: ScreenUtil().setWidth(20.0),
                    decoration: BoxDecoration(
                      color: kPrimaryColorVariant,
                      shape: BoxShape.circle,
                    ),
                    child: Text(
                      "${item['unseenCount']}",
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
