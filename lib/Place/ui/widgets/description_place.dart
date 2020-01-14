import 'package:flutter/material.dart';
import 'package:trips/widgets/button_purple.dart';

class DescriptionPlace extends StatelessWidget {
  
  final namePlace;
  final stars;
  final descriptionPlace;

  DescriptionPlace(this.namePlace, this.stars, this.descriptionPlace);
  
  @override
  Widget build(BuildContext context) { 

    final star = Container(
      margin: EdgeInsets.only(
        top: 320.0,
        right: 3.0
      ),
      child: Icon(
        Icons.star,
        color: Color(0xFFF2C611),
      ),
    );

    final starHalf = Container(
      margin: EdgeInsets.only(
        top: 320.0,
        right: 3.0
      ),
      child: Icon(
        Icons.star_half,
        color: Color(0xFFF2C611),
      ),
    );

    final starBorder = Container(
      margin: EdgeInsets.only(
        top: 320.0,
        right: 3.0
      ),
      child: Icon(
        Icons.star_border,
        color: Color(0xFFF2C611),
      ),
    );

    final titleStars = Row(
      children: <Widget>[
        Container(
          margin: EdgeInsets.only(top: 320.0, left: 20.0, right: 20.0),
          child: Text(
            namePlace,
            textAlign: TextAlign.left,
            style: TextStyle(
              fontSize: 30.0,
              fontFamily: 'Lato',
              fontWeight: FontWeight.w900,
            ),
          ),
        ),
        Row(
          children: <Widget>[
            star,
            star,
            star,
            starHalf,
            starBorder
          ],
        )
      ],
    );

    final description = Container(
      margin: EdgeInsets.only(
        top: 20.0,
        left: 20.0,
        right: 20.0
      ),
      child: Text(
        descriptionPlace,
        style: TextStyle(
          fontSize: 16.0,
          fontFamily: 'Lato',
          fontWeight: FontWeight.bold,
          color: Color(0xFF56575A)
        ),
      ),
    );

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[titleStars, description, ButtonPurple(buttonText: 'Navigate', onPressed: () {print('Navigate pressed');},)],
    );
  }
}
