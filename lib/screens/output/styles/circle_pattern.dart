import 'dart:math';

import 'package:processing.dart/processing.dart';
import '../../../data/input_values.dart';

_drawcircle(double x, double y, double r) {
  circle(x, y, r);
  circle(x + r * cos(PI / 3), y + r * sin(PI / 3), r);
}

void simpleCirclePattern(InputValues vals) {
  final step = width / (vals.getAverageBetween(1, 40) * 25 + 5);

  stroke(0, 0, 0, 100);
  ellipseMode(CORNER);

  for (double i = -2 * step; i < width; i += step) {
    for (double j = -2 * step; j < height; j += step * 2 * sin(PI / 3)) {
      _drawcircle(i, j, step);
    }
  }
}

void randomCirclePattern(InputValues vals) {
  final step = width / vals.getAverageIntBetween(5, 30);

  ellipseMode(CORNER);

  for (double i = -2 * step; i < width; i += step) {
    for (double j = -2 * step; j < height; j += step * 2 * sin(PI / 3)) {
      fill(0, 0, 0, vals.getBetween(0, 100).round());
      _drawcircle(i, j, step);
    }
  }
}

void spacedCirclePattern(InputValues vals) {
  final step = width / (vals.getAverageBetween(10, 15) * 25 + 5);

  ellipseMode(CORNER);

  drawcircle(double x, double y, double r) {
    circle(x, y, r / 2);
    circle(x + r * cos(PI / 3), y + r * sin(PI / 3), r / 2);
  }

  for (double i = -2 * step; i < width; i += step) {
    for (double j = -2 * step; j < height; j += step * 2 * sin(PI / 3)) {
      fill(0, 0, 0, random(20, 200));
      drawcircle(i, j, step);
    }
  }
  //drawcircle(0, 0, 100);
}
