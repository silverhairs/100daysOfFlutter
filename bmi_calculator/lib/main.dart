import 'package:flutter/material.dart';

import './screens/homepage.dart';

void main() => runApp(BMICalculator());

class BMICalculator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(
        primaryColor: Color(0xFF0A0E21),
        scaffoldBackgroundColor: Color(0xFFA0E21),
        accentColor: Colors.purple,
      ),
      home: Homepage(),
    );
  }
}

