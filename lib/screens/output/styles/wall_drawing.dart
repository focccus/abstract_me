import 'package:processing.dart/processing.dart';

import '../../../data/input_values.dart';

void wallDrawing(InputValues vals) {
  final int lines = vals.getBetween(5, 12).round();
  stroke(0);
  strokeWeight(width * 0.002);

  for (double i = 0; i < height; i += height / lines) {
    line(0, i, width, i);
  }
  for (double i = 0; i < width; i += width / lines) {
    line(i, 0, i, height);
  }
  final circleRStep = width / lines / 2;
  for (double i = width / 2 + circleRStep; i > 0; i -= circleRStep) {
    circle(0, 0, i);
    circle(0, height, i);
    circle(width, height, i);
    circle(width, 0, i);
    circle(width / 2, height / 2, i);
  }
}
