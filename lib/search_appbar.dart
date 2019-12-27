import 'package:flutter/material.dart';
import 'package:trips/gradientBack.dart';
import 'package:trips/profile_card.dart';

class SearchAppBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[GradientBack('Profile'), ProfileCard('assets/img/people.jpg')],
    );
  }
}
