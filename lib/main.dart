import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  return runApp(
    MyMaterialApp()
  );
}

class MyMaterialApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.blueGrey,
        appBar: AppBar(
          title: Text('Dice Roller'),
          backgroundColor: Colors.blueGrey[200],
        ),
        body: DicePage(),
      ),
    );
  }
}


class DicePage extends StatefulWidget {
  @override
  _DicePageState createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  int leftDiceNum = 1;
  int rightDiceNum = 1;

  void changeDiceFace(){
    leftDiceNum = Random().nextInt(6)+1;
    rightDiceNum = Random().nextInt(6)+1;
    print('Left: '+leftDiceNum.toString()+ ' | Right: '+ rightDiceNum.toString());
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: <Widget>[
          Expanded(
            child: FlatButton(
              onPressed: () {
                setState(() {
                  changeDiceFace();
                });
              },
              child: Image.asset('images/dice$leftDiceNum.png'),
            ),
          ),
          Expanded(
            child: FlatButton(
              onPressed: () {
                setState(() {
                  changeDiceFace();
                });
              },
              child: Image.asset('images/dice$rightDiceNum.png'),
            ),
          ),
        ],
      ),
    );
  }
}


