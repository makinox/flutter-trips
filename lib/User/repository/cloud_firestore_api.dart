import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:trips/Place/model/place.dart';
import 'package:trips/Place/ui/widgets/card_image.dart';
import 'package:trips/User/model/user.dart';
import 'package:trips/User/ui/widgets/profile_data_image.dart';

class CloudFirestoreAPI {
  
  final String users = "users";
  final String places = "places";

  final Firestore _db = Firestore.instance;
  final FirebaseAuth _auth = FirebaseAuth.instance;

  void updateUserData(User user) async {
    DocumentReference ref = _db.collection(users).document(user.uid);
    return await ref.setData({
      'uid': user.uid,
      'name': user.name,
      'email': user.email,
      'photoURL': user.photoURL,
      'myPlaces': user.myPlaces,
      'myPlaces': user.myPlaces,
      'myFavoritePlaces': user.myFavoritePlaces,
      'lastSignIn': DateTime.now()
    }, merge: true);
  }

  Future<void> updatePlaceData(Place place) async {
    CollectionReference refPlaces = _db.collection(places);

    await _auth.currentUser().then((user) {
      refPlaces.add({
        'name': place.name,
        'description': place.description,
        'likes': place.likes,
        'urlImage': place.uriImage,
        'userOwner': _db.document('$users/${user.uid}')
      }).then((DocumentReference dr) {
        dr.get().then((DocumentSnapshot snapshot) {
          DocumentReference refUsers = _db.collection(users).document(user.uid);
          refUsers.updateData({
            'myPlaces': FieldValue.arrayUnion([_db.document('$places/${snapshot.documentID}')])
          });
        });
      });
    });
  }

  List<ProfileDataimage> buildMyPlaces(List<DocumentSnapshot> placesListSnapshot) {
    List<ProfileDataimage> profilePlaces = List<ProfileDataimage>();
    placesListSnapshot.forEach((p){
      profilePlaces.add(ProfileDataimage(Place(
        name: p.data['name'],
        description: p.data['description'],
        uriImage: p.data['urlImage'],
        likes: p.data['likes'],
      )));
    });
    return profilePlaces;
  }

  List<CardImage> buildPlaces(List<DocumentSnapshot> placesListSnapshot) {
    List<CardImage> placesCard = List<CardImage>();

    placesListSnapshot.forEach((p) {
      placesCard.add(CardImage(pathImage: p.data['urlImage'], height: 200, width: 300, left: 20, iconData: Icons.favorite_border, onPressedFabIcon: (){print('Presed fav'); likePlace(p.documentID);},));
    });
    return placesCard;
  }

  Future likePlace(String idPlace) async {
    await _db.collection(places).document(idPlace).get().then((DocumentSnapshot ds) {
      var likes = ds.data['likes'];
      _db.collection(places).document(idPlace).updateData({'likes': likes+1});
    });
  }

}