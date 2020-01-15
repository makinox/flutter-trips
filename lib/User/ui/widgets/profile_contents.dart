import 'package:flutter/material.dart';
import 'package:generic_bloc_provider/generic_bloc_provider.dart';
import 'package:trips/User/bloc/block_user.dart';

class ProfileContents extends StatelessWidget {
  
  UserBlock userBlock;

  @override
  Widget build(BuildContext context) {

    userBlock = BlocProvider.of<UserBlock>(context);

    return Container(
      margin: EdgeInsets.only(top: 250),
      child: StreamBuilder(
        stream: userBlock.placesStream,
        builder: (context, AsyncSnapshot snapshot) {
          switch (snapshot.connectionState) {
            
            case ConnectionState.none:
              return Center(child: CircularProgressIndicator(),);
              break;
            case ConnectionState.waiting:
              return Center(child: CircularProgressIndicator(),);
              break;
            case ConnectionState.active:
              return ListView(children: <Widget>[Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: userBlock.buildPlaces(snapshot.data.documents),
              )],);
              break;
            case ConnectionState.done:
              return ListView(children: <Widget>[Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: userBlock.buildPlaces(snapshot.data.documents),
              )],);
              break;
            default:
              return CircularProgressIndicator();
          }
        },
      )
    );
  }
  
}