import 'package:flutter/material.dart';
import 'package:trips/search_appbar.dart';

class SearchTrips extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        ListView(),
        SearchAppBar()
      ],
    );
  }
}
