import 'package:flutter/material.dart';
import 'package:flutter_facebook_login/flutter_facebook_login.dart';
import 'package:flutter_twitter_login/flutter_twitter_login.dart';
import 'package:firebase_auth/firebase_auth.dart' as auth;
//File Page Includ
import '../../Page/HomePage/MyHomePage.dart';
import '../../Page/LoginPage/facebook.dart';
import '../../Page/LoginPage/twitter.dart';
import '../../Page/LoginPage/instagram.dart';
import '../../Model/SocialAccount.dart' as localuser;
import '../../Tools/LocalTools.dart';
import '../../Model/Constants.dart';
import '../../Page/SocialPage/Social.dart';
import '../../main.dart';

class SocialButton extends StatelessWidget {
  const SocialButton(
      {Key key, this.itemcolor, this.itemtext, this.icon, this.islogin})
      : super(key: key);
  final Color itemcolor;
  final Text itemtext;
  final Icon icon;
  final bool islogin;
  static final FacebookLogin facebookSignIn = new FacebookLogin();

  //Facebook Login
  void _loginFacebook(BuildContext context) async {
    final facebookLogin = FacebookLogin();
    final result = await facebookLogin.logIn(['email']);
    switch (result.status) {
      case FacebookLoginStatus.loggedIn:
        await auth.FirebaseAuth.instance
            .signInWithCredential(
                auth.FacebookAuthProvider.credential(result.accessToken.token))
            .then((auth.UserCredential authResult) async {
          localuser.User user = await Localtools().getCurrentUser();
          if (user == null) {
            user = await FluffyFacebooklogin.createUserFacebook(
                result, authResult.user.uid);
          } else {
            user = await FluffyFacebooklogin.syncUserWithFacebook(result, user);
          }
          MyAppState.currentUser = user;
          if (islogin) {
            Navigator.pushReplacement(
              context,
              MaterialPageRoute(builder: (context) => MyHomePage()),
            );
          } else {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => FacebookPage()),
            );
          }
        });
        break;
      case FacebookLoginStatus.cancelledByUser:
        break;
      case FacebookLoginStatus.error:
        break;
    }
  }
  //End Facebook

  //Twitter Login
  void _twitterLogin(BuildContext context) async {
    String newMessage;
    var twitterLogin = new TwitterLogin(
      consumerKey: 'Ykpb0mw5qerxQtrGGLDqWVAwA',
      consumerSecret: 'U4a4aeFq9ThWjC9OKvzb3aBGnhTbhYhUjIvkKW703Nwh021s4y',
    );
    final TwitterLoginResult result = await twitterLogin.authorize();

    switch (result.status) {
      case TwitterLoginStatus.loggedIn:
        final TwitterSession twitterSession = result.session;

        localuser.User user = await Localtools().getCurrentUser();
        if (user == null) {
          user = await FluffyTwitterlogin.createUserTwitter(
              result, result.session.userId);
        } else {
          user = await FluffyTwitterlogin.syncUserWithTwitter(result, user);
        }
        MyAppState.currentUser = user;
        if (islogin) {
          Navigator.pushReplacement(
            context,
            MaterialPageRoute(builder: (context) => MyHomePage()),
          );
        } else {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => TwitterPage()),
          );
        }
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
  //End Twitter

  //Instagram (Impossible / no access to auth api)
  void _instagramLogin(BuildContext context) async {
    await getToken("437039790940256", "1413a242065d67d25a991ef6332474e5")
        .then((token) {
      if (token != null) {
        //_view.onLoginScuccess(token.access);
      } else {
        //_view.onLoginError('Error');
      }
    });
  }
  //End Instagram

  //Build the main Login Buttons widget
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: new EdgeInsets.all(5.0),
      child: RaisedButton(
        onPressed: () async {
          localuser.User user = await Localtools().getCurrentUser();

          if (itemtext.data == "Facebook") {
            if (user == null || user.facebookaccesstoken == "") {
              _loginFacebook(context);
            } else {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => FacebookPage()));
            }
          } else if (itemtext.data == "Instagram") {
            if (user == null || user.twitteraccesstoken == "") {
              _instagramLogin(context);
            } else {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => InstagramPage()));
            }
          } else if (itemtext.data == "Twitter") {
            if (user == null || user.twitteraccesstoken == "") {
              _twitterLogin(context);
            } else {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => TwitterPage()));
            }
          } else if (itemtext.data == "LinkedIn") {
            if (islogin) {
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(builder: (context) => MyHomePage()),
              );
            } else {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => LinkedlnPage()),
              );
            }
          }
        },
        textColor: Constants().white_text,
        color: itemcolor,
        child: Container(
          width: 250,
          height: 50,
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
                  children: <Widget>[
                    icon,
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
