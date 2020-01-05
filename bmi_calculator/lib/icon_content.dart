import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import './constants.dart';

class IconContent extends StatelessWidget {
  final IconData icon;
  final String label;
  IconContent({this.icon, @required this.label});
 
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Icon(
          this.icon,
          size: 80.0,
        ),
        SizedBox(height: 15.0),
        Text(
          this.label,
          style: GoogleFonts.sourceCodePro(textStyle: kLabelTextStyle),
        )
      ],
    );
  }
}
