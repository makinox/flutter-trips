import 'package:flutter/material.dart';
import 'package:trips/profile_data_image.dart';

class ProfileContents extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    return ListView(
      children: <Widget>[
        Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Container(
              margin: EdgeInsets.only(top: 260),
            ),
            ProfileDataimage('assets/img/beach.jpeg'),
            ProfileDataimage('assets/img/beach.jpeg'),
            ProfileDataimage('assets/img/beach.jpeg'),
            ProfileDataimage('assets/img/beach.jpeg'),
          ],
        )
      ],
    );
  }
  
}