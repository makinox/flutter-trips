import 'package:trips/User/model/user.dart';
import 'package:trips/User/repository/cloud_firestore_api.dart';

class CloudFirestoreRepository {
  
  final _cloudFirestoreAPI = CloudFirestoreAPI();

  void updateUserDataFirestore(User user) => _cloudFirestoreAPI.updateUserData(user);

}