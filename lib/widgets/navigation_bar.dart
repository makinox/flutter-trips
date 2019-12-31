import 'package:flutter/services.dart';
import 'package:flutter/material.dart';
import 'package:trips/trips.dart';

class Navigation extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return AnnotatedRegion(
      value: SystemUiOverlayStyle(statusBarColor: Colors.transparent, /* systemNavigationBarColor: Colors.transparent */),
      child: Trips(),
    );
  }
  
}