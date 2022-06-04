import 'dart:convert';

import 'package:data_fetch_example/models/user.dart';
import 'package:http/http.dart' as http;

class UsersApi {
  static Future<List<User>> getUsers() async {
    final response =
        await http.get(Uri.parse("https://jsonplaceholder.typicode.com/users"));
    return (json.decode(response.body) as List)
        .map((e) => User.fromJson(e))
        .toList();
  }
}
