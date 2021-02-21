import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'dart:io';
import 'package:flutter_facebook_login/flutter_facebook_login.dart';
import 'package:path_provider/path_provider.dart';
import 'package:path/path.dart';
import 'package:shared_preferences/shared_preferences.dart';

class RecentPage extends StatefulWidget {
  RecentPage({Key key}) : super(key: key);
  @override
  _RecentPageState createState() => _RecentPageState();
}

class _RecentPageState extends State<RecentPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Recent"),
      ),
      body: Container(
        child: Center(
          child: Container(
            child: Column(
              children: <Widget>[
                FlatButton(
                  padding: new EdgeInsets.all(25.0),
                  onPressed: () {},
                ),
                Text(
                  "AYEUEIFJEZFI POEHU",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20.0),
                ),
                Container(
                  padding: new EdgeInsets.all(25.0),
                  child: Column(
                    children: <Widget>[],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
