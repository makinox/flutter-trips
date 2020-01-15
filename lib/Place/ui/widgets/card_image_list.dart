import 'package:flutter/material.dart';
import 'package:generic_bloc_provider/generic_bloc_provider.dart';
import 'package:trips/User/bloc/block_user.dart';
import 'card_image.dart';

class CardImageList extends StatelessWidget {

  UserBlock userBlock;

  @override
  Widget build(BuildContext context) {

    userBlock = BlocProvider.of<UserBlock>(context);

    return Container(
      child: StreamBuilder(
        stream: userBlock.placesStream,
        builder: (BuildContext context, AsyncSnapshot snapshot) {
          switch (snapshot.connectionState) {
            case ConnectionState.none:
              return CircularProgressIndicator();
              break;
            case ConnectionState.waiting:
              return CircularProgressIndicator();
              break;
            case ConnectionState.active:
              return listViewPlaces(userBlock.buildPlaces(snapshot.data.documents));
              break;
            case ConnectionState.done:
              return listViewPlaces(userBlock.buildPlaces(snapshot.data.documents));
              break;
            default:
              return CircularProgressIndicator();
          }
        },
      )
    );
  }
}

Widget listViewPlaces(List<CardImage> placesCard) {
  return ListView(
    // padding: EdgeInsets.all(25),
    scrollDirection: Axis.horizontal,
    children: placesCard,
  );
}