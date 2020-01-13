import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../constants.dart';

class CalculateBanner extends StatelessWidget {
  final Function onPress;
  final String text;
  CalculateBanner({@required this.text, @required this.onPress});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Container(
        color: kBottomContainerColor,
        margin: EdgeInsets.only(top: 10.0),
        width: double.infinity,
        height: kBottomContainerHeight,
        child: Center(
          child: Text(
            this.text,
            style: GoogleFonts.sourceCodePro(
              textStyle: kBottomLabel,
            ),
          ),
        ),
      ),
      onTap: this.onPress,
    );
  }
}