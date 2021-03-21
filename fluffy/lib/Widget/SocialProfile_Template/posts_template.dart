import '../../Model/Constants.dart';
import 'package:flutter/material.dart';
import '../../Model/Example_Data/example_data.dart';

class Posts_TMP extends StatelessWidget {
  const Posts_TMP({Key key, this.itemtext}) : super(key: key);
  final Text itemtext;

  //USER IMAGE POST
  Widget build_posts_profile_image(Text imagelink) {
    return Container(
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
    );
  }

  // POST - INFORMATION --> LIKES, COMMENTS & SHARE
  Widget build_postsdetails(Text itemtext, Icon icon) {
    return Expanded(
      child: Container(
        padding: EdgeInsets.all(5.0),
        decoration: BoxDecoration(
          border: Border.all(
            color: Colors.grey,
            width: 1,
          ),
        ),
        child: Row(
          children: [
            Container(
              //User Name
              padding: EdgeInsets.only(left: 5.0),
              child: Row(
                children: <Widget>[
                  icon,
                ],
              ),
            ),
            Container(
              //User Name
              padding: EdgeInsets.only(left: 5.0),
              child: Text(itemtext.data),
            ),
          ],
        ),
      ),
    );
  }

  // POST - INFORMATION
  Widget build_posts_info(Text nameuser, Text userimage, Text postdesc,
      Text postimage, Text likes, Text comments, Text shares) {
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
          Container(
            padding: EdgeInsets.only(top: 10.0),
            child: Row(
              children: [
                build_postsdetails(
                  likes,
                  Icon(Icons.favorite,
                      size: 25, color: Constants().icon_photo_profile),
                ),
                build_postsdetails(
                  shares,
                  Icon(Icons.comment,
                      size: 25, color: Constants().icon_photo_profile),
                ),
                build_postsdetails(
                  comments,
                  Icon(Icons.share,
                      size: 25, color: Constants().icon_photo_profile),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  // POSTS TEMPLATE
  Widget build_posts_template(Text nameuser, Text userimage, Text postdesc,
      Text postimage, Text likes, Text comments, Text shares) {
    return Container(
      padding: EdgeInsets.only(left: 7.0, top: 14.0, right: 7.0),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Constants().posts_color,
        ),
        child: Stack(
          children: <Widget>[
            build_posts_info(nameuser, userimage, postdesc, postimage, likes,
                comments, shares),
          ],
        ),
      ),
    );
  }

  // CHECK SOCIAL NETWORK
  Widget build_social() {
    if (itemtext.data == "Facebook") {
      return Example_data().build_posts_facebook();
    } else if (itemtext.data == "Instagram") {
      return Example_data().build_posts_insta();
    } else if (itemtext.data == "Twitter") {
      return Example_data().build_posts_twitter();
    } else if (itemtext.data == "LinkedIn") {
      return Example_data().build_posts_linkedin();
    } else
      return Container();
  }

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
