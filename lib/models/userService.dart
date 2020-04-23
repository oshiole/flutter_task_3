import 'dart:convert';

import 'package:fluttertask3/models/users.dart';
import 'package:http/http.dart';

class API {
  final String apiUrl = 'https://jsonplaceholder.typicode.com/users';

  Future<List<Users>> fetchUsers() async {
    Response response = await get(apiUrl);

    if (response.statusCode == 200) {
      List<dynamic> body = jsonDecode(response.body);

      List<Users> users = body.map(
          (dynamic item) => Users.fromJson(item),
      ).toList();

      return users;
    } else {
      throw 'Failed to load users.';
    }
  }
}