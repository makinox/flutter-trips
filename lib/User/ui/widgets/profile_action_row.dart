import 'dart:io';
import 'package:flutter/material.dart';
import 'package:generic_bloc_provider/generic_bloc_provider.dart';
import 'package:image_picker/image_picker.dart';
import 'package:trips/Place/ui/screens/add_place_screen.dart';
import 'package:trips/User/bloc/block_user.dart';
import 'package:trips/widgets/floating_action_button_blue.dart';

class ProfileActionRow extends StatelessWidget {

  UserBlock userBlock;

  @override
  Widget build(BuildContext context) {
    userBlock = BlocProvider.of(context);
    return Row( mainAxisSize: MainAxisSize.min, children: <Widget>[
      // FloatingActionButtonBlue(minin: true, color: Colors.white60, favIcon: Icons.bookmark_border,),
      // Cambiar contraseña
      FloatingActionButtonBlue(minin: true, color: Colors.white60, favIcon: Icons.vpn_key,  onPressed: () {},),
      // Añadir lugar
      FloatingActionButtonBlue(minin: false, color: Colors.white, favIcon: Icons.add, onPressed: (){
        ImagePicker.pickImage(source: ImageSource.camera, imageQuality: 50)
          .then((File image) {
            Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) => AddPlaceScreen(image: image,)));
          })
          .catchError((onError) => print(onError));
      },),
      // Cerrar sesion
      FloatingActionButtonBlue(minin: true, color: Colors.white60, favIcon: Icons.exit_to_app, onPressed: (){userBlock.signOut();} ),
      // FloatingActionButtonBlue(minin: true, color: Colors.white60, favIcon: Icons.perm_identity,),
    ],);
  }
  
}