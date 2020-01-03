import 'package:flutter/material.dart';

class LayoutCard extends StatelessWidget {
  final Color background;
  final Widget layoutCardChild;

  LayoutCard({@required this.background, this.layoutCardChild});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(15.0),
      decoration: BoxDecoration(
        color: this.background,
        borderRadius: BorderRadius.circular(10.0),
      ),
      child: this.layoutCardChild,
    );
  }
}
