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
  int leftDiceNumber = 1 + (Random().nextInt(6));
  int rightDiceNumber = 1 + (Random().nextInt(6));

  void generateDice() {
    setState(() {
      leftDiceNumber = 1 + (Random().nextInt(6));
      rightDiceNumber = 1 + (Random().nextInt(6));
    });
  }

  @override
  Widget build(BuildContext context) {
    // var leftDiceNumber = 1;

    return Center(
      child: Row(
        children: [
          Expanded(
            // flex: 2,
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: FlatButton(
                onPressed: () {
                  generateDice();
                  print(
                      'Left button pressed : $leftDiceNumber,$rightDiceNumber');
                },
                child: Image.asset('images/dice$leftDiceNumber.png'),
              ),
            ),
          ),
          Expanded(
            // flex: 1,
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: FlatButton(
                onPressed: () {
                  generateDice();
                  print(
                      'Right button pressed: $rightDiceNumber,$leftDiceNumber');
                },
                child: Image(
                  image: AssetImage('images/dice$rightDiceNumber.png'),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
