import 'package:firebase_auth/firebase_auth.dart';
import 'package:generic_bloc_provider/generic_bloc_provider.dart';
import 'package:trips/User/repository/auth_repository.dart';

class UserBlock implements Bloc {

  final _auth_repository = AuthRepository();

  // Caso de uso
  // 1. Sign in con google

  Future<FirebaseUser> singnIn() {
    return _auth_repository.signInFirebase();
  }

  @override
  void dispose() {
    
  }
  
}