import 'package:flutter/material.dart';
import 'card_image.dart';

class CardImageList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    return Container(
      height: 350,
      child: ListView(
        padding: EdgeInsets.all(25),
        scrollDirection: Axis.horizontal,
        children: <Widget>[
          Container( margin: EdgeInsets.only(bottom: 30), child: CardImage(pathImage: 'assets/img/beach.jpeg', height: 200, width: 300, left: 20, iconData: Icons.favorite_border, onPressedFabIcon: (){print('Presed fav');},),),
          Container( margin: EdgeInsets.only(bottom: 30), child: CardImage(pathImage: 'assets/img/beach.jpeg', height: 200, width: 300, left: 20, iconData: Icons.favorite_border, onPressedFabIcon: (){print('Presed fav');},),),
          Container( margin: EdgeInsets.only(bottom: 30), child: CardImage(pathImage: 'assets/img/beach.jpeg', height: 200, width: 300, left: 20, iconData: Icons.favorite_border, onPressedFabIcon: (){print('Presed fav');},),),
          Container( margin: EdgeInsets.only(bottom: 30), child: CardImage(pathImage: 'assets/img/beach.jpeg', height: 200, width: 300, left: 20, iconData: Icons.favorite_border, onPressedFabIcon: (){print('Presed fav');},),),
          Container( margin: EdgeInsets.only(bottom: 30), child: CardImage(pathImage: 'assets/img/beach.jpeg', height: 200, width: 300, left: 20, iconData: Icons.favorite_border, onPressedFabIcon: (){print('Presed fav');},),)
        ],
      ),
    );
  }
  
}