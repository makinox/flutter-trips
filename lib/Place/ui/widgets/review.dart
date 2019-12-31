import 'package:flutter/material.dart';

class Review extends StatelessWidget {
  
  final pathImage;
  final name;
  final details;
  final comments;

  Review(this.pathImage, this.name, this.details, this.comments);

  @override
  Widget build(BuildContext context) {

    final userComment = Container(
      margin: EdgeInsets.only(
        left: 20.0,
      ),
      child: Text(
        comments,
        style: TextStyle(
          fontFamily: 'Lato',
          fontSize: 13.0,
          fontWeight: FontWeight.w900
          // color: Color(0xFFa3a5a7)
        )
      ),
    );

    final userInfo = Container(
      margin: EdgeInsets.only(
        left: 20.0,
      ),
      child: Text(
        details,
        style: TextStyle(
          fontFamily: 'Lato',
          fontSize: 13.0,
          color: Color(0xFFa3a5a7)
        )
      ),
    );

    final userName = Container(
      margin: EdgeInsets.only(
        left: 20.0,
      ),
      child: Text(
        name,
        style: TextStyle(
          fontFamily: 'Lato',
          fontSize: 17.0,

        )
      ),
    );
    
    final userDetail = Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        userName,
        userInfo,
        userComment
      ],
    );

    final photo = Container(
      width: 80.0,
      height: 80.0,
      margin: EdgeInsets.only(
        top: 20.0,
        left: 20.0
      ),
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        image: DecorationImage(
          fit: BoxFit.cover,
           image: AssetImage(pathImage)
        )
      ),
      
    );
    
    final review = Row(
      children: <Widget>[
        photo,
        userDetail
      ],
    );

    return review;
  }
  
}