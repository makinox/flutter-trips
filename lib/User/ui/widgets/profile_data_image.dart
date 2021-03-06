import 'package:flutter/material.dart';
import 'package:trips/Place/model/place.dart';
import 'package:trips/widgets/floating_action_button_green.dart';

class ProfileDataimage extends StatelessWidget {

  Place place;
  ProfileDataimage(this.place);
  @override
  Widget build(BuildContext context) {
    
    // print(place.name);
    // print(place.uriImage);

    final titleText = Padding(
      padding: EdgeInsets.only(bottom: 8),
      child: Text(
        place.name,
        style: TextStyle(
          fontWeight: FontWeight.w700,
          fontSize: 23
        ),
      ),
    );

    final tagText = Padding(
      padding: EdgeInsets.only(bottom: 10),
      child: Text(
        place.description,
        style: TextStyle(
          color: Colors.black45
        ),
      ),
      
    );

    final stepText = Text(
      'Likes ${place.likes}',
      style: TextStyle(
        fontWeight: FontWeight.w700,
        fontSize: 23,
        color: Color(0xFFCB9C70)
      ),
    );

    final cardImage = Container(
      height: 220,
      width: 380,
      margin: EdgeInsets.only(bottom: 60, top: 20),
      decoration: BoxDecoration(
        image: DecorationImage(
          fit: BoxFit.cover,
          image: NetworkImage(place.uriImage)
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

    final cardContent = Stack(alignment: AlignmentDirectional(.9, 1.5), children: <Widget>[
      Container(
        height: 120,
        width: 280,
        padding: EdgeInsets.all(12),
        decoration: BoxDecoration(
          color: Colors.white,
          shape: BoxShape.rectangle,
          borderRadius: BorderRadius.all(Radius.circular(10)),
          boxShadow: <BoxShadow> [BoxShadow(
            color: Colors.black38,
            blurRadius: 15,
            offset: Offset(.0, 7)
          )]
        ),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: <Widget>[titleText, tagText, stepText],),
      ),
      FloatingActionButtonGreen(iconData: Icons.favorite_border, onPressed: (){print('User fav');}),
    ],);

    return Stack(
      alignment: AlignmentDirectional(0, 0.6),
      children: <Widget>[cardImage, cardContent],
    );
  }
}
