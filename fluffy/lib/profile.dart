import 'package:Fluffy/Social.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'dart:io';
import 'package:flutter_facebook_login/flutter_facebook_login.dart';
import 'package:path_provider/path_provider.dart';
import 'package:path/path.dart';
import 'package:shared_preferences/shared_preferences.dart';

import './main.dart';
import './app_icons_icons.dart';

class ProfilePage extends StatefulWidget {
  ProfilePage({Key key}) : super(key: key);
  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  File imageFile;

  _initImage(BuildContext context) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();

    if (!prefs.containsKey('picked_image')) return;

    final filepath = (prefs.getString('picked_image'));

    final pickedFile = File(filepath);
    setState(() {
      if (pickedFile != null) {
        imageFile = File(pickedFile.path);
      } else {
        print('No image selected.');
      }
    });
  }

  _openGallery(BuildContext context) async {
    final picker = ImagePicker();
    final pickedFile = await picker.getImage(source: ImageSource.gallery);

    if (pickedFile != null) {
      Directory tempDir = await getApplicationDocumentsDirectory();
      String path = tempDir.path;

      final fileName = basename(pickedFile.path);
      final File file = await File(pickedFile.path).copy('$path/picked');

      SharedPreferences prefs = await SharedPreferences.getInstance();
      prefs.setString('picked_image', file.path);
    }

    setState(() {
      if (pickedFile != null) {
        imageFile = File(pickedFile.path);
      } else {
        print('No image selected.');
      }
    });
    Navigator.of(context).pop();
  }

  _openCamera(BuildContext context) async {
    final picker = ImagePicker();

    final pickedFile = await picker.getImage(source: ImageSource.camera);

    setState(() {
      if (pickedFile != null) {
        imageFile = File(pickedFile.path);
      } else {
        print('No image selected.');
      }
    });
    Navigator.of(context).pop();
  }

  Future<void> _showChoiceDialog(BuildContext context) {
    return showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            title: Text("Select an Option :"),
            content: SingleChildScrollView(
              child: ListBody(
                children: <Widget>[
                  RaisedButton(
                    onPressed: () {
                      _openGallery(context);
                    },
                    child: Text("Gallery"),
                  ),
                  RaisedButton(
                    onPressed: () {
                      _openCamera(context);
                    },
                    child: Text("Camera"),
                  )
                ],
              ),
            ),
          );
        });
  }

  Widget _checkimageprofile() {
    if (imageFile == null) {
      return Container(
        width: 230,
        height: 230,
        child: ClipRRect(
          borderRadius: BorderRadius.circular(150),
          child: Container(
            color: Color(0xFF5B2B83),
            child: Icon(
              Icons.person,
              size: 200,
              color: Color(0xFFFFFFFF),
            ),
          ),
        ),
      );
    } else {
      return Container(
        width: 230,
        height: 230,
        child: ClipRRect(
          borderRadius: BorderRadius.circular(150),
          child: Image.file(
            imageFile,
            fit: BoxFit.cover,
          ),
        ),
      );
    }
  }

  Widget _photoicon() {
    return Container(
      width: 50,
      height: 50,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(150),
        child: Container(
          color: Color(0xFF5B2B83),
          child: Icon(
            Icons.photo_camera,
            color: Color(0xFFFFFFFF),
          ),
        ),
      ),
    );
  }

  Widget _imageprofile(BuildContext context) {
    return Container(
      width: 250,
      height: 250,
      child: Stack(
        children: <Widget>[
          Container(
            width: 250,
            height: 250,
            child: CircleAvatar(
              radius: 100,
              backgroundColor: Color(0xFFDADADA),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  _checkimageprofile(),
                ],
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomRight,
            child: Container(
              width: 65,
              height: 65,
              child: CircleAvatar(
                radius: 100,
                backgroundColor: Color(0xFFDADADA),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    _photoicon(),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _socialnetworkslist(
      Color itemcolor, Text itemtext, BuildContext context, Icon icon) {
    return Container(
      padding: new EdgeInsets.all(5.0),
      child: RaisedButton(
        onPressed: () {
          if (itemtext.data == "Facebook") {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => FacebookPage()));
          } else if (itemtext.data == "Instagram") {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => InstagramPage()));
          } else if (itemtext.data == "Twitter") {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => TwitterPage()));
          } else if (itemtext.data == "LinkedIn") {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => LinkedlnPage()));
          }
        },
        textColor: Color(0xFFFFFFFF),
        color: itemcolor,
        child: Container(
          width: 250,
          height: 35,
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

  Widget _socialcontainer(BuildContext context) {
    return Container(
      padding: new EdgeInsets.all(25.0),
      child: Column(
        children: <Widget>[
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

  @override
  Widget build(BuildContext context) {
    _initImage(context);

    return Scaffold(
      body: Container(
        child: Center(
          child: Container(
            //Padding Top
            padding: new EdgeInsets.all(50.0),
            child: Column(
              children: <Widget>[
                FlatButton(
                  padding: new EdgeInsets.all(25.0),
                  onPressed: () {
                    _showChoiceDialog(context);
                  },
                  child: _imageprofile(context),
                ),
                Text(
                  "user name".toUpperCase(),
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20.0),
                ),
                _socialcontainer(context),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
