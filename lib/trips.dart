import 'package:flutter/material.dart';
import 'package:trips/home_trips.dart';
import 'package:trips/profile_trips.dart';
import 'package:trips/search_trips.dart';

class Trips extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _Trips();
  }

}
class _Trips extends State<Trips> {
  var indexTap = 0;
  final List<Widget> widgetChildren = [
    HomeTrips(),
    SearchTrips(),
    ProfileTrips()
  ];

  void onTapTapped(int index) {
    setState(() {
      indexTap = index;
    });
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: widgetChildren[indexTap],
      bottomNavigationBar: Theme(
        data: Theme.of(context).copyWith(
          canvasColor: Colors.white,
          primaryColor: Colors.purple
        ),
        child: BottomNavigationBar(
          onTap: onTapTapped,
          currentIndex: indexTap,
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.home), title: Text('')),
            BottomNavigationBarItem(icon: Icon(Icons.search), title: Text('')),
            BottomNavigationBarItem(icon: Icon(Icons.person), title: Text('')),
          ],
        ),
      ),
    );
  }
}