import 'package:flutter/material.dart';
import 'package:flutter_facebook_login/flutter_facebook_login.dart';

//File Page Includ
import './main.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          //Main Icon
          Flexible(
            child: FractionallySizedBox(
              heightFactor: 0.8,
              child: Container(
                color: Color.fromRGBO(86, 0, 232, 1),
                child:
                    Image.asset('assets/images/icon.png', fit: BoxFit.contain),
              ),
            ),
          ),

          Container(
            height: 40,
            width: 200,
            color: Colors.black,
            child: ElevatedButton.icon(
              onPressed: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(builder: (context) => MyHomePage()),
                );
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
          Container(
            height: 40,
            width: 200,
            child: ElevatedButton.icon(
              onPressed: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(builder: (context) => MyHomePage()),
                );
              },
              style: ElevatedButton.styleFrom(
                shape: new RoundedRectangleBorder(
                  borderRadius: new BorderRadius.circular(30.0),
                ),
                primary: Color.fromRGBO(214, 41, 118, 1),
              ),
              icon: Icon(Icons.home),
              label: Text("Instagram"),
            ),
          ),
          Container(
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
          ),
          Container(
            height: 40,
            width: 200,
            child: ElevatedButton.icon(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                shape: new RoundedRectangleBorder(
                  borderRadius: new BorderRadius.circular(30.0),
                ),
                primary: Color.fromRGBO(86, 0, 232, 1),
              ),
              icon: Icon(Icons.home),
              label: Text("Twitter"),
            ),
          ),
          Container(
            height: 40,
            width: 200,
            child: ElevatedButton.icon(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                shape: new RoundedRectangleBorder(
                  borderRadius: new BorderRadius.circular(30.0),
                ),
                primary: Color.fromRGBO(86, 0, 232, 1),
              ),
              icon: Icon(Icons.home),
              label: Text('LinkedIn'),
            ),
          ),
        ],
      ),
    );
  }
}
