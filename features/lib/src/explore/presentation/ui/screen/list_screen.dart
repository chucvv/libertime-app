import 'package:features/src/home/data/repositories/data.dart';
import 'package:flutter/material.dart';
import 'package:flutter_fimber/flutter_fimber.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:share_ui/awesome_ui.dart';

class ListScreen extends StatefulWidget {
  @override
  _ListScreenState createState() => _ListScreenState();
}

class _ListScreenState extends State<ListScreen>
    with AutomaticKeepAliveClientMixin<ListScreen> {
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
      padding: EdgeInsets.all(15.0),
      child: GridView.builder(
          itemCount: peoples.length,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: 15.0,
            mainAxisSpacing: 15.0,
          ),
          itemBuilder: (context, index) {
            return _buildItem(
                index,
                peoples[index].name,
                peoples[index].imageURL,
                peoples[index].age,
                peoples[index].location);
          }),
    );
  }

  Widget _buildItem(
      int index, String name, String image, int age, String distance) {
    final personalInfoWidget = Positioned(
      bottom: 0.0,
      left: 0.0,
      right: 0.0,
      child: Container(
        padding: EdgeInsets.all(ScreenUtil().setHeight(3.0)),
        decoration: BoxDecoration(
            color: Theme.of(context).primaryColor.withOpacity(0.6),
            borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(10),
                bottomRight: Radius.circular(10))),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Row(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Text(
                  name,
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
                SizedBox(
                  width: ScreenUtil().setWidth(5.0),
                ),
                Text(
                  age.toString(),
                  style: TextStyle(
                      shadows: [
                        Shadow(
                            color: Colors.black54,
                            offset: Offset(1.0, 2.0),
                            blurRadius: 10.0)
                      ],
                      color: Colors.white,
                      fontSize: ScreenUtil().setSp(16.0),
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
                  Icons.location_pin,
                  color: Colors.red.shade300,
                ),
                Text(
                  distance,
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

    final avatarWidget = ClipRRect(
      borderRadius: BorderRadius.circular(10.0),
      child: NetworkingImage(
          url: image,
          height: MediaQuery.of(context).size.height * 0.75,
          width: MediaQuery.of(context).size.width - 30.0,
          boxFit: BoxFit.cover),
    );
    return GestureDetector(
      onTap: () {
        print('you selected $index');
      },
      child: Stack(
        children: [avatarWidget, personalInfoWidget],
      ),
    );
  }
}
