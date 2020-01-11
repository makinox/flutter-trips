import 'package:flutter/material.dart';
import 'package:generic_bloc_provider/generic_bloc_provider.dart';
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
      FloatingActionButtonBlue(onPressed: (){} ,minin: true, color: Colors.white60, favIcon: Icons.vpn_key,),
      // Añadir lugar
      FloatingActionButtonBlue(onPressed: (){} ,minin: false, color: Colors.white, favIcon: Icons.add,),
      // Cerrar sesion
      FloatingActionButtonBlue(onPressed: (){userBlock.signOut();} ,minin: true, color: Colors.white60, favIcon: Icons.exit_to_app,),
      // FloatingActionButtonBlue(minin: true, color: Colors.white60, favIcon: Icons.perm_identity,),
    ],);
  }
  
}