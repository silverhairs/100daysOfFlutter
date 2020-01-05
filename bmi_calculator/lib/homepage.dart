import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

import './icon_content.dart';
import './layout_card.dart';
import './constants.dart';

enum Gender { male, female }

class Homepage extends StatefulWidget {
  @override
  _HomepageState createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  Color maleCardColor = kInactiveColor;
  Color femaleCardColor = kActiveColor;

  Gender selectedGender;
  double currentHeight = 180.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALTULATOR'),
      ),
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Expanded(
              child: Row(
                children: <Widget>[
                  Expanded(
                    child: LayoutCard(
                      onPress: () {
                        setState(() {
                          selectedGender = Gender.male;
                        });
                      },
                      background: selectedGender == Gender.male
                          ? kActiveColor
                          : kInactiveColor,
                      layoutCardChild: IconContent(
                          label: 'MALE', icon: FontAwesomeIcons.mars),
                    ),
                  ),
                  Expanded(
                    child: LayoutCard(
                      onPress: () {
                        setState(() {
                          selectedGender = Gender.female;
                        });
                      },
                      background: selectedGender == Gender.female
                          ? kActiveColor
                          : kInactiveColor,
                      layoutCardChild: IconContent(
                        label: 'FEMALE',
                        icon: FontAwesomeIcons.venus,
                      ),
                    ),
                  )
                ],
              ),
            ),
            Expanded(
              child: LayoutCard(
                background: kActiveColor,
                layoutCardChild: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      'HEIGHT',
                      style:
                          GoogleFonts.sourceCodePro(textStyle: kLabelTextStyle),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.baseline,
                      textBaseline: TextBaseline.alphabetic,
                      children: <Widget>[
                        Text(
                          '$currentHeight',
                          style: GoogleFonts.sourceCodePro(
                            textStyle: kNumbersTextStyle,
                          ),
                        ),
                        Text(
                          'cm',
                          style: kLabelTextStyle,
                        )
                      ],
                    ),
                    Slider(
                      value: double.parse(currentHeight.toStringAsFixed(1)),
                      min: 115,
                      max: 250,
                      activeColor: Color(0xFFEB1555),
                      inactiveColor: Color(0xFF8D8E98),
                      onChanged: (double newValue){
                        setState(() {
                          currentHeight = double.parse(newValue.toStringAsFixed(1));
                        });
                      },
                    )
                  ],
                ),
              ),
            ),
            Expanded(
              child: Row(
                children: <Widget>[
                  Expanded(
                    child: LayoutCard(background: kActiveColor),
                  ),
                  Expanded(
                    child: LayoutCard(background: kActiveColor),
                  )
                ],
              ),
            ),
            Container(
              color: kBottomContainerColor,
              margin: EdgeInsets.only(top: 10.0),
              width: double.infinity,
              height: kBottomContainerHeight,
            )
          ],
        ),
      ),
    );
  }
}
