import '../../Model/Constants.dart';
import 'package:flutter/material.dart';
import '../../Model/Example_Data/example_data.dart';

class Friends_TMP extends StatelessWidget {
  const Friends_TMP({Key key, this.itemtext, this.nameuser, this.userimage})
      : super(key: key);
  final Text itemtext;
  final Text nameuser;
  final Text userimage;

  // FRIEND IMAGE
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

  // FRIENDS TEMPLATE
  Widget buildFriends_template() {
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
                    build_friends_profile_image(userimage),
                    Container(
                      padding: EdgeInsets.only(left: 5.0),
                      child: Text(nameuser.data),
                    ),
                  ],
                ),
              ),
            ),
            Container(
              width: 8,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(15),
                    bottomLeft: Radius.circular(15)),
                color: Constants().login_app_color,
              ),
            ),
          ],
        ),
      ),
    );
  }

  // CHECK SOCIAL NETWORK
  Widget build_social() {
    if (itemtext.data == "Facebook") {
      return Example_data().build_friends_facebook();
    } else if (itemtext.data == "Instagram") {
      return Example_data().build_friends_insta();
    } else if (itemtext.data == "Twitter") {
      return Example_data().build_friends_twitter();
    } else if (itemtext.data == "LinkedIn") {
      return Example_data().build_friends_linkedin();
    } else
      return Container();
  }

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
