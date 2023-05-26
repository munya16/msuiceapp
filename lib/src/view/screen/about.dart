import 'package:flutter/material.dart';
//import 'package:flutter/src/foundation/key.dart';
//import 'package:flutter/src/widgets/framework.dart';

class PersonalTab extends StatefulWidget {
  const PersonalTab({Key? key}) : super(key: key);

  @override
  State<PersonalTab> createState() => _PersonalTabState();
}

class _PersonalTabState extends State<PersonalTab> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'About MSU ICE',
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Container(
              padding: EdgeInsets.all(10),
              child: Column(children: <Widget>[
                Card(
                    child: Container(
                      child: Container(
                          alignment: Alignment.topLeft,
                          padding: EdgeInsets.all(15),
                          child: Column(
                            children: <Widget>[
                              Column(children: <Widget>[
                                ...ListTile.divideTiles(color: Colors.grey, tiles: [
                                  ListTile(
                                    leading: Icon(Icons.info),
                                    title: Text('App Info'),
                                    subtitle: Text('MSU ICE is a religious mobile application designed to bring church services closer to the people. it has been designed for the church community consisting of students at the institution such that they never lose their religious identity during their years of study. The app was designed by the logikreativity team and is free for use by any.'),
                                  ),
                                  ListTile(
                                    leading: Icon(Icons.phone_android),
                                    title: Text('Version'),
                                    subtitle: Text('1.0.0'),
                                  ),
                                  ListTile(
                                    leading: Icon(Icons.call),
                                    title: Text('Call Us'),
                                    subtitle: Text('+263 785 787 274'),
                                  ),
                                  ListTile(
                                    leading: Icon(Icons.email_outlined),
                                    title: Text('Email Us'),
                                    subtitle: Text('logikreativity@gmail.com'),
                                  )
                                ])
                              ])
                            ],
                          )),
                    )),
              ]),
            ),
          ],
        ),
      ),
    );
  }
}
