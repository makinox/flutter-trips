import 'package:flutter/material.dart';
import 'package:trips/widgets/floating_action_button_blue.dart';

class ProfileActionRow extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row( mainAxisSize: MainAxisSize.min, children: <Widget>[
      FloatingActionButtonBlue(minin: true, color: Colors.white60, favIcon: Icons.bookmark_border,),
      FloatingActionButtonBlue(minin: true, color: Colors.white60, favIcon: Icons.card_giftcard,),
      FloatingActionButtonBlue(minin: false, color: Colors.white, favIcon: Icons.add,),
      FloatingActionButtonBlue(minin: true, color: Colors.white60, favIcon: Icons.mail_outline,),
      FloatingActionButtonBlue(minin: true, color: Colors.white60, favIcon: Icons.perm_identity,),
    ],);
  }
  
}