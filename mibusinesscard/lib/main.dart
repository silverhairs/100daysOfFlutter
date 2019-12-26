import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.teal,
        body: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              CircleAvatar(
                radius: 50.0,
                backgroundImage: AssetImage('images/silverHead.jpg'),
              ),
              Text(
                'Boris Kayiranga',
                textAlign: TextAlign.center,
                style: GoogleFonts.pacifico(
                  textStyle: TextStyle(
                      fontSize: 40,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                ),
              ),
              Text(
                'FLUTTER DEVELOPER',
                textAlign: TextAlign.center,
                style: GoogleFonts.sourceSansPro(
                  textStyle: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                      color: Colors.teal[100],
                      letterSpacing: 2.5),
                ),
              ),
              SizedBox(
                height: 10,
                width: 150,
                child: Divider(
                  color: Colors.teal[100],
                ),
              ),
              Card(
                color: Colors.white,
                margin: EdgeInsets.all(20),
                child: Padding(
                  padding: EdgeInsets.all(5),
                  child: ListTile(
                    leading: Icon(
                      Icons.phone,
                      color: Colors.teal,
                    ),
                    title: Text(
                      '+250 789 159 557',
                      style: GoogleFonts.sourceSansPro(
                        textStyle: TextStyle(
                          fontSize: 20,
                          color: Colors.teal[900],
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              Card(
                elevation: 8,
                color: Colors.white,
                margin: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                child: Padding(
                  padding: EdgeInsets.all(5),
                  child: ListTile(
                    leading: Icon(
                      Icons.email,
                      color: Colors.teal,
                    ),
                    title: Text(
                      'boriskayienzo@gmail.com',
                      style: GoogleFonts.sourceSansPro(
                        textStyle: TextStyle(
                          fontSize: 20,
                          color: Colors.teal[900],
                        ),
                      ),
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
