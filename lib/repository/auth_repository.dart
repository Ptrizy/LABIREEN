import 'dart:convert';

import 'package:http/http.dart' as http;

import 'cache_repository.dart';

class AuthRepository {
  var _baseUrl = "http://light-herald.at.ply.gg:55353";
  var _client = http.Client();

  Future registerRepository(String name, String email, String password,
      String password_confirm, String phone_number) async {
    var uri = Uri.parse("$_baseUrl/auth/register");

    print('nama : $name $email $password $password_confirm $phone_number');
    try {
      print('registerrepositry on process');
      var response = await _client.post(uri,
          body: json.encode({
            'name': name,
            'email': email,
            'password': password,
            'password_confirm': password_confirm,
          }));

      print('data sudah dikirim');

      if (response.statusCode == 200) {
        var data = json.decode(response.body);
        print(data);

        return true;
      } else {
        print("eror response= ${response.body} && ${response.statusCode}");
        return false;
      }
      //return response.statusCode == 200 ? true : false;
    } catch (e) {
      print('error di register = ${e.toString()}');
    }
  }

   Future loginRepositiory(String email, String password) async {
    var uri = Uri.parse("$_baseUrl/auth/login");

    try {
      var response = await _client.post(uri,
          body: json.encode({
            'email': email,
            'password': password,
          }));

      if (response.statusCode == 200) {
        var data = json.decode(response.body);

        await Cache.writeData(key: 'token_user', value: data['data']);

        return true;
      } else {
        return false;
      }
    } catch (e) {
      throw (Exception("Error at Login [auth_repository]: ${e.toString()}"));
    }
  }
}
