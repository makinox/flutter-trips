import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:trips/Place/ui/screens/home_trips.dart';
import 'package:trips/Place/ui/screens/search_trips.dart';
import 'package:trips/User/ui/screens/profile_trips.dart';

class Trips extends StatelessWidget {

    static final List<Widget> navigationWidget = [
    HomeTrips(),
    SearchTrips(),
    ProfileTrips()
  ];

  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      bottomNavigationBar: CupertinoTabScaffold(
        tabBar: CupertinoTabBar(backgroundColor: Colors.white60 ,activeColor: Colors.indigo,items: [
          BottomNavigationBarItem(
              icon: Icon(Icons.home), title: Text("")),
          BottomNavigationBarItem(
              icon: Icon(Icons.search), title: Text("")),
          BottomNavigationBarItem(
              icon: Icon(Icons.person), title: Text("")),
        ]),
        tabBuilder: (BuildContext context, int index){
            return CupertinoTabView(
              builder: (BuildContext context) => navigationWidget[index]
            );
          },
      ),
    );
  }
}
