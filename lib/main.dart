// ignore_for_file: prefer_const_constructors, unnecessary_brace_in_string_interps, prefer_const_literals_to_create_immutables

import 'package:firstapp2/pages/calc.dart';
import 'package:firstapp2/pages/contact.dart';
import 'package:firstapp2/pages/home.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  //const MyApp({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: MainPage());
  }
}

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int _currentIndex = 0;
  final tabs = [HomePage(), CalculatePage(), ContactPage()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Calculator Application",
            style: TextStyle(fontFamily: "Maaja", fontSize: 40)),
        backgroundColor: Colors.redAccent[400],
      ),
      body: tabs[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Homepage"),
          BottomNavigationBarItem(
              icon: Icon(Icons.calculate), label: "Calculate"),
          BottomNavigationBarItem(
              icon: Icon(Icons.contact_mail), label: "Contact")
        ],
        onTap: (index) {
          setState(() {
            print(index);
            _currentIndex = index;
          });
        },
        backgroundColor: Color(4294763756),
        selectedItemColor: Colors.redAccent[400],
        unselectedItemColor: Colors.pink[200],
      ),
    );
  }
}
