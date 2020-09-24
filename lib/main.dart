import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          title: Text('Dicee'),
          backgroundColor: Colors.red,
        ),
        body: DicePage(),
      ),
    ),
  );
}

class DicePage extends StatefulWidget {
  @override
  _DicePageState createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  int leftDiceNumber;
  int RightDiceNumber;
  @override
  void initState() {
  leftDiceNumber = 1;
  RightDiceNumber =1;
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: <Widget>[
          Expanded(
            child: FlatButton(
              child: Image.asset('images/dice${leftDiceNumber}.png'),
              onPressed: () {
               setState(() {
                 leftDiceNumber = Random().nextInt(6)+1;
               });
              },
            ),
          ),
          Expanded(
            child: FlatButton(
              child: Image.asset('images/dice${RightDiceNumber}.png'),
              onPressed: () {
                setState(() {
                  RightDiceNumber = Random().nextInt(6)+1;
                });
              },
            ),
          ),
        ],
      ),
    );
  }
}
