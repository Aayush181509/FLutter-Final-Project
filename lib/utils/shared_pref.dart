import 'dart:convert';
import 'package:final_app/models/login_model/user_model.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SharedPref {
  static const USER_KEY = "user";
  static saveUserData(UserModel user) async {
    // print('Save User Data');
    final instancee = await SharedPreferences.getInstance();
    final userStringJson = user.toJson();
    final userString = json.encode(userStringJson);
    instancee.setString(USER_KEY, userString);
  }

  static Future<UserModel?> getUserData() async {
    final instancee = await SharedPreferences.getInstance();
    final userString = instancee.getString(USER_KEY);
    if (userString == null) {
      return null;
    }

    final decodeUser = json.decode(userString);

    final UserModel user = UserModel.fromJson(decodeUser);

    return user;
  }

  static clearUserData(bool clear) async {
    final instancee = await SharedPreferences.getInstance();
    instancee.clear();
  }
}
