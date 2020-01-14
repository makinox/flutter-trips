import 'package:flutter/material.dart';
import 'package:generic_bloc_provider/generic_bloc_provider.dart';
import 'package:trips/User/bloc/block_user.dart';
import 'package:trips/User/ui/widgets/profile_data_image.dart';

class ProfileContents extends StatelessWidget {
  
  UserBlock userBlock;

  @override
  Widget build(BuildContext context) {

    userBlock = BlocProvider.of<UserBlock>(context);

    return Container(
      margin: EdgeInsets.only(top: 240),
      child: StreamBuilder(
        stream: userBlock.placesStream,
        builder: (context, AsyncSnapshot snapshot) {
          switch (snapshot.connectionState) {
            
            case ConnectionState.none:
              return CircularProgressIndicator();
              break;
            case ConnectionState.waiting:
              return CircularProgressIndicator();
              break;
            case ConnectionState.active:
              return CircularProgressIndicator();
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
      // ListView(children: <Widget>[
      //   Column(
      //     crossAxisAlignment: CrossAxisAlignment.center,
      //     children: <Widget>[
      //       Container(
      //         margin: EdgeInsets.only(top: 20),
      //       ),
      //       ProfileDataimage('assets/img/beach.jpeg'),
      //       ProfileDataimage('assets/img/beach.jpeg'),
      //       ProfileDataimage('assets/img/beach.jpeg'),
      //       ProfileDataimage('assets/img/beach.jpeg'),
      //     ],
      //   )
      // ],),
    );

    // return ListView(
    //   children: <Widget>[
    //     Column(
    //       crossAxisAlignment: CrossAxisAlignment.center,
    //       children: <Widget>[
    //         Container(
    //           margin: EdgeInsets.only(top: 260),
    //         ),
    //         ProfileDataimage('assets/img/beach.jpeg'),
    //         ProfileDataimage('assets/img/beach.jpeg'),
    //         ProfileDataimage('assets/img/beach.jpeg'),
    //         ProfileDataimage('assets/img/beach.jpeg'),
    //       ],
    //     )
    //   ],
    // );
  }
  
}