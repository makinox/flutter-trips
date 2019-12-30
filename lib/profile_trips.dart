import 'package:flutter/material.dart';
import 'package:trips/profile_appbar.dart';

class ProfileTrips extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        ListView(),
        ProfileAppBar()
      ],
    );
  }
}
