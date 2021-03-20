import 'package:Fluffy/Model/Constants.dart';
import 'package:flutter/material.dart';

class Friends_Subs_TMP extends StatelessWidget {
  Widget build_friends_profile_image(Text imagelink) {
    return Container(
      padding: EdgeInsets.only(left: 10.0),
      child: Container(
        width: 30,
        height: 30,
        child: CircleAvatar(
          radius: 100,
          backgroundColor: Constants().border_image,
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
      ),
    );
  }

  Widget buildFriends_template(Text nameuser, Text userimage) {
    return Container(
      padding: EdgeInsets.only(left: 7.0, top: 14.0, right: 7.0),
      child: Container(
        height: 45,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Constants().posts_color,
        ),
        child: Stack(
          children: <Widget>[
            Align(
              alignment: Alignment.centerLeft,
              child: Container(
                padding: EdgeInsets.only(left: 10.0),
                child: Row(
                  children: <Widget>[
                    build_friends_profile_image(Text(userimage.data)),
                    Container(
                      padding: EdgeInsets.only(left: 5.0),
                      child: Text(nameuser.data),
                    ),
                  ],
                ),
              ),
            ),
            //build_posts_info(nameuser, userimage, postdesc, postimage),
            Container(
              width: 8,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(15),
                    bottomLeft: Radius.circular(15)),
                color: Constants().firneds_subscribers_border_color,
              ),
            ),
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        buildFriends_template(
            Text("Test"),
            Text(
                "https://interactive-examples.mdn.mozilla.net/media/cc0-images/grapefruit-slice-332-332.jpg")),
      ],
    );
  }
}
