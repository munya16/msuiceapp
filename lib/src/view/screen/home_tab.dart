import 'package:ice/src/view/screen/component/hometab/body_page.dart';
import 'package:ice/src/view/screen/component/hometab/header_page.dart';
import 'package:ice/src/view/screen/component/devotionals/vsong.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:ice/src/view/screen/events.dart';
import 'package:ice/src/view/screen/iamnew.dart';
import 'package:ice/src/view/screen/about.dart';

class HomeTab extends StatefulWidget {
  @override
  _HomeTabState createState() => _HomeTabState();
}

class _HomeTabState extends State<HomeTab> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  //final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    Future exitDialog() {
      return showDialog(
        context: context,
        builder: (context) => new AlertDialog(
          backgroundColor: Colors.white,
          title: Text('MSU ICE'),
          content: Text('Do you wanna exit the app?'),
          actions: <Widget>[
            new IconButton(
              icon: Icon(Icons.exit_to_app_outlined),
              color: Colors.red,
              onPressed: () {
                SystemNavigator.pop(animated: false);
              },
            ),

            IconButton(
              icon: Icon(Icons.clear),
              color: Colors.green,
              onPressed: () {
                Navigator.of(context).pop(false);
              },
            ),
          ],
        ),
      );
    }

    return WillPopScope(
        onWillPop: () {
          exitDialog();
          return Future.value(false);
        },
        child: Scaffold(
          appBar: AppBar(
            title: Text('MSU ICE'),
            actions: <Widget>[
              new IconButton(
                  icon: Icon(
                    Icons.search,
                    color: Colors.white,
                  ),
                  onPressed: () {
                    showSearch(context: context, delegate: Search());
                  }),
              new IconButton(
                  icon: Icon(
                    Icons.more_vert_outlined,
                    color: Colors.white,
                  ),
                  onPressed: () {
                    showSearch(context: context, delegate: Search());
                  }),
            ],
          ),
          drawer: new Drawer(
            child: new ListView(
              children: <Widget>[
//            header
                new UserAccountsDrawerHeader(
                  accountName: Text('Life Is Complicated'),
                  accountEmail: Text('We Want To Help You'),
                  currentAccountPicture: GestureDetector(
                    child: new ClipRRect(
                      borderRadius: BorderRadius.circular(45),
                      child: Image.asset('assets/images/logo.png'),
                      //child: Icon(Icons.person, color: Colors.white,),
                    ),
                  ),
                  decoration: new BoxDecoration(color: Colors.blueGrey),
                ),

                InkWell(
                  onTap: () {
                    Navigator.pop(context);
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => Iamnew()));
                  },
                  child: ListTile(
                    title: Text('I am new'),
                    leading: Icon(Icons.hail_outlined),
                  ),
                ),

                InkWell(
                  onTap: () {
                    Navigator.pop(context);
                    Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => EventsWidget()));
                  },
                  child: ListTile(
                    title: Text('Events'),
                    leading: Icon(Icons.event_available_outlined),
                  ),
                ),

                InkWell(
                  onTap: () {
                    Navigator.pop(context);
                    Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Song()));
                  },
                  child: ListTile(
                    title: Text('24/7 United prayer'),
                    leading: Icon(Icons.people_alt_outlined),
                  ),
                ),

                InkWell(
                  onTap: () {
                    Navigator.pop(context);
                    Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => PersonalTab()));
                  },
                  child: ListTile(
                    title: Text('About Us'),
                    leading: Icon(Icons.info_outline),
                  ),
                ),

                InkWell(
                  onTap: () {
                    exitDialog();
                  },
                  child: ListTile(
                    title: Text('Logout'),
                    leading: Icon(Icons.logout),
                  ),
                ),
              ],
            ),
          ),
          body: SingleChildScrollView(
            child: Container(
              child: Column(
                children: [
                  Header_page(),
                  SizedBox(
                    height: 20,
                  ),
                  BodyPage(),
                ],
              ),
            ),
          ),
        ));
  }
}

//search icon functionality starts here
class Search extends SearchDelegate<String> {
  final locations = [
    'Youth',
    'Single',
    'Married',
    'Divorced',
    'Young couples',
    'Widows & widowers',
    'Reserved',
    'Elderly'
  ];

  final recentLocations = ['Single', 'Young couples', 'Married'];

  @override
  List<Widget>? buildActions(BuildContext context) {
    return [
      IconButton(
          onPressed: () {
            query = '';
          },
          icon: Icon(Icons.clear))
    ];
    // TODO: implement buildActions
    throw UnimplementedError();
  }

  @override
  Widget? buildLeading(BuildContext context) {
    return IconButton(
        icon: AnimatedIcon(
          icon: AnimatedIcons.menu_arrow,
          progress: transitionAnimation,
        ),
        onPressed: () {
          close(context, '');
        });
    // TODO: implement buildLeading
    throw UnimplementedError();
  }

  @override
  Widget buildResults(BuildContext context) {
    // return What()
    // TODO: implement buildResults
    throw UnimplementedError();
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    final suggestionList = query.isEmpty
        ? recentLocations
        : locations.where((p) => p.startsWith(query)).toList();
    return ListView.builder(
      itemBuilder: (context, index) => ListTile(
        //where would the searched word lead to ?
        onTap: () {
          showResults(context);
        },
        leading: Icon(Icons.people_alt_outlined),
        title: RichText(
            text: TextSpan(
                text: suggestionList[index].substring(0, query.length),
                style:
                    TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
                children: [
              TextSpan(
                  text: suggestionList[index].substring(query.length),
                  style: TextStyle(color: Colors.grey))
            ])),
      ),
      itemCount: suggestionList.length,
    );
    // TODO: implement buildSuggestions
    throw UnimplementedError();
  }
}
