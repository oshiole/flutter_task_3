import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fluttertask3/models/userService.dart';
import 'package:fluttertask3/models/users.dart';
import 'package:fluttertask3/userDetails.dart';

class GetUser extends StatelessWidget {

  final API getUser = API();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('API Task'),
      ),
      body: FutureBuilder(
        future: getUser.fetchUsers(),
        builder: (BuildContext context, AsyncSnapshot<List<Users>> snapshot) {
          if (snapshot.hasData) {
            List<Users> users = snapshot.data;
            return ListView(
              children: users
                  .map(
                  (Users users) => ListTile(
                    title: Text(users.name),
                    subtitle: Text(users.email),
                    onTap: () => Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) => UserDetails(users: users,),
                      )
                    ),
                  )
              ).toList(),
            );
          } else {
            return Center(
              child: CircularProgressIndicator(),
            );
          }
        },
      ),
    );
  }
}