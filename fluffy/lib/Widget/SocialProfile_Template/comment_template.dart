import '../../Model/Constants.dart';
import '../../Model/Comment.dart';
import 'package:flutter/material.dart';
import '../../Model/Example_Data/example_data.dart';

class Comment_TMP extends StatelessWidget {
  const Comment_TMP({Key key, this.comment}) : super(key: key);
  final Comment comment;

  // FRIEND IMAGE
  Widget build_comment_profile_image(Text imagelink) {
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
  Widget buildComment_template() {
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
                    build_comment_profile_image(Text(comment.userimage)),
                    Container(
                      padding: EdgeInsets.only(left: 5.0),
                      child: Text(comment.username),
                    ),
                    Expanded(
                      child: Align(
                          alignment: Alignment.centerRight,
                          child: Text(comment.text)),
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

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
