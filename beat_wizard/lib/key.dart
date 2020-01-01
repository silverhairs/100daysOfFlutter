import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

class BeatKey extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        Row(
          children: <Widget>[
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.purple,
                  borderRadius: BorderRadius.circular(10),
                ),
                margin:
                    EdgeInsets.only(top: 120, left: 20, right: 20, bottom: 20),
                height: 120.0,
                child: FlatButton(
                  onPressed: () {
                    AudioCache player = AudioCache();
                    player.play('superBeatt.wav');
                  },
                ),
              ),
            ),
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.blue,
                  borderRadius: BorderRadius.circular(10),
                ),
                margin:
                    EdgeInsets.only(top: 120, left: 20, right: 20, bottom: 20),
                height: 120.0,
                child: FlatButton(
                  onPressed: () {
                    AudioCache player = AudioCache();
                    player.play('triangle.wav');
                  },
                ),
              ),
            ),
          ],
        ),
        Row(
          children: <Widget>[
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.teal,
                  borderRadius: BorderRadius.circular(10),
                ),
                margin: EdgeInsets.symmetric(vertical: 20, horizontal: 20),
                height: 120.0,
                child: FlatButton(
                  onPressed: () {
                    AudioCache player = AudioCache();
                    player.play('violin.wav');
                  },
                ),
              ),
            ),
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.orange,
                  borderRadius: BorderRadius.circular(10),
                ),
                margin: EdgeInsets.symmetric(vertical: 20, horizontal: 20),
                height: 120.0,
                child: FlatButton(
                  onPressed: () {
                    AudioCache player = AudioCache();
                    player.play('bass.wav');
                  },
                ),
              ),
            ),
          ],
        ),
        Row(
          children: <Widget>[
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.cyan,
                  borderRadius: BorderRadius.circular(10),
                ),
                margin: EdgeInsets.symmetric(vertical: 20, horizontal: 20),
                height: 120.0,
                child: FlatButton(
                  onPressed: () {
                    AudioCache player = AudioCache();
                    player.play('pop_dance.wav');
                  },
                ),
              ),
            ),
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.yellow,
                  borderRadius: BorderRadius.circular(10),
                ),
                margin: EdgeInsets.symmetric(vertical: 20, horizontal: 20),
                height: 120.0,
                child: FlatButton(
                  onPressed: () {
                    AudioCache player = AudioCache();
                    player.play('beat2.wav');
                  },
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
