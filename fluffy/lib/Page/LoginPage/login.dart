import 'package:flutter/material.dart';
import 'package:flutter_facebook_login/flutter_facebook_login.dart';
import 'package:twitter_login/twitter_login.dart';
import 'package:linkedin_login/linkedin_login.dart';

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
  }

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
            _loginTwitter(context);
          } else if (itemtext.data == "LinkedIn") {
            _loginFacebook(context);
          }
        },
        textColor: Color(0xFFFFFFFF),
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
                  children: <Widget>[
                    /*Text(
                      '1.000',
                      style: TextStyle(fontSize: 14),
                    ),*/
                    icon
                  ],
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
          /*
          //Facebook
          Container(
            height: 40,
            width: 200,
            child: ElevatedButton.icon(
              onPressed: () {
                _loginFacebook(context);
              },
              style: ElevatedButton.styleFrom(
                shape: new RoundedRectangleBorder(
                  borderRadius: new BorderRadius.circular(30.0),
                ),
                primary: Color.fromRGBO(25, 118, 210, 1),
              ),
              icon: Icon(Icons.home),
              label: Text("Facebook"),
            ),
          ),
          //Instagram
          Container(
            height: 40,
            width: 200,
            child: ElevatedButton.icon(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                shape: new RoundedRectangleBorder(
                  borderRadius: new BorderRadius.circular(30.0),
                ),
                primary: Color(0xFF405DE6),
              ),
              icon: Icon(Icons.home),
              label: Text("Instagram"),
            ),
          ),
          /*Container(
            margin: EdgeInsets.all(15),
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  Color.fromRGBO(254, 218, 117, 1),
                  Color.fromRGBO(250, 126, 30, 1),
                  Color.fromRGBO(150, 47, 191, 1),
                  Color.fromRGBO(79, 91, 213, 1),
                ],
                begin: FractionalOffset.centerLeft,
                end: FractionalOffset.centerRight,
              ),
            ),
            child: ElevatedButton.icon(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  shape: new RoundedRectangleBorder(
                    borderRadius: new BorderRadius.circular(30.0),
                  ),
                  primary: Color.fromRGBO(0, 0, 0, 0),
                ),
                icon: Icon(Icons.home),
                label: Text("Instagram")),
          ),*/
          //Twitter
          Container(
            height: 40,
            width: 200,
            child: ElevatedButton.icon(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                shape: new RoundedRectangleBorder(
                  borderRadius: new BorderRadius.circular(30.0),
                ),
                primary: Color(0xFF1DA1F2),
              ),
              icon: Icon(Icons.home),
              label: Text("Twitter"),
            ),
          ),
          //LinkedIn
          Container(
            height: 40,
            width: 200,
            child: ElevatedButton.icon(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                shape: new RoundedRectangleBorder(
                  borderRadius: new BorderRadius.circular(30.0),
                ),
                primary: Color(0xFF2867B2),
              ),
              icon: Icon(Icons.home),
              label: Text('LinkedIn'),
            ),
          ),*/
          Container(
            height: 40,
          ),
          _socialnetworkslist(Color(0xFF4267B2), Text("Facebook"), context,
              Icon(AppIcons.facebook, color: Color(0xFFFFFFFF))),
          _socialnetworkslist(Color(0xFF405DE6), Text("Instagram"), context,
              Icon(AppIcons.instagram, color: Color(0xFFFFFFFF))),
          _socialnetworkslist(Color(0xFF1DA1F2), Text("Twitter"), context,
              Icon(AppIcons.twitter, color: Color(0xFFFFFFFF))),
          _socialnetworkslist(Color(0xFF2867B2), Text("LinkedIn"), context,
              Icon(AppIcons.linkedin, color: Color(0xFFFFFFFF))),
        ],
      ),
    );
  }
}
