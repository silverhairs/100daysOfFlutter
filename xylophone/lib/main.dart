import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';
import 'dart:math';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatefulWidget {
  @override
  _XylophoneAppState createState() => _XylophoneAppState();
}

class _XylophoneAppState extends State<XylophoneApp> {
  int audios = 1;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Center(
            child: FlatButton(
              child: Text('Click Me'),
              onPressed: () {
                final player = AudioCache();
                player.play('note$audios.wav');
                setState(() {
                  audios = Random().nextInt(7)+1;
                });
              },
            ),
          ),
        ),
      ),
    );
  }
}
