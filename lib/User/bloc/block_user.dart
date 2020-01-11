import 'package:firebase_auth/firebase_auth.dart';
import 'package:generic_bloc_provider/generic_bloc_provider.dart';
import 'package:trips/User/repository/auth_repository.dart';

class UserBlock implements Bloc {

  final _authRepository = AuthRepository();

  // Flujo de datos -Streams
  // Stream - Firebase
  // StreamController

  Stream<FirebaseUser> streamFirebase =  FirebaseAuth.instance.onAuthStateChanged;
  Stream<FirebaseUser> get authStatus => streamFirebase;

  // Caso de uso
  // 1. Sign in con google

  Future<FirebaseUser> singnIn() {
    return _authRepository.signInFirebase();
  }

  // 2. Sign out

  signOut(){
    return _authRepository.signOut();
  }

  @override
  void dispose() {
    
  }
  
}