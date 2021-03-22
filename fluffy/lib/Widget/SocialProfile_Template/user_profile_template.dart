import 'package:flutter/material.dart';
import '../../Model/SocialAccount.dart' as localuser;
import '../../Tools/LocalTools.dart' as localtools;
import '../../main.dart';

class User_Profile_TMP extends StatelessWidget {
  const User_Profile_TMP({Key key, this.itemtext}) : super(key: key);
  final Text itemtext;
  //TEXT TEMPLATE --> PROFILE
  Widget build_infoprofile_text(Text itemname, Text itemvalue) {
    return Container(
      child: Align(
        alignment: Alignment.centerLeft,
        child: Padding(
          padding: EdgeInsets.only(left: 20.0, top: 15.0),
          child: Text(
            itemname.data + itemvalue.data.toUpperCase(),
          ),
        ),
      ),
    );
  }

  //IMAGE TEMPLATE --> PROFILE
  Widget build_infoprofile_image(Text imagelink) {
    return Padding(
      padding: EdgeInsets.only(top: 15.0),
      child: Container(
        width: 150,
        height: 150,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Align(
              alignment: Alignment.center,
              child: Image.network(
                imagelink.data,
                fit: BoxFit.cover,
              ),
            ),
          ],
        ),
      ),
    );
  }

  // PROFILE DETAILS
  Widget build(BuildContext context) {
    final User = MyAppState.currentUser;
    return Container(
      //child: EdgeInsets.only(left: 40.0),
      child: Column(
        //crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          build_infoprofile_text(Text("Name: "), Text(User.fullName())),
          build_infoprofile_text(Text("Profile Image: "), Text("")),
          build_infoprofile_image(Text((itemtext.data == "Facebook")
              ? User.facebook_profilePictureURL
              : (itemtext.data == "Twitter")
                  ? User.twitter_profilePictureURL
                  : "https://pbs.twimg.com/profile_images/1294348991023460354/-s8uaOOe_400x400.jpg")),
          build_infoprofile_text(Text("Birthday: "), Text("")),
          build_infoprofile_text(Text("Email: "), Text(User.email)),
          build_infoprofile_text(
              Text("Phone Number: "), Text(User.phoneNumber)),
        ],
      ),
    );
  }
}
