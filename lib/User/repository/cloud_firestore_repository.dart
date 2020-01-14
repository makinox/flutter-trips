import 'package:trips/User/repository/cloud_firestore_api.dart';

class CloudFirestoreRepository {
  
  final _cloudFirestoreAPI = CloudFirestoreAPI();

  void updateUserDataFirestore(user) => _cloudFirestoreAPI.updateUserData(user);

  Future<void> updatePlaceData(place) => _cloudFirestoreAPI.updatePlaceData(place);

}