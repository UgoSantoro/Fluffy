import 'package:flutter/material.dart';
import 'package:flutter_statusbarcolor/flutter_statusbarcolor.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/services.dart';

//File Page Includ
import 'Page/PostPage/Detail_page.dart';
import 'Page/LoginPage/login.dart';
import './Page/LoginPage/login.dart';
import './Page/LoginPage/LoginPending.dart';
import './Page/HomePage/MyHomePage.dart';
import './Page/PostPage/Detail_page.dart';
import './Model/SocialAccount.dart' as localuser;

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  MyAppState createState() => MyAppState();
}

class MyAppState extends State<MyApp> with WidgetsBindingObserver {
  static localuser.User currentUser;
  static String FacebookAppId = "884595555442096";

  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
    ]);
    FlutterStatusbarcolor.setStatusBarColor(Color.fromRGBO(86, 0, 232, 1));
    return MaterialApp(
      title: 'Fluffy',
      theme: ThemeData(
        primarySwatch: Colors.deepPurple,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: LoginPending(),
      //LoginPage(),
      routes: <String, WidgetBuilder>{
        '/login': (BuildContext context) => new LoginPage(),
        '/home': (BuildContext context) => new MyHomePage(),
        '/detail': (BuildContext context) => new DetailPage()
      },
    );
  }
}
