import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

const TextStyle labelTextStyle = TextStyle(
  fontSize: 18.0,
  color: Color(0xFF8D8E98),
);

class IconContent extends StatelessWidget {
  final IconData icon;
  final String label;
  IconContent({@required this.icon, @required this.label});
 
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
          style: GoogleFonts.sourceCodePro(textStyle: labelTextStyle),
        )
      ],
    );
  }
}
