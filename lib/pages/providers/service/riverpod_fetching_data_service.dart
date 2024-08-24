import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:dio/dio.dart';
import 'package:learning/model/model.dart';
import 'package:learning/network/url.dart';

final getUsers = FutureProvider<List<User>>(
  (ref) async {
    final client = Dio();
    final response = await client.get(Url.getusers);
    if (response.statusCode == 200) {
      List<dynamic> users = response.data['results'];
      return users.map((json) => User.fromJson(json)).toList();
    } else {
      throw Exception("Server Errror : Failed to get users");
    }
  },
);
