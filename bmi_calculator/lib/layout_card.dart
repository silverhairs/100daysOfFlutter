import 'package:flutter/material.dart';

class LayoutCard extends StatelessWidget {
  final Color background;
  final Widget layoutCardChild;
  final Function onPress;

  LayoutCard({@required this.background, @required this.layoutCardChild, this.onPress});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,
      child: Container(
        margin: EdgeInsets.all(15.0),
        decoration: BoxDecoration(
          color: this.background,
          borderRadius: BorderRadius.circular(10.0),
        ),
        child: this.layoutCardChild,
      ),
    );
  }
}
