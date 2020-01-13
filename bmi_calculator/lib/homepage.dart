import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

import './icon_content.dart';
import './layout_card.dart';
import './constants.dart';
import './round_icon_button.dart';
import './result/result.dart';

enum Gender { male, female }

class Homepage extends StatefulWidget {
  @override
  _HomepageState createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  Color maleCardColor = kInactiveColor;
  Color femaleCardColor = kActiveColor;

  Gender selectedGender;
  double currentHeight = 165.0;
  double currentWeight = 45.0;
  int currentAge = 14;

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
                    SliderTheme(
                      data: SliderTheme.of(context).copyWith(
                        inactiveTrackColor: Color(0xFF8D8E98),
                        thumbShape:
                            RoundSliderThumbShape(enabledThumbRadius: 16.0),
                        overlayShape:
                            RoundSliderOverlayShape(overlayRadius: 32.0),
                        activeTrackColor: Colors.white,
                        thumbColor: Color(0xFFEB1555),
                        overlayColor: Color(0x29EB1555),
                      ),
                      child: Slider(
                        value: double.parse(currentHeight.toStringAsFixed(1)),
                        min: 110,
                        max: 250,
                        onChanged: (double newValue) {
                          setState(() {
                            currentHeight =
                                double.parse(newValue.toStringAsFixed(1));
                          });
                        },
                      ),
                    )
                  ],
                ),
              ),
            ),
            Expanded(
              child: Row(
                children: <Widget>[
                  Expanded(
                    child: LayoutCard(
                      background: kActiveColor,
                      layoutCardChild: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Text(
                            'WEIGHT',
                            style: GoogleFonts.sourceCodePro(
                              textStyle: kLabelTextStyle,
                            ),
                          ),
                          Text(
                            '${currentWeight.round()}',
                            style: GoogleFonts.sourceCodePro(
                              textStyle: kNumbersTextStyle,
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: <Widget>[
                              RoundIconButton(
                                icon: Icon(Icons.remove),
                                behavior: () {
                                  setState(() {
                                    currentWeight > 20
                                        ? currentWeight--
                                        : currentWeight = currentWeight;
                                  });
                                },
                              ),
                              RoundIconButton(
                                icon: Icon(Icons.add),
                                behavior: () {
                                  setState(() {
                                    currentWeight < 220
                                        ? currentWeight++
                                        : currentWeight = currentWeight;
                                  });
                                },
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                  Expanded(
                    child: LayoutCard(
                      background: kActiveColor,
                      layoutCardChild: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Text(
                            'AGE',
                            style: GoogleFonts.sourceCodePro(
                              textStyle: kLabelTextStyle,
                            ),
                          ),
                          Text(
                            '$currentAge',
                            style: GoogleFonts.sourceCodePro(
                              textStyle: kNumbersTextStyle,
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: <Widget>[
                              RoundIconButton(
                                icon: Icon(Icons.remove),
                                behavior: () {
                                  setState(() {
                                    currentAge > 12
                                        ? currentAge--
                                        : currentAge = currentAge;
                                  });
                                },
                              ),
                              RoundIconButton(
                                icon: Icon(Icons.add),
                                behavior: () {
                                  setState(() {
                                    currentAge < 105
                                        ? currentAge++
                                        : currentAge = currentAge;
                                  });
                                },
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
            GestureDetector(
              child: Container(
                color: kBottomContainerColor,
                margin: EdgeInsets.only(top: 10.0),
                width: double.infinity,
                height: kBottomContainerHeight,
                child: Center(
                  child: Text(
                    'CALCULATE',
                    style: GoogleFonts.sourceCodePro(
                      textStyle: kBottomLabel,
                    ),
                  ),
                ),
              ),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Result()),
                );
              },
            )
          ],
        ),
      ),
    );
  }
}
