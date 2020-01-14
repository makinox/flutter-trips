import 'dart:io';
import 'package:flutter/material.dart';
import 'package:trips/Place/ui/widgets/title_input_location.dart';
import 'package:trips/widgets/gradientBack.dart';
import 'package:trips/widgets/text_input.dart';

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

    final _controllerTitlePlace = TextEditingController();
    final _controllerDescriptionPlace = TextEditingController();
    final _controllerLocationPlace = TextEditingController();
    
    return Scaffold(body: Stack(children: <Widget>[
      GradientBack('Add a new place', 250),
      Container(
        padding: EdgeInsets.only(top: 6, left: 0),
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
      ),
      Container(
        margin: EdgeInsets.only(top: 350, bottom: 20),
        child: ListView(children: <Widget>[
          Container(),
          Container(
            margin: EdgeInsets.only(bottom: 20),
            child: TextInput(
              hintText: 'Title',
              inputType: null,
              maxLines: 1,
              controller: _controllerTitlePlace,
            ),
          ),
          TextInput(
            hintText: 'Decription',
            inputType: TextInputType.multiline,
            maxLines: 4,
            controller: _controllerDescriptionPlace,
          ),
          Container(
            margin: EdgeInsets.only(top: 20),
            child: TextInputLocation(hintText: 'Add location', iconData: Icons.location_on, controller: _controllerLocationPlace,),
          )
        ],),
      )
    ],),);
  }

}