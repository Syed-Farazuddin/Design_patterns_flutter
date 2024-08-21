import 'dart:convert';

import 'package:learning/model/model.dart';
import 'package:http/http.dart';
import 'package:learning/network/url.dart';

class Services {
  static Future<List<User>> fetchUsers() async {
    final response = await get(Uri.parse(Url.getusers));
    Map<String, dynamic> jsonResponse = jsonDecode(response.body);
    final data = jsonResponse['results'] as List<dynamic>;
    List<User> result = data.map((e) => User.fromJson(e)).toList();
    return result;
  }
}
