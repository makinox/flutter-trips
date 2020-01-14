import 'package:flutter/material.dart';
// import 'package:trips/User/model/user.dart';

class Place {
  final String id;
  final String name;
  final String description;
  final String uriImage;
  final int likes;
  // final User userOwnwer;

  Place( {
    Key key,
    this.id, 
    @required this.name, 
    @required this.description, 
    @required this.uriImage,
    // @required this.userOwnwer,
    this.likes
  });
}