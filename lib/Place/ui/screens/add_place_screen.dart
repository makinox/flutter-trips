import 'dart:io';
import 'package:flutter/material.dart';
import 'package:trips/widgets/gradientBack.dart';

class AddPlaceScreen extends StatefulWidget {

  final File image;
  AddPlaceScreen({Key key, this.image});

  @override
  State<StatefulWidget> createState() {
    
    return _AddPlaceScreen();
  }
  
}

class _AddPlaceScreen extends State<AddPlaceScreen> {
  @override
  Widget build(BuildContext context) {
    
    return Scaffold(body: Stack(children: <Widget>[
      GradientBack('Add a new place', 300),
      Row(children: <Widget>[
        Container(
          padding: EdgeInsets.only(top: 12, left: 0),
          child: SizedBox(
            height: 45,
            width: 45,
            child: IconButton(
              icon: Icon(Icons.keyboard_arrow_left, color: Colors.white, size: 45,),
              onPressed: () {
                Navigator.pop(context);
              },
            ),
          ),
        )
      ],)
    ],),);
  }

}