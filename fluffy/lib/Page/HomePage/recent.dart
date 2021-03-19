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
  Widget build_posts_profile_image(Text imagelink) {
    return Container(
      width: 30,
      height: 30,
      child: CircleAvatar(
        radius: 100,
        backgroundColor: Color(0xFFDADADA),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Container(
              width: 25,
              height: 25,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(150),
                child: Image.network(
                  imagelink.data,
                  fit: BoxFit.cover,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget build_posts_info(
      Text nameuser, Text userimage, Text postdesc, Text postimage) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
      child: Column(
        children: <Widget>[
          Row(
            children: <Widget>[
              build_posts_profile_image(
                  //User Profile Image
                  Text(userimage.data)),
              Container(
                //User Name
                padding: EdgeInsets.only(left: 5.0),
                child: Text(nameuser.data),
              ),
            ],
          ),
          Container(
            padding: EdgeInsets.only(top: 5.0),
            child: Align(
              alignment: Alignment.topLeft,
              child: Text(postdesc.data),
            ),
          ),
          Container(
            padding: EdgeInsets.only(top: 5.0),
            child: Align(
              alignment: Alignment.topLeft,
              child: Image.network(
                postimage.data,
                fit: BoxFit.cover,
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget build_posts(
      Text nameuser, Text userimage, Text postdesc, Text postimage) {
    return Container(
      padding: EdgeInsets.only(left: 7.0, top: 14.0, right: 7.0),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Color(0xFFF3F3F3),
        ),
        child: Stack(
          children: <Widget>[
            build_posts_info(nameuser, userimage, postdesc, postimage),
            /*Container(
                width: 8,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(15),
                      bottomLeft: Radius.circular(15)),
                  color: Color(0xFF0051FF),
                ),
              ),*/
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Recent"),
      ),
      body: Container(
        child: Center(
          child: ListView(
            children: <Widget>[
              build_posts(
                  Text("username"),
                  Text(
                      "https://interactive-examples.mdn.mozilla.net/media/cc0-images/grapefruit-slice-332-332.jpg"),
                  Text("fdfhbthnjtrnytn,yhnfgndfn"),
                  Text("https://pbs.twimg.com/media/DfkhrO1XUAEYkdw.jpg")),
              build_posts(
                  Text("username"),
                  Text(
                      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTdWmYyuXiL768aS-87gaP_QvbFL4AkegqRBw&usqp=CAU"),
                  Text("fdfhbthnjtrnytn,yhnfgndfn"),
                  Text(
                      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQctlVINh5Xecdn8z254cNFVuvSdEKfpNVgCg&usqp=CAU")),
              build_posts(
                  Text("username"),
                  Text(
                      "https://interactive-examples.mdn.mozilla.net/media/cc0-images/grapefruit-slice-332-332.jpg"),
                  Text("fdfhbthnjtrnytn,yhnfgndfn"),
                  Text(
                      "https://st2.depositphotos.com/3759967/5593/i/600/depositphotos_55936567-stock-photo-swirling-frosty-multi-colored-fractal.jpg")),
            ],
          ),
        ),
      ),
    );
  }
}
