import 'dart:math';
import 'package:flutter/material.dart';

void main() {
  return runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          centerTitle: true,
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
  int leftbuttonnumber = 5;
  int rightbuttonnumber = 2;

  void dicechanged() {
    setState(() {
      leftbuttonnumber = Random().nextInt(6) + 1;
      rightbuttonnumber = Random().nextInt(6) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: <Widget>[
          Expanded(
            child: FlatButton(
              onPressed: () {
                dicechanged();
              },
              child: Image.asset("images/dice$leftbuttonnumber.png"),
            ),
          ),
          Expanded(
            child: FlatButton(
              onPressed: () {
                dicechanged();
              },
              child: Image.asset("images/dice$rightbuttonnumber.png"),
            ),
          ),
        ],
      ),
    );
  }
}
