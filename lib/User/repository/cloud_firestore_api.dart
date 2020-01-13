import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:trips/User/model/user.dart';

class CloudFirestoreAPI {
  
  final String users = "users";
  final String places = "places";

  final Firestore _db = Firestore.instance;

  void updateUserData(User user) async {
    DocumentReference ref = _db.collection(users).document(user.uid);
  }

}