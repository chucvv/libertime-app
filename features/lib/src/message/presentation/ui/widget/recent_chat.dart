import 'package:features/src/message/data/repositories/data.dart';
import 'package:features/src/message/presentation/ui/model/room_chat_args.dart';
import 'package:features/src/message/presentation/ui/widget/history_item.dart';
import 'package:flutter/material.dart';

class RecentChat extends StatelessWidget {
  final _friendChats = friendsList.take(4).toList();
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.only(top: 20.0, left: 20.0, right: 10.0),
          child: Text(
            'Recent Chats',
            style: Theme.of(context)
                .textTheme
                .headline4
                .apply(color: Colors.redAccent.withOpacity(0.8)),
          ),
        ),
        SizedBox(
          height: 6.0,
        ),
        ListView.builder(
          shrinkWrap: true,
          itemBuilder: (ctx, i) {
            return HistoryItem(
              item: _friendChats[i],
              onTap: (userName, imageUrl) {
                Navigator.pushNamed(context, '/room_chat',
                    arguments: RoomChatArgument(userName, imageUrl));
              },
            );
          },
          itemCount: _friendChats.length,
        )
      ],
    );
  }
}
