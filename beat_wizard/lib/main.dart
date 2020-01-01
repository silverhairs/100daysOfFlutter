import 'package:audioplayers/audio_cache.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';

Future main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
  runApp(BeatWizzard());
}

class BeatWizzard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(
        accentColor: Color(0x9835FF),
        textTheme: ThemeData.dark().textTheme.copyWith(
              body1: GoogleFonts.kulimPark(
                textStyle: TextStyle(fontSize: 20),
              ),
              title: GoogleFonts.kulimPark(
                textStyle: TextStyle(fontWeight: FontWeight.bold, fontSize: 22),
              ),
            ),
        appBarTheme: AppBarTheme(
          textTheme: ThemeData.dark().textTheme.copyWith(
                title: GoogleFonts.openSans(
                    fontSize: 20, fontWeight: FontWeight.bold),
              ),
        ),
      ),
      home: Homepage(),
    );
  }
}

class Homepage extends StatefulWidget {
  @override
  _HomepageState createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0x242132),
      appBar: AppBar(
        title: Text('Beat Wizzard'),
      ),
      body: SafeArea(
        child: Column(
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
                    margin: EdgeInsets.only(
                        top: 120, left: 20, right: 20, bottom: 20),
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
                    margin: EdgeInsets.only(
                        top: 120, left: 20, right: 20, bottom: 20),
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
        ),
      ),
    );
  }
}
