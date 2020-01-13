import 'dart:math';
import 'package:flutter/foundation.dart';

class Calculate {
  final double weight;
  final double height;
  Calculate({@required this.height, @required this.weight});

  double _bmi;

  double calculator() {
    _bmi = weight / pow(height / 100, 2);
    return double.parse(_bmi.toStringAsFixed(1));
  }

  String getResult() {
    if (_bmi >= 25) {
      return 'OVERWEIGHT';
    } else if (_bmi > 18.5) {
      return 'NORMAL';
    } else {
      return 'UNDERWEIGHT';
    }
  }

  String interpretation() {
    if (_bmi >= 25) {
      return 'You have a higher than normal body weight, try to exercise more ';
    } else if (_bmi > 18.5) {
      return 'Your weight is normal, 😉️';
    } else {
      return 'Your weight is lower than normal, try to eat more 🍖️';
    }
  }
}
