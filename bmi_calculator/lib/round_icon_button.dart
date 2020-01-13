import 'package:flutter/material.dart';

class RoundIconButton extends StatelessWidget {
  final Icon icon;
  final Function behavior;
  RoundIconButton({@required this.icon, @required this.behavior});

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      constraints: BoxConstraints.tightFor(height: 56.0, width: 56.0),
      elevation: 10,
      disabledElevation: 6,
      onPressed: this.behavior,
      child: this.icon,
      shape: CircleBorder(),
      fillColor: Color(0xFF4C4F5E),
    );
  }
}
