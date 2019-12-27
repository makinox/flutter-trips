import 'package:flutter/material.dart';
import 'package:trips/gradientBack.dart';
import 'package:trips/profile_card.dart';
import 'package:trips/search_action_row.dart';

class SearchAppBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[GradientBack('Profile'), Column(children: <Widget>[
        ProfileCard('assets/img/people.jpg', 'Pathoum Tzoo', 'pathoumzoo1@gmail.com'),
        SearchActionRow()
      ],)],
    );
  }
}
