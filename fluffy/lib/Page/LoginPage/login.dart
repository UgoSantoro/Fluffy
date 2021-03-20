import '../../Model/Constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_facebook_login/flutter_facebook_login.dart';
import 'package:flutter_twitter_login/flutter_twitter_login.dart';
import 'package:firebase_auth/firebase_auth.dart' as auth;

//File Page Includ
import '../HomePage/MyHomePage.dart';
import '../../Widget/app_icons_icons.dart';
import '../../Model/SocialAccount.dart' as localuser;
import '../../Tools/LocalTools.dart';
import './facebook.dart';
import './twitter.dart';

class LoginPage extends StatelessWidget {
  BuildContext _context;
  static final FacebookLogin facebookSignIn = new FacebookLogin();

  //Facebook
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
            FluffyFacebooklogin.createUserFacebook(result, authResult.user.uid);
          } else {
            FluffyFacebooklogin.syncUserWithFacebook(result, user);
          }
          Navigator.pushReplacement(
            context,
            MaterialPageRoute(builder: (context) => MyHomePage()),
          );
        });
        break;
      case FacebookLoginStatus.cancelledByUser:
        break;
      case FacebookLoginStatus.error:
        break;
    }
  }
  //End Facebook

  //Twitter
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
        final auth.AuthCredential twitterAuthCredential =
            auth.TwitterAuthProvider.credential(
                accessToken: twitterSession.token,
                secret: twitterSession.secret);

        await auth.FirebaseAuth.instance
            .signInWithCredential(twitterAuthCredential)
            .then((auth.UserCredential authResult) async {
          localuser.User user = await Localtools().getCurrentUser();
          if (user == null) {
            FluffyTwitterlogin.createUserTwitter(result, authResult.user.uid);
          } else {
            FluffyTwitterlogin.syncUserWithTwitter(result, user);
          }
          Navigator.pushReplacement(
            context,
            MaterialPageRoute(builder: (context) => MyHomePage()),
          );
        });
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

  //Instagram
  void _instragramLogin(BuildContext context) async {}
  //End Instagram

  Future<void> _showMessage(String message) {
    return showDialog<void>(
      context: _context,
      barrierDismissible: false, // user must tap button!
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('AlertDialog Title'),
          content: SingleChildScrollView(
            child: ListBody(
              children: <Widget>[
                Text('This is a demo alert dialog.'),
                Text('Would you like to approve of this message?'),
              ],
            ),
          ),
          actions: <Widget>[
            TextButton(
              child: Text('Approve'),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
  }

  Widget _socialnetworkslist(
      Color itemcolor, Text itemtext, BuildContext context, Icon icon) {
    return Container(
      padding: new EdgeInsets.all(5.0),
      child: RaisedButton(
        onPressed: () {
          if (itemtext.data == "Facebook") {
            _loginFacebook(context);
          } else if (itemtext.data == "Instagram") {
            _instragramLogin(context);
          } else if (itemtext.data == "Twitter") {
            _twitterLogin(context);
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
    _context = context;
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
