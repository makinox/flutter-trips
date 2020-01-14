import 'package:flutter/material.dart';

class FloatingActionButtonGreen extends StatefulWidget {

  final IconData iconData;
  final VoidCallback onPressed;

  const FloatingActionButtonGreen({Key key, @required this.iconData, @required this.onPressed}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return _FloatingActionButtonGreen();
  }
}

class _FloatingActionButtonGreen extends State<FloatingActionButtonGreen> {

  // bool botonPressed = false;

  // void onPressedFav() {
  //   setState(() {
  //     // print(botonPressed);
  //     botonPressed = !botonPressed;
  //     Scaffold.of(context).showSnackBar(SnackBar(
  //       content: Text( ((botonPressed) ? 'Agregaste a' : 'Eliminaste de') + ' favoritos' ),
  //     ));
  //   });
  // }

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      backgroundColor: Color(0xFF11DA53),
      mini: true,
      tooltip: 'Fav',
      onPressed: widget.onPressed,
      // child: Icon( (botonPressed) ? Icons.favorite : Icons.favorite_border),
      child: Icon(widget.iconData),
      heroTag: null,
    );
  }
}
