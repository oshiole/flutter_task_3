import 'package:flutter/cupertino.dart';

class Users {
  final String image;
  final String name;
  final String userName;
  final String email;
  final String phoneNumber;

  Users({
    @required this.image,
    @required this.name,
     @required this.userName,
    @required this.email,
    @required this.phoneNumber
  });

  // Getting the request
  factory Users.fromJson(Map<String, dynamic>json) {
    return Users(
        name: json['name'] as String,
        userName: json['userName'] as String,
        email: json['email'] as String,
        phoneNumber: json['phoneNumber'] as String,
        image: json['image'] as String
    );
  }

}

//class UserList {
//  List<Users> users;
//
//  UserList( {this.users} );
//}


