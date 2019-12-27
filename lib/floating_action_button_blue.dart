import 'package:flutter/material.dart';

class FloatingActionButtonBlue extends StatefulWidget {
  final bool minin;
  final color;
  const FloatingActionButtonBlue({Key key, this.minin, this.color}): super(key: key);

  @override
  _FloatingActionButtonBlue createState() => _FloatingActionButtonBlue(); 
}

class _FloatingActionButtonBlue extends State<FloatingActionButtonBlue> {

  void onPressedOne() {
    setState(() {
      Scaffold.of(context).showSnackBar(SnackBar(content: Text('Action'),));
    });
  }

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      backgroundColor: widget.color,
      mini: widget.minin,
      tooltip: 'Fav',
      onPressed: onPressedOne,
      child: Icon(Icons.favorite_border, color: Color(0xFF5252CA),),
    );
  }
}
