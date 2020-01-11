import 'package:flutter/material.dart';
import 'package:trips/User/model/user.dart';

class ProfileCard extends StatelessWidget {

  User user;

  ProfileCard(this.user);

  @override
  Widget build(BuildContext context) {

  final textName = Text(
    user.name,
    textAlign: TextAlign.end,
    style: TextStyle(fontSize: 22, color: Colors.white,),
  );

  final textEmail = Container(child: Text(
    user.email,
    textAlign: TextAlign.end,
    style: TextStyle(fontSize: 18, color: Colors.white54,),
  ),);

  final photo = Container(
    width: 80.0,
    height: 80.0,
    margin: EdgeInsets.only(top: 90.0, left: 20.0, right: 20),
    decoration: BoxDecoration(
      shape: BoxShape.circle,
      border: Border.all(width: 2, color: Colors.white),
      image: DecorationImage(fit: BoxFit.cover, image: /* AssetImage(user.photoURL) */ NetworkImage(user.photoURL))),
  );
    
    return Row(
      children: <Widget>[
        photo,
        Container(
          child: Column(crossAxisAlignment: CrossAxisAlignment.start,children: <Widget>[textName, textEmail],),
          height: 60,
          margin: EdgeInsets.only(top: 110),
        ),
        Container(
          child: IconButton(
            icon: Icon(Icons.settings, color: Colors.white70),
            iconSize: 15,
            tooltip: 'Increase volume by 10',
            onPressed: (){print('Pressed');},
          ),
          margin: EdgeInsets.only(left: 60),
        )
      ],
    );
  }
}
