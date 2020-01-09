import 'package:flutter/material.dart';
import 'package:trips/Place/ui/widgets/card_image_list.dart';
import 'package:trips/widgets/gradientBack.dart';

class HeaderAppbar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    return Stack(
      children: <Widget>[
        GradientBack('Popular', 250.0),
        CardImageList()
      ],
    );
  }
  
}