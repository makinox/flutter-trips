import 'package:flutter/material.dart';
import 'package:generic_bloc_provider/generic_bloc_provider.dart';
import 'package:trips/User/bloc/block_user.dart';
import 'package:trips/User/model/user.dart';

class ProfileContents extends StatelessWidget {
  
  UserBlock userBlock;
  User user;
  ProfileContents(this.user);

  @override
  Widget build(BuildContext context) {

    userBlock = BlocProvider.of<UserBlock>(context);

    return Container(
      margin: EdgeInsets.only(top: 250),
      child: StreamBuilder(
        stream: userBlock.myPlacesListStream(user.uid),
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
                children: userBlock.buildMyPlaces(snapshot.data.documents),
              )],);
              break;
            case ConnectionState.done:
              return ListView(children: <Widget>[Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: userBlock.buildMyPlaces(snapshot.data.documents),
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