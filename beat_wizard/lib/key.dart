import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

class BeatKey extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        Container(
          margin: EdgeInsets.only(top: 100.0),
          child: Row(
            children: <Widget>[
              Expanded(
                child: BeatButton(
                  background: Colors.blue,
                  beat: 'superBeatt.wav',
                ),
              ),
              Expanded(
                child: BeatButton(
                  background: Colors.teal,
                  beat: 'violin.wav',
                ),
              ),
            ],
          ),
        ),
        Row(
          children: <Widget>[
            Expanded(
              child: BeatButton(
                background: Colors.yellow,
                beat: 'pop_dance.wav',
              ),
            ),
            Expanded(
              child: BeatButton(
                background: Colors.orange,
                beat: 'bass.wav',
              ),
            ),
          ],
        ),
        Row(
          children: <Widget>[
            Expanded(
              child: BeatButton(
                background: Colors.green,
                beat: 'triangle.wav',
              ),
            ),
            Expanded(
              child: BeatButton(
                background: Colors.red,
                beat: 'beat2.wav',
              ),
            ),
          ],
        ),
      ],
    );
  }
}

class BeatButton extends StatelessWidget {
  final Color background;
  final String beat;

  BeatButton({
    @required this.background,
    @required this.beat,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: background,
        borderRadius: BorderRadius.circular(10),
      ),
      margin: EdgeInsets.symmetric(vertical: 20, horizontal: 20),
      height: 120.0,
      child: FlatButton(
        onPressed: () {
          AudioCache player = AudioCache();
          player.play(beat);
        },
      ),
    );
  }
}
