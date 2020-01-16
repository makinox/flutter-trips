import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';

class FirebaseAuthAPI {

  final _auth = FirebaseAuth.instance;
  final googleSignIn = GoogleSignIn();

  Future<FirebaseUser> singnIn() async{
    GoogleSignInAccount googleSignInAccount = await googleSignIn.signIn();
    GoogleSignInAuthentication gSA = await googleSignInAccount.authentication;

    final AuthCredential credential = GoogleAuthProvider.getCredential(idToken: gSA.idToken, accessToken: gSA.accessToken);

    FirebaseUser user = (await _auth.signInWithCredential(credential)).user;

    return user;
  }

  signOut() async {
    await _auth.signOut().then((onValue) => print('Sesion cerrada'));
    googleSignIn.signOut();
    print('Sesiones cerradas');
  }

}