import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'models/users.dart';

class UserDetails extends StatelessWidget {
  final Users users;
  UserDetails({@required this.users});

  @override
  Widget build(BuildContext context) {
    //final Users users = ModalRoute.of(context).settings.arguments;
    return Scaffold(
      appBar: AppBar(
        title: Text(users.name),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            children: <Widget>[
              Card(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Image(image: AssetImage('assets/man.png')),
                    ListTile(
                      title: Text('Name'),
                      subtitle: Text(users.name),
                    ),

//                    ListTile(
//                      title: Text('UserName'),
//                      subtitle: Text(users.userName),
//                    ),

                    ListTile(
                      title: Text('Email'),
                      subtitle: Text(users.email),
                    ),

//                    ListTile(
//                      title: Text('Phone Number'),
//                      subtitle: Text(users.phoneNumber),
//                    ),
                  ],
                ),
              )
                  ],
                ),
              )
          ),
    );
  }


}