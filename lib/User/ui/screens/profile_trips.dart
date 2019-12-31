import 'package:flutter/material.dart';
import 'package:trips/User/ui/screens/profile_appbar.dart';
import 'package:trips/User/ui/widgets/profile_contents.dart';

class ProfileTrips extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        ProfileContents(),
        ProfileAppBar(),
      ],
    );
  }
}
