import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:trips/Place/model/place.dart';
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

  List<ProfileDataimage> buildPlaces(List<DocumentSnapshot> placesListSnapshot) {
    List<ProfileDataimage> profilePlaces = List<ProfileDataimage>();
    placesListSnapshot.forEach((p){
      profilePlaces.add(ProfileDataimage(p.data['urlImage']));
    });

    return profilePlaces;

  }

}