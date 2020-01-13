import 'package:flutter/material.dart';
import 'package:generic_bloc_provider/generic_bloc_provider.dart';
import 'package:trips/User/bloc/block_user.dart';
import 'package:trips/User/model/user.dart';
import 'package:trips/widgets/button_green.dart';
import 'package:trips/widgets/gradientBack.dart';
import 'package:trips/widgets/navigation_bar.dart';

class SignInScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    
    return _SignInScreen();
  }
  
}

class _SignInScreen extends State<SignInScreen> {

  UserBlock userBlock;

  @override
  Widget build(BuildContext context) {
    userBlock = BlocProvider.of(context); 
    return _handleCurrentSession();
  }

  Widget _handleCurrentSession(){
    return StreamBuilder(
      stream: userBlock.authStatus,
      builder: (BuildContext context, AsyncSnapshot snapshot) {
        // snapshot - data - Object user
        if (!snapshot.hasData || snapshot.hasError) {
          return signInGoogleUI();
        } else {
          return Navigation();
        }
      },
    );
  }

  Widget signInGoogleUI(){
    return Scaffold(
      body: Stack(
        alignment: Alignment.center,
        children: <Widget>[
          GradientBack("", null),
          Column(mainAxisAlignment: MainAxisAlignment.center, children: <Widget>[
            Text("Welcome \n this is your travel app",
              style: TextStyle(
                fontSize: 37,
                fontFamily: "Lato",
                color: Colors.white,
                fontWeight: FontWeight.bold
              )),
              ButtonGreen(
                text: "Login with Gmail",
                onPressed: (){
                  userBlock.signOut(); 
                  userBlock.singnIn().then((user) {
                    userBlock.updateUserData(User(
                      uid: user.uid,
                      name: user.displayName,
                      email: user.email,
                      photoURL: user.photoUrl
                    ));
                  });
                },
                width: 300,
                height: 50,
              )
          ],)
        ],
      ),
    );
  }
  
}