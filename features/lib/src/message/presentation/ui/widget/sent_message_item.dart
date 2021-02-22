import 'package:flutter/material.dart';
import 'package:share_ui/awesome_ui.dart';

class SentMessageItem extends StatelessWidget {
  final Map<String, dynamic> message;
  const SentMessageItem({
    Key key,
    @required this.message,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 6.0),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Container(
                padding: EdgeInsets.all(10),
                constraints: BoxConstraints(
                    maxWidth: MediaQuery.of(context).size.width * 0.7),
                decoration: BoxDecoration(
                    color: kAccentColor,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(16),
                      topRight: Radius.circular(16),
                      bottomLeft: Radius.circular(12),
                      bottomRight: Radius.circular(0),
                    )),
                child: Text(
                  "${message['message']}",
                  style: Theme.of(context)
                      .textTheme
                      .bodyText1
                      .apply(color: Colors.white),
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(top: 5),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Icon(
                  Icons.done_all,
                  color: Theme.of(context).textTheme.bodyText1.color,
                ),
                SizedBox(
                  width: 8,
                ),
                Text(
                  "${message['time']}",
                  style: Theme.of(context)
                      .textTheme
                      .bodyText1
                      .apply(color: Colors.grey),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
