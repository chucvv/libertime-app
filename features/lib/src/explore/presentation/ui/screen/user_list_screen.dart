import 'package:features/src/explore/presentation/ui/widget/user_item.dart';
import 'package:features/src/home/data/repositories/data.dart';
import 'package:features/src/information/presentation/model/user_info_argument.dart';
import 'package:flutter/material.dart';
import 'package:flutter_fimber/flutter_fimber.dart';
import 'package:share_ui/awesome_ui.dart';

class UserListScreen extends StatefulWidget {
  @override
  _UserListScreenState createState() => _UserListScreenState();
}

class _UserListScreenState extends State<UserListScreen>
    with AutomaticKeepAliveClientMixin<UserListScreen> {
  @override
  bool get wantKeepAlive => true;
  @override
  void initState() {
    super.initState();
    Fimber.d("initState");
  }

  @override
  Widget build(BuildContext context) {
    super.build(context);
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.centerLeft,
          end: Alignment.centerRight,
          colors: <Color>[Colors.white, kLowOpacityAccentColor],
        ),
      ),
      padding: EdgeInsets.only(top: 10.0, right: 10.0, left: 10.0),
      child: GridView.builder(
          clipBehavior: Clip.antiAlias,
          itemCount: peoples.length,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: 15.0,
            mainAxisSpacing: 15.0,
          ),
          itemBuilder: (context, index) {
            return UserItem(
                userInfo: peoples[index],
                onTap: (userId) {
                  print('you selected $userId');
                  Navigator.of(context).pushNamed("/person_info",
                      arguments: UserInfoArgument(userId));
                });
          }),
    );
  }
}
