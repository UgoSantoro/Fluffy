import 'package:flutter/material.dart';
import '../../Model/Constants.dart';
import '../../Model/Comment.dart' as fluffycomment;
import '../../Widget/SocialProfile_template/comment_template.dart';
import 'package:carousel_slider/carousel_slider.dart';

class DetailPage extends StatelessWidget {
  const DetailPage(
      {Key key,
      this.nameuser,
      this.userimage,
      this.description,
      this.likes_count,
      this.postimage,
      this.comments_count,
      this.share_count,
      this.comments})
      : super(key: key);
  final Text nameuser;
  final Text userimage;
  final Text description;
  final List<Text> postimage;
  final postid = "";
  final Text likes_count;
  final Text comments_count;
  final Text share_count;
  final List<fluffycomment.Comment> comments;

  //USER IMAGE POST
  Widget build_posts_profile_image(Text imagelink) {
    return Container(
      width: 30,
      height: 50,
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

  // POST - INFORMATION
  Widget build_posts_info(
      Text nameuser,
      Text userimage,
      Text postdesc,
      List<Text> postimages,
      Text likes,
      Text comments,
      Text shares,
      List<fluffycomment.Comment> allcomments) {
    List<Widget> commentwidget = new List<Widget>();
    for (var i = 0; i < allcomments.length; i++) {
      Widget temp =
          new Comment_TMP(comment: allcomments[i]).buildComment_template();
      commentwidget.add(temp);
    }
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
      child: ListView(
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
          SizedBox(
            height: 10,
          ),
          Container(
            padding: EdgeInsets.only(top: 5.0),
            child: Align(
                alignment: Alignment.topLeft,
                child: CarouselSlider(
                  options: CarouselOptions(
                    viewportFraction: 1,
                  ),
                  items: postimages
                      .map((item) => Container(
                            child: Center(
                                child:
                                    Image.network(item.data, fit: BoxFit.fill)),
                          ))
                      .toList(),
                )),
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
          SizedBox(
            height: 10,
          ),
          Container(
            child: Column(
              children: commentwidget,
            ),
          ),
        ],
      ),
    );
  }

  // POSTS TEMPLATE
  Widget build_posts_template(
      Text nameuser,
      Text userimage,
      Text postdesc,
      List<Text> postimages,
      Text likes,
      Text comments,
      Text shares,
      allcomments) {
    return Container(
      padding: EdgeInsets.only(left: 7.0, top: 14.0, right: 7.0),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Constants().posts_color,
        ),
        child: Stack(
          children: <Widget>[
            build_posts_info(nameuser, userimage, postdesc, postimages, likes,
                comments, shares, allcomments),
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: nameuser,
        backgroundColor: Constants().login_app_color,
      ),
      body: Center(
        child: build_posts_template(nameuser, userimage, description, postimage,
            likes_count, share_count, comments_count, comments),
      ),
    );
  }
}
