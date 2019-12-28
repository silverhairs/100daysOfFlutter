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
  int lefDiceNumber = 1;
  int rightDice = 1;
  void _diceChangeHandler() {
    setState(() {
      lefDiceNumber = Random().nextInt(6) + 1;
      rightDice = Random().nextInt(6) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: <Widget>[
          Expanded(
            child: FlatButton(
              child: Image.asset('images/dice$lefDiceNumber.png'),
              onPressed: _diceChangeHandler,
            ),
          ),
          Expanded(
            child: FlatButton(
              child: Image.asset('images/dice$rightDice.png'),
              onPressed: _diceChangeHandler,
            ),
          )
        ],
      ),
    );
  }
}
