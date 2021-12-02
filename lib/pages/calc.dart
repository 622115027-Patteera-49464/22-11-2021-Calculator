import 'package:flutter/material.dart';

class CalculatePage extends StatefulWidget {
  const CalculatePage({Key? key}) : super(key: key);

  @override
  _CalculatePageState createState() => _CalculatePageState();
}

class _CalculatePageState extends State<CalculatePage> {
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
                      color: Colors.redAccent[400],
                      decoration: TextDecoration.underline,
                      decorationStyle: TextDecorationStyle.wavy),
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
                        backgroundColor: MaterialStateProperty.all(Colors.redAccent[400]),
                        padding: MaterialStateProperty.all(
                            EdgeInsets.fromLTRB(50, 20, 50, 20))),
                  ),
                ),
                Text(
                  result.text,
                  style: TextStyle(
                      fontFamily: "Maaja",
                      color: Colors.green[700],
                      fontSize: 30),
                )
              ],
            ),
          ),
        )
      ],
    );
  }
}
