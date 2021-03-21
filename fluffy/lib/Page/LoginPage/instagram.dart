import 'package:flutter_facebook_login/flutter_facebook_login.dart';
import 'dart:convert';
import 'package:http/http.dart' as http;
import 'dart:async';
import 'package:flutter_webview_plugin/flutter_webview_plugin.dart';
import 'dart:io';

//File Page Includ
import '../../Model/SocialAccount.dart' as localuser;
import '../../Tools/LocalTools.dart';

class FluffyInstagramlogin {
  static void createUserInstagram(
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

  static void syncUserWithInstagram(
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

Future<Token> getToken(String appId, String appSecret) async {
  Stream<String> onCode = await _server();
  String url =
      "https://api.instagram.com/oauth/authorize?client_id=$appId&redirect_uri=http://localhost:8585&response_type=code";
  final flutterWebviewPlugin = new FlutterWebviewPlugin();
  flutterWebviewPlugin.launch(url);
  final String code = await onCode.first;
  final http.Response response =
      await http.post("https://api.instagram.com/oauth/access_token", body: {
    "client_id": appId,
    "redirect_uri": "http://localhost:8585",
    "client_secret": appSecret,
    "code": code,
    "grant_type": "authorization_code"
  });
  flutterWebviewPlugin.close();
  return new Token.fromMap(json.decode(response.body));
}

Future<Stream<String>> _server() async {
  final StreamController<String> onCode = new StreamController();
  HttpServer server =
      await HttpServer.bind(InternetAddress.LOOPBACK_IP_V4, 8585);
  server.listen((HttpRequest request) async {
    final String code = request.uri.queryParameters["code"];
    request.response
      ..statusCode = 200
      ..headers.set("Content-Type", ContentType.HTML.mimeType)
      ..write("<html><h1>You can now close this window</h1></html>");
    await request.response.close();
    await server.close(force: true);
    onCode.add(code);
    await onCode.close();
  });
  return onCode.stream;
}

class Token {
  String access;
  String id;
  String username;
  String full_name;
  String profile_picture;

  Token.fromMap(Map json) {
    access = json['access_token'];
    id = json['user']['id'];
    username = json['user']['username'];
    full_name = json['user']['full_name'];
    profile_picture = json['user']['profile_picture'];
  }
}
