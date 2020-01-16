import 'package:flutter/material.dart';
import 'package:generic_bloc_provider/generic_bloc_provider.dart';
import 'package:trips/User/bloc/block_user.dart';
import 'package:trips/User/model/user.dart';
import 'package:trips/widgets/button_green.dart';
import 'package:trips/widgets/gradientBack.dart';
import 'package:trips/widgets/navigation_bar.dart';
import 'package:firebase_admob/firebase_admob.dart';

class SignInScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    
    return _SignInScreen();
  }
  
}

class _SignInScreen extends State<SignInScreen> {

  double screenWidht;
  UserBlock userBlock;

  @override
  Widget build(BuildContext context) {
    screenWidht = MediaQuery.of(context).size.width;
    userBlock = BlocProvider.of(context); 
    return _handleCurrentSession();
  }

  Widget _handleCurrentSession(){

    FirebaseAdMob.instance.initialize(appId: 'ca-app-pub-1183317843441765~1799465313').then((response) {
      myBanner..load()..show(horizontalCenterOffset: 2);
    });

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
          GradientBack('', null),
          Column(mainAxisAlignment: MainAxisAlignment.center, children: <Widget>[
            Flexible(child: Container(width: screenWidht, child: 
            Text("Welcome \n this is your travel app",
              style: TextStyle(
                fontSize: 37,
                fontFamily: "Lato",
                color: Colors.white,
                fontWeight: FontWeight.bold
              )
            ),),),
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

MobileAdTargetingInfo targetingInfo = MobileAdTargetingInfo(
  keywords: <String>['games', 'apps'],
  contentUrl: 'https://flutter.io',
  // birthday: DateTime.now(),
  childDirected: false,
  // designedForFamilies: false,
  // gender: MobileAdGender.male, // or MobileAdGender.female, MobileAdGender.unknown
  testDevices: <String>[], // Android emulators are considered test devices
);

BannerAd myBanner = BannerAd(
  // Replace the testAdUnitId with an ad unit id from the AdMob dash.
  // https://developers.google.com/admob/android/test-ads
  // https://developers.google.com/admob/ios/test-ads
  adUnitId: BannerAd.testAdUnitId,
  size: AdSize.smartBanner,
  targetingInfo: targetingInfo,
  listener: (MobileAdEvent event) {
    print("BannerAd event is $event");
  },
);