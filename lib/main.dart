import 'package:flutter/material.dart';

import 'home.dart';
import 'search.dart';
import 'forum.dart';
import 'profile.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'KPOP Community',
        theme: ThemeData(
          primaryColor: Colors.pinkAccent,
          accentColor: Colors.lightBlueAccent,
          textTheme: TextTheme(bodyText2: TextStyle(color: Colors.deepPurpleAccent)),
        ),
        home: Homepage(),
    );
  }
}

class Homepage extends StatefulWidget {
  Homepage({Key key}) : super(key: key);
  @override
  _HomepageState createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  int _currentIndex = 0;
  final List<Widget> _children = [
    HomePage(),
    SearchPage(Colors.blue),
    ForumPage(Colors.deepPurpleAccent),
    ProfilePage()
  ];

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('KPOP Community'),
      ),
      body: _children[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        currentIndex: _currentIndex,
        selectedItemColor: Colors.pink,
        onTap: onTabTapped,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: 'Search',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.forum),
            label: 'Forums',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profile',
          ),
        ],
      ),
    );
  }

  void onTabTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }
}