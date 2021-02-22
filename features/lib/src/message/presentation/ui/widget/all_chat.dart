import 'package:features/src/message/data/repositories/data.dart';
import 'package:features/src/message/presentation/ui/widget/history_item.dart';
import 'package:flutter/material.dart';

class AllChat extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.only(top: 20.0, left: 20.0, right: 10.0),
          child: Text(
            'All Chats',
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
              item: friendsList[i],
              onTap: (imageUrl) {
                Navigator.pushNamed(context, '/chat');
              },
            );
          },
          itemCount: friendsList.length,
        )
      ],
    );
  }
}
