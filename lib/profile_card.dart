import 'package:flutter/material.dart';

class ProfileCard extends StatelessWidget {
  final pathImage;

  ProfileCard(this.pathImage);

  @override
  Widget build(BuildContext context) {

  final textName = Container(child: Text(
    'Pathum Tzoo',
    style: TextStyle(fontSize: 16, color: Colors.white,),
  ),);

  final textEmail = Container(child: Text(
    'Pathum Tzoo',
    style: TextStyle(fontSize: 16, color: Colors.white,),
  ),);

  final photo = Container(
    width: 80.0,
    height: 80.0,
    margin: EdgeInsets.only(top: 90.0, left: 20.0, right: 20),
    decoration: BoxDecoration(
      shape: BoxShape.circle,
      image: DecorationImage(fit: BoxFit.cover, image: AssetImage(pathImage))),
  );
    
    return Row(
      children: <Widget>[
        photo,
        Container(
          child: Column(children: <Widget>[textName, textEmail],),
          height: 60,
          margin: EdgeInsets.only(top: 110),
        )
      ],
    );
  }
}
