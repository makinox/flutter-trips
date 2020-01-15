import 'package:flutter/material.dart';
import 'package:trips/User/model/user.dart';
import 'package:trips/User/ui/widgets/profile_action_row.dart';
import 'package:trips/User/ui/widgets/profile_card.dart';
import 'package:trips/widgets/gradientBack.dart';

class ProfileAppBar extends StatelessWidget {

  User user;

  ProfileAppBar(this.user);

  @override
  Widget build(BuildContext context) {

    return Stack(
      children: <Widget>[
        GradientBack('Profile', 250),
        Column(
          children: <Widget>[
            ProfileCard(user),
            ProfileActionRow()
          ],
        )
      ],
    );
  }

}
