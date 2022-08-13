import 'dart:convert';

import 'package:http/http.dart' as http;
import 'dart:io';

import '../model/chat_screen_model.dart';

Future<List<User>> getUser() async {
  String url = "https://jsonplaceholder.typicode.com/users";
  var data = await http.get(Uri.parse(url));
  var jsonData = jsonDecode(data.body);
  List<User> users = [];
  for (var u in jsonData) {
    User user = User(u['id'], u['name']);
    users.add(user);
  }
  return users;
}
