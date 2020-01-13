import 'package:flutter/material.dart';

class FloatingActionButtonBlue extends StatefulWidget {

  final VoidCallback onPressed;
  final bool minin;
  final Color color;
  final IconData favIcon;
  final String heroTag;
  const FloatingActionButtonBlue({Key key, @required this.onPressed, this.minin, this.color, this.favIcon, @required this.heroTag}): super(key: key);

  @override
  _FloatingActionButtonBlue createState() => _FloatingActionButtonBlue(); 
}

class _FloatingActionButtonBlue extends State<FloatingActionButtonBlue> {

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 16, right: 16, top: 10),
      child: FloatingActionButton(
        backgroundColor: widget.color,
        mini: widget.minin,
        tooltip: 'Fav',
        onPressed: widget.onPressed,
        child: Icon(widget.favIcon, color: Color(0xFF5252CA),),
        heroTag: widget.heroTag,
      ),
    );
  }
}
