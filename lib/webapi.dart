import 'dart:convert';
import 'package:http/http.dart';


class Webapi {
  final url = 'http://localhost:8008/api/v1/security/login';


Future<void> auth (String username, String password) async {
  Map<String, dynamic> body = {
    'username' : username,
    'password' : password
  };
  Response r = await post(
    url,
    body: body,
  );
  print(r);
}

}