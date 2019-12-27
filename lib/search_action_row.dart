import 'package:flutter/material.dart';
import 'package:trips/floating_action_button_blue.dart';

class SearchActionRow extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(children: <Widget>[
      FloatingActionButtonBlue(minin: true, color: Colors.white30,),
      FloatingActionButtonBlue(minin: true, color: Colors.white30,),
      FloatingActionButtonBlue(minin: false, color: Colors.white,),
      FloatingActionButtonBlue(minin: true, color: Colors.white30,),
      FloatingActionButtonBlue(minin: true, color: Colors.white30,),
    ],);
  }
  
}