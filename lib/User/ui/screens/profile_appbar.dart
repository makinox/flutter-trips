import 'package:flutter/material.dart';
import 'package:trips/User/ui/widgets/profile_action_row.dart';
import 'package:trips/User/ui/widgets/profile_card.dart';
import 'package:trips/widgets/gradientBack.dart';

class ProfileAppBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        GradientBack('Profile', 250.0),
        Column(
          children: <Widget>[
            ProfileCard('assets/img/people.jpg', 'Pathoum Tzoo','pathoumzoo1@gmail.com'),
            ProfileActionRow()
          ],
        )
      ],
    );
  }
}
