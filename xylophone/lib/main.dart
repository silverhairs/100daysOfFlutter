import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  void playSound(int counter) {
    final player = AudioCache();
    player.play('note$counter.wav');
  }

  Widget touch({Color color, int soundNumber}) {
    return Expanded(
      child: FlatButton(
        color: color,
        onPressed: () {
          playSound(soundNumber);
        },
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              touch(color: Colors.red, soundNumber: 1),
              touch(color: Colors.orange, soundNumber: 2),
              touch(color: Colors.yellow, soundNumber: 3),
              touch(color: Colors.green, soundNumber: 4),
              touch(color: Colors.teal, soundNumber: 5),
              touch(color: Colors.blue, soundNumber: 6),
              touch(color: Colors.purple, soundNumber: 7),
            ],
          ),
        ),
      ),
    );
  }
}
