import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:generic_bloc_provider/generic_bloc_provider.dart';
import 'package:trips/Place/repository/firebase_storage_repository.dart';
import 'package:trips/User/repository/auth_repository.dart';
import 'package:trips/User/repository/cloud_firestore_repository.dart';

class UserBlock implements Bloc {

  final _authRepository = AuthRepository();
  final _cloudFirestoreRepository = CloudFirestoreRepository();
  final _firebaseStorageRepository = FirebaseStorageRepository();

  // Flujo de datos -Streams
  // Stream - Firebase
  // StreamController

  Stream<FirebaseUser> streamFirebase =  FirebaseAuth.instance.onAuthStateChanged;
  Stream<FirebaseUser> get authStatus => streamFirebase;
  Future<FirebaseUser> get currentUser =>  FirebaseAuth.instance.currentUser();

  // Caso de uso
  // 1. Sign in con google

  Future<FirebaseUser> singnIn() => _authRepository.signInFirebase();

  // 2. Sign out

  signOut() => _authRepository.signOut();

  // 3. Registrar caso de uso en base de datos

  void updateUserData(user) => _cloudFirestoreRepository.updateUserDataFirestore(user);

  // 4. Registrar lugar

  Future<void> updatePlaceData(place) => _cloudFirestoreRepository.updatePlaceData(place);

  // 5.

  Future<StorageUploadTask> uploadFile(path, image) => _firebaseStorageRepository.uploadFile(path, image);

  @override
  void dispose() {
    
  }
  
}