import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  final Map infos = {
    'name': 'Boris Kayiranga',
    'position': 'Flutter Developer',
    'tel': '+250 789 159 557',
    'email': 'boriskayienzo@gmail.com',
  };

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.lightBlue,
        body: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              CircleAvatar(
                radius: 50,
                backgroundImage: AssetImage('images/silverHead.jpg'),
              ),
              Text(
                infos['name'],
                style: GoogleFonts.pacifico(
                  textStyle: TextStyle(
                    fontSize: 40,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
              ),
              Text(
                infos['position'].toUpperCase(),
                style: GoogleFonts.sourceSansPro(
                  textStyle: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.lightBlue[900],
                  ),
                ),
              ),
              SizedBox(
                height: 20,
                width: 150,
                child: Divider(
                  color: Colors.lightBlue[900],
                ),
              ),
              Card(
                margin: EdgeInsets.symmetric(horizontal: 20),
                elevation: 10,
                color: Colors.white,
                child: Container(
                  width: double.infinity,
                  margin: EdgeInsets.symmetric(horizontal: 10),
                  child: ListTile(
                    leading: Icon(
                      Icons.phone,
                      color: Colors.lightBlue[900],
                    ),
                    title: Text(
                      infos['tel'],
                      style: GoogleFonts.sourceSansPro(
                        textStyle: TextStyle(
                          fontSize: 20,
                          color: Colors.lightBlue[900],
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 20),
              Card(
                elevation: 10,
                margin: EdgeInsets.symmetric(horizontal: 20),
                color: Colors.white,
                child: Container(
                  width: double.infinity,
                  child: ListTile(
                    leading: Icon(
                      Icons.email,
                      color: Colors.lightBlue[900],
                    ),
                    title: Text(
                      infos['email'],
                      style: GoogleFonts.sourceSansPro(
                        textStyle: TextStyle(
                          fontSize: 20,
                          color: Colors.blue[900],
                        ),
                      ),
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
