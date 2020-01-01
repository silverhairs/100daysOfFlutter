import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import './key.dart';

Future main() async {
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
        child: BeatKey(),
      ),
    );
  }
}
