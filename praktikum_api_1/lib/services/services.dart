import 'package:dio/dio.dart';
import 'package:praktikum_api_1/models/user.dart';

class APIServices{
  static Future<List<User>> fetchUser() async{

    Response response = await Dio().get("https://reqres.in/api/users");
    List<User> users = 
        (response.data['data'] as List).map((v) =>  User.fromJson(v)).toList();
    return users;
  }
}