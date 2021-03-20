import 'dart:convert';

import 'package:shared_preferences/shared_preferences.dart';

import '../Model/SocialAccount.dart';

class Localtools {
  Future<User> getCurrentUser() async {
    final prefs = await SharedPreferences.getInstance();

    if (!prefs.containsKey('current_user')) return null;

    Map userMap = json.decode(prefs.getString("current_user"));

    if (userMap != null && userMap.isNotEmpty) {
      return User.fromJson(userMap);
    } else {
      return null;
    }
  }

  Future<User> setCurrentUser(User user) async {
    final prefs = await SharedPreferences.getInstance();
    return prefs.setString("current_user", jsonEncode(user)).then((document) {
      return user;
    });
  }
}
