import 'package:flutter/material.dart';
import 'package:flutter_statusbarcolor/flutter_statusbarcolor.dart';
import 'package:image_picker/image_picker.dart';
import 'dart:io';

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
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.purple,
        // This makes the visual density adapt to the platform that you run
        // the app on. For desktop platforms, the controls will be smaller and
        // closer together (more dense) than on mobile platforms.
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: ProfilePage(),
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
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Color.fromRGBO(86, 0, 232, 1),
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: 'Business',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'School',
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

class DetailPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Detail Post'),
      ),
      body: Center(
        child: Text('Here\'s your post details'),
      ),
    );
  }
}

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          Flexible(
            child: FractionallySizedBox(
              heightFactor: 0.8,
              child: Container(
                color: Color.fromRGBO(86, 0, 232, 1),
                child:
                    Image.asset('assets/images/icon.png', fit: BoxFit.contain),
              ),
            ),
          ),
          Container(
            height: 40,
            width: 200,
            child: ElevatedButton.icon(
              onPressed: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(builder: (context) => MyHomePage()),
                );
              },
              style: ElevatedButton.styleFrom(
                shape: new RoundedRectangleBorder(
                  borderRadius: new BorderRadius.circular(30.0),
                ),
                primary: Color.fromRGBO(25, 118, 210, 1),
              ),
              icon: Icon(Icons.home),
              label: Text("Facebook"),
            ),
          ),
          Container(
            margin: EdgeInsets.all(15),
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  Color.fromRGBO(254, 218, 117, 1),
                  Color.fromRGBO(250, 126, 30, 1),
                  Color.fromRGBO(214, 41, 118, 1),
                  Color.fromRGBO(150, 47, 191, 1),
                  Color.fromRGBO(79, 91, 213, 1),
                ],
                begin: FractionalOffset.centerLeft,
                end: FractionalOffset.centerRight,
              ),
            ),
            child: ElevatedButton.icon(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  shape: new RoundedRectangleBorder(
                    borderRadius: new BorderRadius.circular(30.0),
                  ),
                  primary: Color.fromRGBO(0, 0, 0, 0),
                ),
                icon: Icon(Icons.home),
                label: Text("Instagram")),
          ),
          Container(
            height: 40,
            width: 200,
            child: ElevatedButton.icon(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                shape: new RoundedRectangleBorder(
                  borderRadius: new BorderRadius.circular(30.0),
                ),
                primary: Color.fromRGBO(86, 0, 232, 1),
              ),
              icon: Icon(Icons.home),
              label: Text("Twitter"),
            ),
          ),
          Container(
            height: 40,
            width: 200,
            child: ElevatedButton.icon(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                shape: new RoundedRectangleBorder(
                  borderRadius: new BorderRadius.circular(30.0),
                ),
                primary: Color.fromRGBO(86, 0, 232, 1),
              ),
              icon: Icon(Icons.home),
              label: Text('LinkedIn'),
            ),
          ),
        ],
      ),
    );
  }
}

class ProfilePage extends StatefulWidget {
  ProfilePage({Key key}) : super(key: key);
  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  File imageFile;
  _openGallery(BuildContext context) async {
    final picker = ImagePicker();
    final pickedFile = await picker.getImage(source: ImageSource.gallery);

    setState(() {
      if (pickedFile != null) {
        imageFile = File(pickedFile.path);
      } else {
        print('No image selected.');
      }
    });
    Navigator.of(context).pop();
  }

  _openCamera(BuildContext context) async {
    final picker = ImagePicker();

    final pickedFile = await picker.getImage(source: ImageSource.camera);

    setState(() {
      if (pickedFile != null) {
        imageFile = File(pickedFile.path);
      } else {
        print('No image selected.');
      }
    });
    Navigator.of(context).pop();
  }

  Future<void> _showChoiceDialog(BuildContext context) {
    return showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            title: Text("Select an Option :"),
            content: SingleChildScrollView(
              child: ListBody(
                children: <Widget>[
                  RaisedButton(
                    onPressed: () {
                      _openGallery(context);
                    },
                    child: Text("Gallery"),
                  ),
                  RaisedButton(
                    onPressed: () {
                      _openCamera(context);
                    },
                    child: Text("Camera"),
                  )
                ],
              ),
            ),
          );
        });
  }

  Widget _checkimageprofile() {
    if (imageFile == null) {
      return Container(
        width: 230,
        height: 230,
        child: ClipRRect(
          borderRadius: BorderRadius.circular(150),
          child: Container(
            color: Color(0xFF5B2B83),
            child: Icon(
              Icons.person,
              size: 200,
              color: Color(0xFFFFFFFF),
            ),
          ),
        ),
      );
    } else {
      return Container(
        width: 230,
        height: 230,
        child: ClipRRect(
          borderRadius: BorderRadius.circular(150),
          child: Image.file(
            imageFile,
            fit: BoxFit.cover,
          ),
        ),
      );
    }
  }

  Widget _photoicon() {
    return Container(
      width: 50,
      height: 50,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(150),
        child: Container(
          color: Color(0xFF5B2B83),
          child: Icon(
            Icons.photo_camera,
            color: Color(0xFFFFFFFF),
          ),
        ),
      ),
    );
  }

  Widget _imageprofile(BuildContext context) {
    return Container(
      width: 250,
      height: 250,
      child: Stack(
        children: <Widget>[
          Container(
            width: 250,
            height: 250,
            child: CircleAvatar(
              radius: 100,
              backgroundColor: Color(0xFFDADADA),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  _checkimageprofile(),
                ],
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomRight,
            child: Container(
              width: 65,
              height: 65,
              child: CircleAvatar(
                radius: 100,
                backgroundColor: Color(0xFFDADADA),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    _photoicon(),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _socialnetworkslist(Color itemcolor, Text itemtext) {
    return Container(
      padding: new EdgeInsets.all(5.0),
      child: RaisedButton(
        onPressed: () {},
        textColor: Color(0xFFFFFFFF),
        color: itemcolor,
        child: Container(
          width: 250,
          height: 35,
          child: Stack(
            children: <Widget>[
              Align(
                alignment: Alignment.center,
                child: Text(
                  itemtext.data,
                  style: TextStyle(fontSize: 20),
                ),
              ),
              Align(
                alignment: Alignment.centerRight,
                child: Row(
                  children: <Widget>[
                    /*Text(
                      '1.000',
                      style: TextStyle(fontSize: 14),
                    ),*/
                    Icon(
                      Icons.view_agenda,
                      color: Color(0xFFFFFFFF),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Profile"),
      ),
      body: Container(
        child: Center(
          child: Container(
            child: Column(
              children: <Widget>[
                FlatButton(
                  padding: new EdgeInsets.all(25.0),
                  onPressed: () {
                    _showChoiceDialog(context);
                  },
                  child: _imageprofile(context),
                ),
                Text(
                  "AYEUEIFJEZFI POEHU",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20.0),
                ),
                Container(
                  padding: new EdgeInsets.all(25.0),
                  child: Column(
                    children: <Widget>[
                      _socialnetworkslist(Color(0xFF4267B2), Text("Facebook")),
                      _socialnetworkslist(Color(0xFF405DE6), Text("Instagram")),
                      _socialnetworkslist(Color(0xFF1DA1F2), Text("Twitter")),
                      _socialnetworkslist(Color(0xFF2867B2), Text("LinkedIn")),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
