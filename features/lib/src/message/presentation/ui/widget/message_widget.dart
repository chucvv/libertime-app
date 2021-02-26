import 'package:flutter/material.dart';
import 'package:dart_nats/dart_nats.dart';

class MessageWidget extends StatefulWidget {
  @override
  _MessageWidgetState createState() => _MessageWidgetState();
}

class _MessageWidgetState extends State<MessageWidget> {
  final TextEditingController _controller = TextEditingController();
  Client natsClient;
  Subscription fooSub, barSub;

  @override
  void initState() {
    super.initState();
    connect();
  }

  void connect() {
    natsClient = Client();
    natsClient.connect('localhost');
    fooSub = natsClient.sub('foo');
    barSub = natsClient.sub('bar');
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Form(
            child: TextFormField(
              controller: _controller,
              decoration: InputDecoration(labelText: 'publish'),
            ),
          ),
          Text('foo message:'),
          StreamBuilder(
            stream: fooSub.stream,
            builder: (context, snapshot) {
              return Text(snapshot.hasData ? '${snapshot.data.string}' : '');
            },
          ),
          Text('bar message:'),
          StreamBuilder(
            stream: barSub.stream,
            builder: (context, snapshot) {
              return Text(snapshot.hasData ? '${snapshot.data.string}' : '');
            },
          ),
          Row(
            children: <Widget>[
              // ignore: deprecated_member_use
              RaisedButton(
                  child: Text('pub to foo'),
                  onPressed: () => _publishMessage('foo')),
              // ignore: deprecated_member_use
              RaisedButton(
                  child: Text('pub to bar'),
                  onPressed: () => _publishMessage('bar')),
            ],
          ),
        ],
      ),
    );
  }

  void _publishMessage(String subject) {
    if (_controller.text.isNotEmpty) {
      natsClient.pubString(subject, _controller.text);
    }
  }

  @override
  void dispose() {
    natsClient.close();
    super.dispose();
  }
}
