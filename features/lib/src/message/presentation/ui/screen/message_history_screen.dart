import 'package:features/src/message/data/repositories/data.dart';
import 'package:flutter/material.dart';
import 'package:flutter_fimber/flutter_fimber.dart';
import 'package:share_ui/awesome_ui.dart';

class MessageHistoryScreen extends StatefulWidget {
  @override
  _MessageHistoryScreenState createState() => _MessageHistoryScreenState();
}

class _MessageHistoryScreenState extends State<MessageHistoryScreen>
    with AutomaticKeepAliveClientMixin<MessageHistoryScreen> {
  @override
  void initState() {
    super.initState();
    Fimber.d("initState");
  }

  @override
  bool get wantKeepAlive => true;

  @override
  Widget build(BuildContext context) {
    super.build(context);
    return Scaffold(
      body: ListView.builder(
        itemBuilder: (ctx, i) {
          return Column(
            children: [_buildItem(i), Divider()],
          );
        },
        itemCount: friendsList.length,
      ),
    );
  }

  ListTile _buildItem(int i) {
    return ListTile(
      isThreeLine: true,
      onLongPress: () {},
      onTap: () => Navigator.pushNamed(context, '/chat'),
      leading: Container(
        width: 50,
        height: 50,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          border: Border.all(
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
        child: Stack(
          children: <Widget>[
            Positioned.fill(
              child: CircleAvatar(
                backgroundImage: NetworkImage(friendsList[i]['imgUrl']),
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
