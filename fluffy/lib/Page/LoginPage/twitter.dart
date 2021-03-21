import 'package:flutter/material.dart';
import 'package:flutter_facebook_login/flutter_facebook_login.dart';
import 'package:flutter_twitter_login/flutter_twitter_login.dart';
import 'package:firebase_auth/firebase_auth.dart' as auth;
import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:flutter_twitter_login/flutter_twitter_login.dart';
import 'package:linkedin_login/linkedin_login.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_webview_plugin/flutter_webview_plugin.dart';
import 'package:oauth1/oauth1.dart';

//File Page Includ
import '../HomePage/MyHomePage.dart';
import '../../Widget/app_icons_icons.dart';
import '../../Model/SocialAccount.dart' as localuser;
import '../../Tools/LocalTools.dart';

class FluffyTwitterlogin {
  FluffyTwitterlogin() {}

  static void createUserTwitter(
      TwitterLoginResult result, String userID) async {
    final token = result.session.token;
    localuser.User user = localuser.User(
        firstName: result.session.username,
        lastName: result.session.username,
        email: result.session.username,
        twitter_accesstoken: token,
        twitter_refreshtoken: result.session.secret,
        active: true,
        userID: userID);
    await Localtools().setCurrentUser(user);
  }

  static void syncUserWithTwitter(
      TwitterLoginResult result, localuser.User user) async {
    user.twitter_accesstoken = result.session.token;
    user.twitter_refreshtoken = result.session.secret;
    user.active = true;

    await Localtools().setCurrentUser(user);
  }
}
