import 'package:ice/src/const/app_colors.dart';
import 'package:ice/src/view/screen/component/sidebar/locate.dart';
import 'package:ice/src/view/screen/component/sidebar/tinder.dart';
import 'package:ice/src/view/screen/component/sidebar/calendarr.dart';
import 'package:ice/src/viewmodel/bottom_navigate_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'home_tab.dart';

class EventsWidget extends StatefulWidget {
  @override
  _EventsWidgetState createState() => _EventsWidgetState();
}

class _EventsWidgetState extends State<EventsWidget> {
  List<Widget> page = [
    Tinder(),
    Locate(),
    Calendarr(),
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
              icon: Icon(Icons.upcoming_outlined),
              label: 'Upcoming',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.location_on_outlined),
              label: 'Locate me',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.money_outlined),
              label: 'See Calendar',
            ),
          ],
        ),
      ),
    );
  }
}
