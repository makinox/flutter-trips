import 'package:flutter/material.dart';

class FloatingActionButtonBlue extends StatefulWidget {
  final bool minin;
  final Color color;
  final IconData favIcon;
  const FloatingActionButtonBlue({Key key, this.minin, this.color, this.favIcon}): super(key: key);

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
    return Container(
      margin: EdgeInsets.only(left: 16, right: 16, top: 10),
      child: FloatingActionButton(
        backgroundColor: widget.color,
        mini: widget.minin,
        tooltip: 'Fav',
        onPressed: onPressedOne,
        child: Icon(widget.favIcon, color: Color(0xFF5252CA),),
      ),
    );
  }
}
