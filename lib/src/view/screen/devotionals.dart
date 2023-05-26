import 'package:ice/src/const/app_font.dart';
import 'package:ice/src/router/router_path.dart';
import 'package:ice/src/view/screen/component/devotionals/audios.dart';
import 'package:ice/src/view/screen/component/devotionals/sermon.dart';
import 'package:ice/src/viewmodel/user.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Devotionals extends StatefulWidget {
  @override
  _DevotionalsState createState() => _DevotionalsState();
}

class _DevotionalsState extends State<Devotionals> {
  Map<String, String> listInfomation = {
    'Sermon Visuals': 'Watch Sermons Here',
    'Audio Sermons': 'Listen to Sermons Here',
    'Song Visuals': 'Watch Christian Songs Here',
    'Audio Songs': 'Listen to Christian Songs Here',
    'Selections': 'Select your favourite topics or songs',
  };
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.black45,
        appBar: AppBar(
        centerTitle: true,
        title: Text('Devotionals'),
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
                        Navigator.pushNamed(context, Sermons);
                        break;
                      case 1:
                        Navigator.pushNamed(context, Adios);
                        break;
                      case 2:
                        Navigator.pushNamed(context, Songs);
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
