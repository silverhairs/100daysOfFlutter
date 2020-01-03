import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import './icon_content.dart';
import './layout_card.dart';

const double bottomContainerHeight = 80.0;
const Color activeColor = Color(0xFF1D1E33);
const Color inactiveColor = Color(0xFF111328);
const Color bottomContainerColor = Color(0xFFEB1555);

enum Gender { male, female }

class Homepage extends StatefulWidget {
  @override
  _HomepageState createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  Color maleCardColor = inactiveColor;
  Color femaleCardColor = activeColor;

  //0 = male, 1 = female
  void _updateColor(Gender gender) {
    if (gender == Gender.male) {
      if (maleCardColor == activeColor) {
        maleCardColor = inactiveColor;
        femaleCardColor = activeColor;
      } else {
        maleCardColor = activeColor;
        femaleCardColor = inactiveColor;
      }
    } else if (gender == Gender.female) {
      if (femaleCardColor == activeColor) {
        femaleCardColor = inactiveColor;
        maleCardColor = activeColor;
      } else {
        femaleCardColor = activeColor;
        maleCardColor = inactiveColor;
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALTULATOR'),
      ),
      body: SafeArea(
        child: Column(
          children: <Widget>[
            Expanded(
              child: Row(
                children: <Widget>[
                  Expanded(
                    child: GestureDetector(
                      onTap: () {
                        setState(() {
                          _updateColor(Gender.male);
                        });
                      },
                      child: LayoutCard(
                        background: maleCardColor,
                        layoutCardChild: IconContent(
                            label: 'MALE', icon: FontAwesomeIcons.mars),
                      ),
                    ),
                  ),
                  Expanded(
                    child: GestureDetector(
                      onTap: () {
                        setState(() {
                          _updateColor(Gender.female);
                        });
                      },
                      child: LayoutCard(
                        background: femaleCardColor,
                        layoutCardChild: IconContent(
                          label: 'FEMALE',
                          icon: FontAwesomeIcons.venus,
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
            Expanded(
              child: LayoutCard(background: activeColor),
            ),
            Expanded(
              child: Row(
                children: <Widget>[
                  Expanded(
                    child: LayoutCard(background: activeColor),
                  ),
                  Expanded(
                    child: LayoutCard(background: activeColor),
                  )
                ],
              ),
            ),
            Container(
              color: bottomContainerColor,
              margin: EdgeInsets.only(top: 10.0),
              width: double.infinity,
              height: bottomContainerHeight,
            )
          ],
        ),
      ),
    );
  }
}
