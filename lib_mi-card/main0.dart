import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.teal,
        body: SafeArea(
          child: Container(
            height: 100.0,
            width: 100.0,
            // margin: EdgeInsets.all(20.0),
            // margin: EdgeInsets.symmetric(vertical: 50.0, horizontal: 50.0),
            // margin: EdgeInsets.fromLTRB(30.0, 10.0, 50.0, 20.0),
            margin: EdgeInsets.only(left: 30),
            padding: EdgeInsets.all(20.0),
            color: Colors.white,
            child: Text('Container 1'),
            //since container is single child layout widget we cannot add another
            //image widget or any other widgets here
          ),
          //rows and columns
        ),
      ),
    );
  }
}
