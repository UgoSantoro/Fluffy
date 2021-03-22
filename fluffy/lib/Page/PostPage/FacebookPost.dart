/*import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'dart:async';

import '../../main.dart';

String requete =
    'https://graph.facebook.com/me?fields=id,name,feed{message}&access_token=';

Future<FacebookPost> fetchData() async {
  final response = await http.get(requete);

  if (response.statusCode == 200) {
    return FacebookPost.fromJson(jsonDecode(response.body));
  } else {
    throw Exception('Failed to load message');
  }
}

class FacebookPost extends StatelessWidget {
  final int userId;
  final String name;
  final String feed;
  final String message;
  final String apikeyFacebook = '';

  const FacebookPost({Key key, this.userId, this.name, this.feed, this.message})
      : super(key: key);

  factory FacebookPost.fromJson(Map<String, dynamic> json) {
    return FacebookPost(
      userId: json['userId'],
      name: json['name'],
      feed: json['feed'],
      message: json['message'],
    );
  }

  Map<String, dynamic> toJson() => {
        "userId": userId,
        "name": name,
        "feed": feed,
        "message": message,
      };

  void main() => runApp(MyApp());

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    throw UnimplementedError();
  }
}

class MyApp extends StatefulWidget {
  MyApp({Key key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  Future<FacebookPost> FacebookProfile;

  @override
  void initState() {
    super.initState();
    FacebookProfile = fetchData();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Fetch Data Example',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text('Fetch Data Example'),
        ),
        body: Center(
          child: FutureBuilder<FacebookPost>(
            future: FacebookProfile,
            builder: (context, snapshot) {
              if (snapshot.hasData) {
                return Text(snapshot.data.name);
              } else if (snapshot.hasError) {
                return Text("${snapshot.error}");
              }

// By default, show a loading spinner.
              return CircularProgressIndicator();
            },
          ),
        ),
      ),
    );
  }
}

@override
Widget build(BuildContext context) {
  // TODO: implement build
  throw UnimplementedError();
}
*/