import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../constants.dart';
import '../components/calculate_banner.dart';

class Result extends StatelessWidget {
  final double result;
  final String resultText;
  final String comment;
  Result({
    @required this.result,
    @required this.resultText,
    @required this.comment,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Result'),
      ),
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Container(
              alignment: Alignment.bottomLeft,
              margin: EdgeInsets.only(
                top: 10,
                left: 20,
              ),
              child: Text(
                'Your Result',
                style: GoogleFonts.sourceCodePro(textStyle: kResultTextStyle),
              ),
            ),
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                  color: kActiveColor,
                  borderRadius: BorderRadius.circular(10),
                ),
                margin: EdgeInsets.all(20),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: <Widget>[
                    Text(
                      '$resultText',
                      style: GoogleFonts.sourceCodePro(textStyle: kStatus),
                      textAlign: TextAlign.center,
                    ),
                    Text(
                      '$result',
                      style: GoogleFonts.sourceCodePro(
                        textStyle: kResultNumber,
                      ),
                      textAlign: TextAlign.center,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        '$comment',
                        style: GoogleFonts.sourceCodePro(
                          textStyle: kAdvice,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    )
                  ],
                ),
              ),
            ),
            CalculateBanner(
              text: 'RE-CALCULATE',
              onPress: () {
                Navigator.pop(context);
              },
            )
          ],
        ),
      ),
    );
  }
}
