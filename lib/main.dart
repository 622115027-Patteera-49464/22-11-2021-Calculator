// ignore_for_file: prefer_const_constructors, unnecessary_brace_in_string_interps

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
  TextEditingController quantity = TextEditingController();
  TextEditingController price = TextEditingController();
  TextEditingController result = TextEditingController();

  @override
  void initState() {
    //
    super.initState();
    result.text =
        "Buy x Pusheen the cat. Because it cost x THB, you have to pay x THB";
  }

  @override
  Widget build(BuildContext context) {
/*     return Container();
  } */

    return ListView(
      children: [
        Center(
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: Column(
              children: [
                Image.asset(
                  "assets/images/pusheen_hi.jpg",
                  width: 250,
                  height: 250,
                ),
                Text(
                  "Calculator Program",
                  style: TextStyle(
                      fontFamily: "Maaja",
                      fontSize: 55,
                      color: Colors.pink,
                      decoration: TextDecoration.underline,
                      decorationStyle: TextDecorationStyle.wavy
                      ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextField(
                    controller: quantity,
                    decoration: InputDecoration(
                        labelText: "Pusheen The Cat Amount",
                        border: OutlineInputBorder()),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextField(
                    controller: price,
                    decoration: InputDecoration(
                        labelText: "Pusheen The Cat Price",
                        border: OutlineInputBorder()),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: ElevatedButton(
                    onPressed: () {
                      var cal = double.parse(quantity.text) *
                          double.parse(price.text);
                      print(
                          "Pusheen the cat quantity: ${quantity.text}, Total: ${cal} THB");

                      setState(() {
                        result.text =
                            "Buy ${quantity.text} Pusheen the cat. Because it cost ${price.text} THB, you have to pay ${cal} THB";
                      });
                    },
                    child: Text("CALCULATE"),
                    style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all(Colors.pink),
                        padding: MaterialStateProperty.all(
                            EdgeInsets.fromLTRB(50, 20, 50, 20))),
                  ),
                ),
                Text(
                  result.text,
                  style: TextStyle(color: Colors.green[700], fontSize: 20),
                )
              ],
            ),
          ),
        )
      ],
    );
  }
}
