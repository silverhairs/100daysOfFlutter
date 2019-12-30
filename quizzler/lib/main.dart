import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import './quizz_brain.dart';

void main() => runApp(QuizzApp());

var quizzBrain = QuizzBrain();

class QuizzApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: QuizzHome(),
    );
  }
}

class QuizzHome extends StatefulWidget {
  @override
  _QuizzHomeState createState() => _QuizzHomeState();
}

class _QuizzHomeState extends State<QuizzHome> {
  List<Widget> scoreIcons = [];
  bool correctAnswer;

  void checkAnswer(bool answer) {
    setState(() {
      if ((answer) == quizzBrain.getQuestionAnswer) {
        scoreIcons.add(Icon(Icons.check, color: Colors.green));
      } else {
        scoreIcons.add(Icon(Icons.close, color: Colors.red));
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Expanded(
              flex: 4,
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Center(
                  child: Text(
                    quizzBrain.getQuestionText,
                    textAlign: TextAlign.center,
                    style: GoogleFonts.sourceSansPro(
                      textStyle: TextStyle(
                        fontSize: 22,
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ),
            ),
            Expanded(
              child: Container(
                margin: EdgeInsets.all(10),
                child: FlatButton(
                  color: Colors.green,
                  child: Text(
                    'True',
                    style: GoogleFonts.sourceSansPro(
                      textStyle: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  onPressed: () {
                    correctAnswer = true;
                    checkAnswer(correctAnswer);
                    quizzBrain.nextQuestion();
                  },
                ),
              ),
            ),
            Expanded(
              child: Container(
                margin: EdgeInsets.all(10),
                child: FlatButton(
                  color: Colors.red,
                  child: Text(
                    'False',
                    style: GoogleFonts.sourceSansPro(
                      textStyle: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  onPressed: () {
                    correctAnswer = false;
                    checkAnswer(correctAnswer);
                    quizzBrain.nextQuestion();
                  },
                ),
              ),
            ),
            Expanded(
              child: SafeArea(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: scoreIcons,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
