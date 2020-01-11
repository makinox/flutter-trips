import 'package:flutter/material.dart';
import 'package:generic_bloc_provider/generic_bloc_provider.dart';
import 'package:trips/User/bloc/block_user.dart';
import 'package:trips/User/ui/widgets/profile_action_row.dart';
import 'package:trips/User/ui/widgets/profile_card.dart';
import 'package:trips/widgets/gradientBack.dart';

class ProfileAppBar extends StatelessWidget {

  UserBlock userBlock;

  @override
  Widget build(BuildContext context) {

    userBlock = BlocProvider.of<UserBlock>(context);

    return StreamBuilder(
      stream: userBlock.streamFirebase,
      builder: (BuildContext context, AsyncSnapshot snapshot) {
        switch(snapshot.connectionState) {
          
          case ConnectionState.none:
            return CircularProgressIndicator();
            break;
          case ConnectionState.waiting:
            return CircularProgressIndicator();
            break;
          case ConnectionState.active:
            
            break;
          case ConnectionState.done:
            
            break;
        }
      },
    );

    // return Stack(
    //   children: <Widget>[
    //     GradientBack('Profile', 250.0),
    //     Column(
    //       children: <Widget>[
    //         ProfileCard('assets/img/people.jpg', 'Pathoum Tzoo','pathoumzoo1@gmail.com'),
    //         ProfileActionRow()
    //       ],
    //     )
    //   ],
    // );
  }

  Widget showProfileData(AsyncSnapshot snapshot){
    if (!snapshot.hasData || snapshot.hasError) {
      print('No logeado');
    } else {
      print('Logeado');
    }
  }
}
