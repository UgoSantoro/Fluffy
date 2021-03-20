import 'package:Fluffy/Model/Constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_facebook_login/flutter_facebook_login.dart';
import 'package:flutter_twitter_login/flutter_twitter_login.dart';
import 'package:linkedin_login/linkedin_login.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_webview_plugin/flutter_webview_plugin.dart';
import 'package:oauth1/oauth1.dart';

//File Page Includ
import '../../main.dart';
import '../../Widget/app_icons_icons.dart';

class LoginPage extends StatelessWidget {
  static final FacebookLogin facebookSignIn = new FacebookLogin();

  String _message = 'Log in/out by pressing the buttons below.';

  Future<Null> _loginFacebook(BuildContext context) async {
    final FacebookLoginResult result = await facebookSignIn.logIn(['email']);

    switch (result.status) {
      case FacebookLoginStatus.loggedIn:
        final FacebookAccessToken accessToken = result.accessToken;

        _showMessage('''
         Logged in!
         Token: ${accessToken.token}
         User id: ${accessToken.userId}
         Expires: ${accessToken.expires}
         Permissions: ${accessToken.permissions}
         Declined permissions: ${accessToken.declinedPermissions}
         ''');
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(builder: (context) => MyHomePage()),
        );
        break;
      case FacebookLoginStatus.cancelledByUser:
        _showMessage('Login cancelled by the user.');
        break;
      case FacebookLoginStatus.error:
        _showMessage('Something went wrong with the login process.\n'
            'Here\'s the error Facebook gave us: ${result.errorMessage}');
        break;
    }
  }

  void _twitterLogin() async {
    String newMessage;
    var twitterLogin = new TwitterLogin(
      consumerKey: 'Ykpb0mw5qerxQtrGGLDqWVAwA',
      consumerSecret: 'U4a4aeFq9ThWjC9OKvzb3aBGnhTbhYhUjIvkKW703Nwh021s4y',
    );

    final TwitterLoginResult result = await twitterLogin.authorize();

    switch (result.status) {
      case TwitterLoginStatus.loggedIn:
        newMessage = 'Logged in! username: ${result.session.username}';
        break;
      case TwitterLoginStatus.cancelledByUser:
        newMessage = 'Login cancelled by user.';
        break;
      case TwitterLoginStatus.error:
        newMessage = 'Login error: ${result.errorMessage}';
        break;
    }
  }
/*
  void _loginTwitter(BuildContext context) async {
    final twitterLogin = TwitterLogin(
      // Consumer API keys
      apiKey: 'Ykpb0mw5qerxQtrGGLDqWVAwA',
      // Consumer API Secret keys
      apiSecretKey: 'U4a4aeFq9ThWjC9OKvzb3aBGnhTbhYhUjIvkKW703Nwh021s4y',
      // Registered Callback URLs in TwitterApp
      // Android is a deeplink
      // iOS is a URLScheme
      redirectURI: 'fluffy://',
      // Forces the user to enter their credentials
      // to ensure the correct users account is authorized.
    );
    // If you want to implement Twitter account switching, set [force_login] to true
    // login(forceLogin: true);
    final authResult = await twitterLogin.login();
    switch (authResult.status) {
      case TwitterLoginStatus.loggedIn:
        // success
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(builder: (context) => MyHomePage()),
        );
        break;
      case TwitterLoginStatus.cancelledByUser:
        // cancel
        print('====== Login cancel ======');
        break;
      case TwitterLoginStatus.error:
        // error
        print('====== Login error ======');
        print(authResult.errorMessage);
        break;
    }
  }*/

  void _showMessage(String message) {}

  Widget _socialnetworkslist(
      Color itemcolor, Text itemtext, BuildContext context, Icon icon) {
    return Container(
      padding: new EdgeInsets.all(5.0),
      child: RaisedButton(
        onPressed: () {
          if (itemtext.data == "Facebook") {
            _loginFacebook(context);
          } else if (itemtext.data == "Instagram") {
            Navigator.pushReplacement(
              context,
              MaterialPageRoute(builder: (context) => MyHomePage()),
            );
          } else if (itemtext.data == "Twitter") {
            _twitterLogin();
          } else if (itemtext.data == "LinkedIn") {
            _loginFacebook(context);
          }
        },
        textColor: Constants().white_text,
        color: itemcolor,
        child: Container(
          width: 250,
          height: 45,
          child: Stack(
            children: <Widget>[
              Align(
                alignment: Alignment.center,
                child: Text(
                  itemtext.data,
                  style: TextStyle(fontSize: 20),
                ),
              ),
              Align(
                alignment: Alignment.centerRight,
                child: Row(
                  children: <Widget>[icon],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          //Main Icon
          Flexible(
            child: FractionallySizedBox(
              heightFactor: 0.85,
              child: Container(
                color: Color.fromRGBO(86, 0, 232, 1),
                child:
                    Image.asset('assets/images/icon.png', fit: BoxFit.contain),
              ),
            ),
          ),
          Container(
            height: 40,
          ),

          _socialnetworkslist(
              Constants().facebook_color,
              Text("Facebook"),
              context,
              Icon(AppIcons.facebook, color: Constants().icon_photo_profile)),
          _socialnetworkslist(
              Constants().instagram_color,
              Text("Instagram"),
              context,
              Icon(AppIcons.instagram, color: Constants().icon_photo_profile)),
          _socialnetworkslist(
              Constants().twitter_color,
              Text("Twitter"),
              context,
              Icon(AppIcons.twitter, color: Constants().icon_photo_profile)),
          _socialnetworkslist(
              Constants().linkedin_color,
              Text("LinkedIn"),
              context,
              Icon(AppIcons.linkedin, color: Constants().icon_photo_profile)),
        ],
      ),
    );
  }
}
