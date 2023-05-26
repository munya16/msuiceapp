import 'package:ice/src/const/app_font.dart';
import 'package:flutter/material.dart';
import 'package:ice/src/view/screen/component/hometab/horizontalist.dart';
import 'horizontalis2.dart';
import 'horizontalist.dart';

class BodyPage extends StatefulWidget {

  @override
  _BodyPageState createState() => _BodyPageState();
}

class _BodyPageState extends State<BodyPage> {

  @override
  Widget build(BuildContext context) {

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          buildHeaderBody(title: "You're New", description: "Here is how to start your journey"),

          SizedBox(
            height: 20,
          ),
         HorizontalList(),
          SizedBox(
            height: 30,
          ),
          buildHeaderBody(title: "Link Up!", description: "Connect with others like you."),

          SizedBox(
            height: 20,
          ),
          HorizontalLis2(),
        ],
      ),
    );
  }

  Widget buildHeaderBody({required String title,required String description}){
    return Row(
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(title,style: AppFont.bold.copyWith(
              fontSize: 25,
              fontWeight: FontWeight.bold,
            ),),
            SizedBox(
              height: 8,
            ),
            Text(description,style: AppFont.regular.copyWith(
              fontSize: 13,
              color: Colors.teal,
              fontWeight: FontWeight.normal,
            ),),
          ],
        ),
        ],
    );
  }
}
