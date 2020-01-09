import 'package:flutter/material.dart';
import 'package:trips/widgets/button_green.dart';
import 'package:trips/widgets/gradientBack.dart';

class SignInScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    
    return _SignInScreen();
  }
  
}

class _SignInScreen extends State<SignInScreen> {
  @override
  Widget build(BuildContext context) {
    
    return signInGoogleUI();
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
                onPressed: (){print('hola');},
                width: 300,
                height: 50,
              )
          ],)
        ],
      ),
    );
  }
  
}