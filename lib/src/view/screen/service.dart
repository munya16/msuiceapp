import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ice/src/view/screen/component/devotionals/sermon.dart';
import 'package:ice/src/view/screen/component/devotionals/sing.dart';
import 'package:provider/provider.dart';

import '../../const/app_font.dart';
import '../../viewmodel/user.dart';

class Servic extends StatefulWidget {
  @override
  _ServicState createState() => _ServicState();
}

class _ServicState extends State<Servic> {
  Map<String, String> listInfomation = {
    'Read from Bible': 'Take your daily bible reading verses here',
    'Sing from HymnBook': 'Take gospel songs that uplifts your soul',
    'Watch Sermons': 'Take last Sundays Sermon here',
    'Watch Songs': 'Take last Sundays choir performances here',
    'Listen to Songs': 'Take your gospel mp3s here',
  };

  @override
  Widget build(BuildContext context) {
    //var productVM = Provider.of<ProductViewModel>(context,listen: false);
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
      child: Column(
        children: [
          SizedBox(
            height: 20,
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 5),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      "The World Is Complicated!",
                      style: AppFont.semiBold.copyWith(
                        fontWeight: FontWeight.bold,
                        color: Colors.green,
                      ),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      "take the word of God and live",
                      style: AppFont.medium.copyWith(
                          fontWeight: FontWeight.w500,
                          color: Colors.teal,
                          fontSize: 14),
                    ),
                  ],
                ),
              )
            ],
          ),

          SizedBox(
            height: 30,
          ),

          Expanded(
            child: ListView.separated(
              shrinkWrap: true,
              itemCount: listInfomation.length,
              separatorBuilder: (BuildContext context, int index)  => Divider(),
              itemBuilder: (BuildContext context, int index) {
                var title = listInfomation.keys.elementAt(index);
                var subtitle = listInfomation.values.elementAt(index);
                return InkWell(
                  onTap: () {
                    switch(index){
                      case 0:
                        Navigator.pop(context);
                        Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => Sing()));
                        break;
                      case 1:
                        Navigator.pop(context);
                        Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => Sing()));
                        break;
                      case 2:
                        Navigator.pop(context);
                        Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => Sing()));
                        break;
                      case 3:
                        Navigator.pop(context);
                        Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => Sing()));
                        break;
                    }
                  },
                  child: ListTile(
                    contentPadding: EdgeInsets.all(0.0),
                    title: Text(
                      title,
                      style: AppFont.semiBold.copyWith(
                          fontWeight: FontWeight.bold, fontSize: 17),
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
    );
  }
}
