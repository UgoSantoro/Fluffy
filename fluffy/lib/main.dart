import 'package:flutter/material.dart';
import 'package:flutter_statusbarcolor/flutter_statusbarcolor.dart';
import 'package:image_picker/image_picker.dart';
import 'dart:io';
import 'package:flutter_facebook_login/flutter_facebook_login.dart';
import 'package:path_provider/path_provider.dart';
import 'package:path/path.dart';

//File Page Includ
import 'Page/PostPage/Detail_page.dart';
import 'Page/HomePage/profile.dart';
import 'Page/HomePage/recent.dart';
import 'Page/LoginPage/login.dart';
import 'Page/HomePage/home.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    FlutterStatusbarcolor.setStatusBarColor(Color.fromRGBO(86, 0, 232, 1));
    return MaterialApp(
      title: 'Fluffy',
      theme: ThemeData(
        primarySwatch: Colors.deepPurple,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: LoginPage(),
      routes: <String, WidgetBuilder>{
        '/login': (BuildContext context) => new LoginPage(),
        '/home': (BuildContext context) => new MyHomePage(),
        '/detail': (BuildContext context) => new DetailPage()
        //'/Facebook': (BuildContext context) => new Screen4()
        //'/Twitter': (BuildContext context) => new Screen4()
        //'/Linkedln': (BuildContext context) => new Screen4()
        //'/Instagram': (BuildContext context) => new Screen4()
        //'/Settings': (BuildContext context) => new SettingPage()
      },
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _selectedIndex = 0;
  static const TextStyle optionStyle =
      TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  static const List<Widget> _widgetOptions = <Widget>[
    Text(
      'Index 1: Home',
      style: optionStyle,
    ),
    Text(
      'Index 1: Search',
      style: optionStyle,
    ),
    Text(
      'Index 2: Accounts',
      style: optionStyle,
    ),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      /*appBar: AppBar(
        title: Text(widget.title),
      ),*/
      body: IndexedStack(
        children: <Widget>[
          HomePage(),
          RecentPage(),
          ProfilePage(),
        ],
        index: _selectedIndex,
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Color.fromRGBO(86, 0, 232, 1),
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.notifications),
            label: 'recent',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profile',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.grey,
        onTap: _onItemTapped,
      ),
      /*bottomNavigationBar: BottomNavigationBar(
        currentIndex: 0, // this will be set when a new tab is tapped
        items: [
          BottomNavigationBarItem(
            icon: new Icon(Icons.home),
          ),
          BottomNavigationBarItem(
            icon: new Icon(Icons.search),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
          )
        ],
      ),*/
      /*body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headline4,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.*/
    );
  }
}
