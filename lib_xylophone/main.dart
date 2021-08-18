import 'package:flutter/material.dart';
// import 'package:audioplayers/audioplayers.dart';
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  final player = AudioCache();
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.teal,
        appBar: AppBar(
          title: Center(
            child: Text('Xylophone'),
          ),
          backgroundColor: Colors.teal,
        ),
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Expanded(
                child: Container(
                  // height: 65.0,
                  color: Colors.red,
                  child: TextButton(
                    onPressed: () {
                      player.play('note1.wav');
                    },
                    child: Text(
                      'Click me',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
              ),
              Expanded(
                child: Container(
                  color: Colors.orange,
                  child: TextButton(
                    onPressed: () {
                      player.play('note2.wav');
                    },
                    child: Text(
                      'Click me',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
              ),
              Expanded(
                child: Container(
                  color: Colors.yellow,
                  child: TextButton(
                    onPressed: () {
                      player.play('note3.wav');
                    },
                    child: Text(
                      'Click me',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
              ),
              Expanded(
                child: Container(
                  color: Colors.green,
                  child: TextButton(
                    onPressed: () {
                      player.play('note4.wav');
                    },
                    child: Text(
                      'Click me',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
              ),
              Expanded(
                child: Container(
                  color: Colors.blue,
                  child: TextButton(
                    onPressed: () {
                      player.play('note5.wav');
                    },
                    child: Text(
                      'Click me',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
              ),
              Expanded(
                child: Container(
                  color: Colors.indigo,
                  child: TextButton(
                    onPressed: () {
                      player.play('note6.wav');
                    },
                    child: Text(
                      'Click me',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
              ),
              Expanded(
                child: Container(
                  color: Colors.deepPurple,
                  child: TextButton(
                    onPressed: () {
                      player.play('note7.wav');
                    },
                    child: Text(
                      'Click me',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

// child: TextButton(
// onPressed: () {
// // static AudioCache player = new AudioCache();
// final player = AudioCache();
// player.play('note1.wav');
// },
// child: Text('Click me'),
// ),

// TextButton(
// onPressed: () {
// player.play('note1.wav');
// },
// child: Container(height: 65.0, color: Colors.orange),
// ),
