import '../../Model/Constants.dart';
import '../../Widget/SocialProfile_Template/posts_template.dart';
import '../../Widget/SocialProfile_Template/user_profile_template.dart';
import 'package:flutter/material.dart';
import '../../Widget/SocialProfile_Template/friends_template.dart';
import '../../Widget/SocialProfile_Template/subs_template.dart';

class Page extends StatelessWidget {
  const Page({Key key, this.elemtext}) : super(key: key);
  final Text elemtext;
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        child: DefaultTabController(
          length: 4, // length of tabs
          initialIndex: 0,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Container(
                child: TabBar(
                  labelColor: Constants().login_app_color,
                  unselectedLabelColor: Colors.black,
                  tabs: [
                    Tab(text: 'Friends'.toUpperCase()),
                    Tab(text: 'Subscribers'.toUpperCase()),
                    Tab(text: 'Posts'.toUpperCase()),
                    Tab(text: 'Profile'.toUpperCase()),
                  ],
                ),
              ),
              Container(
                height: 600, //height of TabBarView
                decoration: BoxDecoration(
                    border: Border(
                        top: BorderSide(
                            color: Constants().login_app_color, width: 0.5))),
                child: TabBarView(
                  children: <Widget>[
                    Friends_TMP(itemtext: elemtext).build_social(),
                    Subs_TMP(itemtext: elemtext).build_social(),
                    Posts_TMP(itemtext: elemtext).build_social(),
                    User_Profile_TMP().build(context),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class FacebookPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Facebook"),
        backgroundColor: Constants().login_app_color,
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            Page(elemtext: Text("Facebook")),
          ],
        ),
      ),
    );
  }
}

class InstagramPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Instagram"),
        backgroundColor: Constants().login_app_color,
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            Page(elemtext: Text("Instagram")),
          ],
        ),
      ),
    );
  }
}

class TwitterPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Twitter"),
        backgroundColor: Constants().login_app_color,
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            Page(elemtext: Text("Twitter")),
          ],
        ),
      ),
    );
  }
}

class LinkedlnPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("LinkedIn"),
        backgroundColor: Constants().login_app_color,
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            Page(elemtext: Text("LinkedIn")),
          ],
        ),
      ),
    );
  }
}
