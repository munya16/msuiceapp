import 'package:ice/src/const/app_colors.dart';
import 'package:ice/src/view/screen/vote.dart';
//import 'package:ice/src/view/screen/vote1.dart';
import 'package:ice/src/view/screen/service.dart';
import 'package:ice/src/view/screen/donate.dart';
import 'package:ice/src/viewmodel/bottom_navigate_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'home_tab.dart';

class DashBoardScreen extends StatefulWidget {
  @override
  _DashBoardScreenState createState() => _DashBoardScreenState();
}

class _DashBoardScreenState extends State<DashBoardScreen> {
  List<Widget> page = [
    HomeTab(),
    Servic(),
    Vote(),
    Donate(),
  ];

  @override
  Widget build(BuildContext context) {
    var bottomProvider =
        Provider.of<BottomNavigationProvider>(context, listen: true);
    return Scaffold(
      backgroundColor: Colors.white,
      body: page[bottomProvider.currentIndex],
      bottomNavigationBar: ClipRRect(
        borderRadius: BorderRadius.only(
          topRight: Radius.circular(12),
          topLeft: Radius.circular(12),
        ),
        child: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          unselectedItemColor: Colors.teal,
          selectedItemColor: AppColors.primaryColorRed,
          currentIndex: bottomProvider.currentIndex,
          onTap: (int index) {
            bottomProvider.changePageTab = index;
          },
          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.video_camera_front_outlined),
              label: 'Devotionals',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.how_to_vote_outlined),
              label: 'Vote',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.money_outlined),
              label: 'Donate',
            ),
          ],
        ),
      ),
    );
  }
}
