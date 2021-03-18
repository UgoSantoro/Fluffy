import 'package:flutter/material.dart';

class Page extends StatelessWidget {
  Widget buildFriends_template(Text itemname) {
    return Container(
      color: Color(0xFFEBEBEB),
      child: Column(
        children: <Widget>[
          Container(
            child: Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: EdgeInsets.only(left: 20.0, top: 7.0, bottom: 7.0),
                child: Text(itemname.data),
              ),
            ),
          ),
          Container(
            height: 1,
            color: Color(0xFF000000),
          ),
        ],
      ),
    );
  }

  Widget buildFriends() {
    return ListView(
      children: <Widget>[
        buildFriends_template(Text("Test")),
      ],
    );
  }

  Widget buildSubscribers() {
    return ListView(
      children: <Widget>[
        buildFriends_template(Text("Test")),
      ],
    );
  }

  Widget buildPosts_template(Text itemname, Text imagelink) {
    return Container(
      color: Color(0xFFEBEBEB),
      child: Column(
        children: <Widget>[
          Container(
            child: Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: EdgeInsets.only(left: 20.0, top: 7.0, bottom: 7.0),
                child: Text(itemname.data),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(bottom: 10.0),
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
          ),
          Container(
            height: 1,
            color: Color(0xFF000000),
          ),
        ],
      ),
    );
  }

  Widget buildPosts() {
    return ListView(
      children: <Widget>[
        buildPosts_template(
            Text("OK"),
            Text(
                "https://pbs.twimg.com/profile_images/1294348991023460354/-s8uaOOe_400x400.jpg")),
      ],
    );
  }

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

  Widget buildUserProfile() {
    return Container(
      //child: EdgeInsets.only(left: 40.0),
      child: Column(
        //crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          build_infoprofile_text(Text("Name: "), Text("username")),
          build_infoprofile_text(Text("Profile Image: "), Text("")),
          build_infoprofile_image(Text(
              "https://pbs.twimg.com/profile_images/1294348991023460354/-s8uaOOe_400x400.jpg")),
          build_infoprofile_text(Text("Birthday: "), Text("")),
          build_infoprofile_text(Text("Email: "), Text("")),
          build_infoprofile_text(Text("Phone Number: "), Text("")),
        ],
      ),
    );
  }

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
                      labelColor: Color(0xFF7728AC),
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
                      height: 400, //height of TabBarView
                      decoration: BoxDecoration(
                          border: Border(
                              top: BorderSide(color: Colors.grey, width: 0.5))),
                      child: TabBarView(children: <Widget>[
                        buildFriends(),
                        buildSubscribers(),
                        buildPosts(),
                        buildUserProfile(),
                      ]))
                ])),
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
