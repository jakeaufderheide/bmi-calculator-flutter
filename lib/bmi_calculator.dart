import 'dart:math';

import 'package:flutter/material.dart';
import 'result.dart';

class BmiCalculator {
  BmiCalculator({@required this.weight, @required this.height});
  final double weight;
  final double height;

  Result Calculate() {
    var bmi = 703 * (weight / (pow(height, 2)));
    return Result(bmi);
  }
}
