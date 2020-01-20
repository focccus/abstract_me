import 'dart:math';

import 'package:processing.dart/processing.dart';
import '../../../data/input_values.dart';

void spiral(InputValues vals) {
  final spread = vals.getBetween(0.01, 0.5);
  translate(width / 2, height / 2);
  for (int i = 1;
      i < sqrt(pow(width, 2) + pow(height, 2)) * 1 / (spread * 2);
      i++) {
    rotate(TWO_PI / 180);
    fill(0, 0, 0, vals.getBetween(10, 200).round());
    circle(i * spread, 0, 1);
  }
}

void goldenRatioSpiral(InputValues vals) {
  final spread = vals.getBetween(0.05, 1.0);
  translate(width / 2, height / 2);
  for (double i = 1;
      i < sqrt(pow(width, 2) + pow(height, 2)) * 5;
      i += spread) {
    rotate(TWO_PI * GRATIO);
    fill(0, 0, 0, vals.getBetween(0, 150).round());
    circle(i, 0, 1);
  }
}
