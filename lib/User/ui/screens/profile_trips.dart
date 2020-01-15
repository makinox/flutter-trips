import 'package:flutter/material.dart';
import 'package:generic_bloc_provider/generic_bloc_provider.dart';
import 'package:trips/User/bloc/block_user.dart';
import 'package:trips/User/model/user.dart';
import 'package:trips/User/ui/screens/profile_appbar.dart';
import 'package:trips/User/ui/widgets/profile_contents.dart';

class ProfileTrips extends StatelessWidget {

  UserBlock userBlock;

  @override
  Widget build(BuildContext context) {

    userBlock = BlocProvider.of<UserBlock>(context);

    return StreamBuilder(
      stream: userBlock.authStatus,
      builder: (BuildContext context, AsyncSnapshot snapshot){
        switch (snapshot.connectionState) {
          
          case ConnectionState.none:
            return CircularProgressIndicator();
            break;
          case ConnectionState.waiting:
            return CircularProgressIndicator();
            break;
          case ConnectionState.active:
            return showProfileData(snapshot);
            break;
          case ConnectionState.done:
            return showProfileData(snapshot);
            break;
          default:
            return CircularProgressIndicator();
        }
      },
    );

  }

  Widget showProfileData(AsyncSnapshot snapshot) {
    if(!snapshot.hasData || snapshot.hasError) {
      print('No logeado');
      return Center(child: Text('Logeate pls'),);
    } else {
      print('Log root');
      var user = User(
        uid: snapshot.data.uid,
        name: snapshot.data.displayName,
        email: snapshot.data.email,
        photoURL: snapshot.data.photoUrl,
      );
      return Stack(
        children: <Widget>[
          ProfileContents(user),
          ProfileAppBar(user),
        ],
      );
    }
  }

}
