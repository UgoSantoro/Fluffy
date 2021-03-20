import 'package:flutter_facebook_login/flutter_facebook_login.dart';
import 'dart:convert';
import 'package:http/http.dart' as http;

//File Page Includ
import '../../Model/SocialAccount.dart' as localuser;
import '../../Tools/LocalTools.dart';

class FluffyFacebooklogin {
  FluffyFacebooklogin() {}

  static void createUserFacebook(
      FacebookLoginResult result, String userID) async {
    final token = result.accessToken.token;
    final graphResponse = await http.get('https://graph.facebook.com/v2'
        '.12/me?fields=name,first_name,last_name,email,picture.type(large)&access_token=$token');
    final profile = json.decode(graphResponse.body);
    localuser.User user = localuser.User(
        firstName: profile['first_name'],
        lastName: profile['last_name'],
        email: profile['email'],
        facebook_accesstoken: token,
        profilePictureURL: profile['picture']['data']['url'],
        active: true,
        userID: userID);
    await Localtools().setCurrentUser(user);
  }

  static void syncUserWithFacebook(
      FacebookLoginResult result, localuser.User user) async {
    final token = result.accessToken.token;
    final graphResponse = await http.get('https://graph.facebook.com/v2'
        '.12/me?fields=name,first_name,last_name,email,picture.type(large)&access_token=$token');
    final profile = json.decode(graphResponse.body);
    user.profilePictureURL = profile['picture']['data']['url'];
    user.firstName = profile['first_name'];
    user.lastName = profile['last_name'];
    user.facebook_accesstoken = token;
    user.email = profile['email'];
    user.active = true;

    await Localtools().setCurrentUser(user);
  }
}
