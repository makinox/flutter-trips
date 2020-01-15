import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:trips/Place/model/place.dart';
import 'package:trips/Place/ui/widgets/card_image.dart';
import 'package:trips/User/model/user.dart';
import 'package:trips/User/repository/cloud_firestore_api.dart';
import 'package:trips/User/ui/widgets/profile_data_image.dart';

class CloudFirestoreRepository {
  
  final _cloudFirestoreAPI = CloudFirestoreAPI();

  void updateUserDataFirestore(User user) => _cloudFirestoreAPI.updateUserData(user);

  Future<void> updatePlaceData(Place place) => _cloudFirestoreAPI.updatePlaceData(place);

  List<ProfileDataimage> buildMyPlaces(List<DocumentSnapshot> placesListSnapshot) => _cloudFirestoreAPI.buildMyPlaces(placesListSnapshot);

  List<CardImage> buildPlaces(List<DocumentSnapshot> placesListSnapshot) => _cloudFirestoreAPI.buildPlaces(placesListSnapshot);

}