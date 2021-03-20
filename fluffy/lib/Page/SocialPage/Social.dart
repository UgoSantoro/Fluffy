import 'package:Fluffy/Model/Constants.dart';
import 'package:Fluffy/Widget/SocialProfile/posts_template.dart';
import 'package:Fluffy/Widget/SocialProfile/user_profile_template.dart';
import 'package:flutter/material.dart';
import '../../Widget/SocialProfile/friends_subs_template.dart';

class Page extends StatelessWidget {
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
                  labelColor: Constants().app_color,
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
                        top: BorderSide(color: Colors.grey, width: 0.5))),
                child: TabBarView(
                  children: <Widget>[
                    Friends_Subs_TMP().buildfriends(),
                    Friends_Subs_TMP().buildsubscribers(),
                    Posts_TMP().build(context),
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
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            Page(),
            ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: Text('Go back!'),
            ),
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
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            Page(),
            ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: Text('Go back!'),
            ),
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
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            Page(),
            ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: Text('Go back!'),
            ),
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
        title: Text("Linkedln"),
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            Page(),
            ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: Text('Go back!'),
            ),
          ],
        ),
      ),
    );
  }
}
