import 'package:ice/src/const/app_font.dart';
import 'package:ice/src/router/router_path.dart';
import 'package:ice/src/view/screen/component/sidebar/page1.dart';
import 'package:ice/src/view/screen/component/sidebar/pagetwo.dart';
//import 'package:ice/src/view/screen/component/sidebar/page3.dart';
//import 'package:ice/src/view/screen/component/sidebar/page4.dart';
//import 'package:ice/src/view/screen/component/sidebar/page5.dart';
import 'package:flutter/material.dart';

class Iamnew extends StatefulWidget {
  @override
  _IamnewState createState() => _IamnewState();
}

class _IamnewState extends State<Iamnew> {
  Map<String, String> listInfomation = {
    'Meet the Chaplain': 'Welcome remarks from the Chaplain',
    'Meet prominent church members': 'Board members, the youth leader ...',
    'Meet the Alumni': 'Get help from those who have academic/spiritual experience',
    'Meet others like you': 'Are you a youth? Are you single? Interact with others!',
    'See how this started': 'You want to know church history? Get the Revelation!',
  };
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.black45,
        appBar: AppBar(
          centerTitle: true,
          title: Text('Welcome to MSU e-Worship'),
        ),
        body: Container(
          padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
          child: Column(
            children: [
              Expanded(
                child: ListView.separated(
                  shrinkWrap: true,
                  itemCount: listInfomation.length,
                  separatorBuilder: (BuildContext context, int index) => Divider(),
                  itemBuilder: (BuildContext context, int index) {
                    var title = listInfomation.keys.elementAt(index);
                    var subtitle = listInfomation.values.elementAt(index);
                    return InkWell(
                      onTap: () {
                        switch (index) {
                          case 0:
                            Navigator.pushNamed(context, Pageone);
                            break;
                          case 1:
                            Navigator.pushNamed(context, Pagetwos);
                            break;
                          case 2:
                            Navigator.pushNamed(context, Pagethree);
                            break;
                          case 3:
                            Navigator.pushNamed(context, Songs);
                            break;
                          case 4:
                            Navigator.pushNamed(context, Songs);
                            break;
                        }
                      },
                      child: ListTile(
                        contentPadding: EdgeInsets.all(0.0),
                        title: Text(
                          title,
                          style: AppFont.semiBold
                              .copyWith(fontWeight: FontWeight.bold, fontSize: 17),
                        ),
                        subtitle: Text(
                          subtitle,
                          style: AppFont.regular.copyWith(
                              fontWeight: FontWeight.w100,
                              fontSize: 13,
                              color: Colors.grey),
                        ),
                        trailing: IconButton(
                          onPressed: () {},
                          icon: Icon(
                            Icons.arrow_forward_ios,
                            size: 18,
                            color: Colors.grey,
                          ),
                        ),
                      ),
                    );
                  },
                ),
              )
            ],
          ),
        )
    );
  }
}
