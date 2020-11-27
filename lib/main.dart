import 'package:flutter/material.dart';
import 'package:flutter_ui_designing/Messages.dart';
import 'package:flutter_ui_designing/Profile.dart';
import 'package:flutter_ui_designing/MyApp.dart';

void main() {
  runApp(
    MaterialApp(
      home: MyApp(),
    )
  );
}

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {

  int _currentIndex = 0;
  final List<Widget> _children = [
    Home(),
    Messages(Colors.blue),
    Profile(Colors.blueGrey)
  ];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("UI Designing"),
      ),
      body: _children[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        onTap: onTabTapped,
        currentIndex: _currentIndex, //this will be set when new tab is tapped
        items: [
          BottomNavigationBarItem(
              icon: Icon(Icons.home),
            label: "Home"
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.message),
              label: "Messages"
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.person),
              label: "Home"
          )
        ],
      ),
    );
  }

  void onTabTapped(int index){
    setState(() {
      _currentIndex = index;
    });
  }
}


