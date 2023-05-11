import 'dart:convert';

import 'package:get/get.dart';

class UserServices extends GetConnect {
  final url =
      'https://test-project-052023-default-rtdb.asia-southeast1.firebasedatabase.app/';
  // Get Req
  // Future<Response> getData() => get('${url}users/');

  // Post Data
  Future<Response> postData(
    String name,
    String email,
    String phone,
  ) {
    final body = json.encode({"name": name, "email": email, "phone": phone});
    return post("${url}users.json", body);
  }

  // Hapus data\
  Future<Response> deleteData(String id) {
    return delete("${url}users/$id.json");
  }

// edit data
  Future<Response> putData(
    String id,
    String name,
    String email,
    String phone,
  ) {
    final body = json.encode({"name": name, "email": email, "phone": phone});
    return patch("${url}users/$id.json", body);
  }
}
