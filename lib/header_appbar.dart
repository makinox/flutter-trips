import 'package:flutter/material.dart';
import 'package:trips/card_image_list.dart';
import 'package:trips/gradientBack.dart';

class HeaderAppbar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    return Stack(
      children: <Widget>[
        GradientBack('Popular'),
        CardImageList()
      ],
    );
  }
  
}