// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  //const MyApp({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Calculator Application"),
          backgroundColor: Colors.pink,
        ),
        body: Home(),
      ),
    );
  }
}

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
/*     return Container();
  } */

    return ListView(
      children: [
        Center(
          child: Padding(
            padding: const EdgeInsets.all(30.0),
            child: Column(
              children: [
                Image.asset(
                  "pusheen_hi.jpg",
                  width: 350,
                  height: 350,
                ),
                Text(
                  "Calculator Program",
                  style: TextStyle(
                      fontFamily: "Maaja",
                      fontSize: 100,
                      color: Colors.pink,
                      decoration: TextDecoration.overline),
                ),
                TextField(
                  decoration: InputDecoration(
                      labelText: "Apple Amount", border: OutlineInputBorder()),
                ),
                Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: ElevatedButton(
                    onPressed: () {},
                    child: Text("CALCULATE"),
                    style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all(Colors.pink),
                        padding: MaterialStateProperty.all(
                            EdgeInsets.fromLTRB(50, 20, 50, 20))),
                  ),
                ),
                Text(
                  "Buy a Pusheen cat. Because it cost 999,999 THB, you have to pay 999,999 THB",
                  style: TextStyle(color: Colors.red[600]),
                )
              ],
            ),
          ),
        )
      ],
    );
  }
}
