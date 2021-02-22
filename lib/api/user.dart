import 'package:account/api/api.dart';
import 'package:dio/dio.dart';

class UserApi {
  static Map<String, String> _endpoints = {
    "profile": "/v1/UserProfile/GetUserProfile",
    "login": "/v1/Account/Login",
    "register": "/v1/Account/Register"
  };

  static Future<Map<String, dynamic>> getProfile(String token) async {
    final Map<String, dynamic> options = {"Authorization": "Bearer $token"};
    final result = await Api.api
        .post(_endpoints['profile'], options: Options(headers: options));
    if (result.statusCode == 200) {
      return result.data;
    } else
      return null;
  }

  static Future<Map<String, dynamic>> login({String email, String password}) async {
    final data = {
      "email": email, 
      "password": password
    };
    final result = await Api.api.post(_endpoints['login'], data: data);
    if (result.statusCode == 200) {
      return result.data;
    } else
      return null;
  }

  static Future<Map<String, dynamic>> register({String name, String email, String password}) async {
    final data = {
      "userName": name,
      "email": email,
      "password": password,
      "timezone": ""
    };
    final result = await Api.api.post(_endpoints['register'], data: data);
    if (result.statusCode == 200) {
      return result.data;
    } else
      return null;
  }
}
