import 'package:flutter/material.dart';
import 'package:trips/widgets/floating_action_button_green.dart';

class CardImage extends StatelessWidget {

  final double height;
  final double width;
  final double left;
  final String pathImage;
  final VoidCallback onPressedFabIcon;
  final IconData iconData;

  const CardImage(
    {Key key,
    @required this.height,
    @required this.width,
    @required this.pathImage,
    @required this.left,
    @required this.onPressedFabIcon,
    @required this.iconData}
  )
  : super(key: key);

  @override
  Widget build(BuildContext context) {

    final card = Container(
      height: height,
      width: width,
      margin: EdgeInsets.only(
        left: left
      ),
      decoration: BoxDecoration(
        image: DecorationImage(
          fit: BoxFit.cover,
          image: NetworkImage(pathImage)
        ),
        borderRadius: BorderRadius.all(Radius.circular(10)),
        shape: BoxShape.rectangle,
        boxShadow: <BoxShadow> [BoxShadow(
          color: Colors.black38,
          blurRadius: 15,
          offset: Offset(.0, 7)
        )]
      ),
    );

    return Stack(
      alignment: Alignment(.9, 1.1),
      children: <Widget>[
        card,
        FloatingActionButtonGreen(iconData: iconData, onPressed: onPressedFabIcon,)
      ],
    );
  }
  
}