import 'dart:io';
import 'package:flutter/material.dart';
import 'package:generic_bloc_provider/generic_bloc_provider.dart';
import 'package:trips/Place/model/place.dart';
import 'package:trips/Place/ui/widgets/card_image.dart';
import 'package:trips/Place/ui/widgets/title_input_location.dart';
import 'package:trips/User/bloc/block_user.dart';
import 'package:trips/widgets/button_purple.dart';
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

    UserBlock userBlock = BlocProvider.of<UserBlock>(context);
    final _controllerTitlePlace = TextEditingController();
    final _controllerDescriptionPlace = TextEditingController();
    final _controllerLocationPlace = TextEditingController();

    var form = ListView(children: <Widget>[
      Container(
        margin: EdgeInsets.only(top: 400 ,bottom: 20),
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
      ),
      Container(
        width: 70,
        child: ButtonPurple(
          buttonText: 'Add place', 
          onPressed: () {
            print('Firebase storage');
            userBlock.updatePlaceData(Place(
              name: _controllerTitlePlace.text,
              description: _controllerDescriptionPlace.text,
              likes: 0,
              uriImage: 'assets/img/beach.jpeg',
              userOwnwer: null
            )).whenComplete(() {
              Navigator.pop(context);
            });
          },
        ),
      )
    ],);
    
    return Scaffold(body: Stack(children: <Widget>[
      form,
      GradientBack('Add a new place', 250),
      Container(
        padding: EdgeInsets.only(top: 10, left: 0),
        child: SizedBox(
          height: 45,
          width: 45,
          child: IconButton(
            icon: Icon(Icons.keyboard_arrow_left, color: Colors.white, size: 45,),
            onPressed: () {
              print('return');
              Navigator.pop(context);
            },
          ),
        ),
      ),
      Container(
        alignment: Alignment.topCenter,
        margin: EdgeInsets.only(top: 120),
        child: CardImage(
          pathImage: 'assets/img/beach.jpeg',
          iconData: Icons.camera_alt,
          width: 350,
          height: 250,
          left: 0,
          onPressedFabIcon: () {
            print('take foto');
          },
        ),
      ),
    ],),);
  }

}