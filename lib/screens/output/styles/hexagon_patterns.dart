import 'dart:math';

import 'package:processing.dart/processing.dart';
import '../../../data/input_values.dart';

void _drawhex(double x, double y, double r, [double space = 0]) {
  polygon(x, y, r - space, 6);
  polygon(x + 1.5 * r, y + 0.8675 * r, r - space, 6);
}

void simpleHexagonPattern(InputValues vals) {
  final step = width / (vals.getAverageBetween(5, 25) * 15 + 5);

  stroke(0);
  ellipseMode(CORNER);

  for (double i = -step; i < width; i += step * 3) {
    for (double j = -step; j < height; j += step * 1.735) {
      _drawhex(i, j, step);
    }
  }
}

void complexHexagonPattern(InputValues vals) {
  final step = width / (vals.getAverageBetween(40, 59) * 15 + 5);

  stroke(0, 0, 0, vals.getBetween(150, 200).round());
  ellipseMode(CENTER);

  for (double i = -step; i < width + step; i += step * 3) {
    for (double j = -step; j < height + step; j += step * 1.735) {
      strokeWeight(step / 50);
      _drawhex(i, j, step);
      strokeWeight(step / 8);
      _drawhex(i, j, step, step * 0.3);
      strokeWeight(step / 50);
      _drawhex(i, j, step, step * 0.5);
      strokeWeight(step / 10);
      _drawhex(i, j, step, step * 0.7);
      strokeWeight(step / 80);
      _drawhex(i, j, step, step * 0.9);
    }
  }
}

void simpleSpacedHexagonPattern(InputValues vals) {
  final step = width / (vals.getAverageBetween(10, 59) * 25 + 5);
  final padding = vals.getBetween(0.1, 1.1);

  ellipseMode(CORNER);

  stroke(0, 0, 0, vals.getBetween(50, 150).round());
  strokeWeight(step / 8);

  for (double i = -step; i < width; i += step * 3) {
    for (double j = -step; j < height; j += step * 1.735) {
      _drawhex(i, j, step, step * padding);
    }
  }
  //drawcircle(0, 0, 100);
}

void randomHexagonPattern(InputValues vals) {
  final step = width / vals.getAverageIntBetween(10, 50);

  ellipseMode(CORNER);

  for (double i = -step; i < width; i += step * 3) {
    for (double j = -step; j < height; j += step * 1.735) {
      push();
      vals.getBool()
          ? stroke(0, 0, 0, vals.getBetween(20, 150).round())
          : fill(0, 0, 0, vals.getBetween(20, 150).round());
      _drawhex(i, j, step);
      pop();
    }
  }
}

void spacedHexagonPattern(InputValues vals) {
  final step = width / vals.getAverageIntBetween(5, 30);
  final padding = vals.getBetween(0.1, 1.1);

  ellipseMode(CORNER);

  void drawHex(double x, double y, double r) {
    polygon(x, y, r / (2 + padding), 6);
    polygon(x + r * cos(PI / 3), y + r * sin(PI / 3), r / (2 + padding), 6);
  }

  for (double i = -2 * step; i < width; i += step) {
    for (double j = -2 * step; j < height; j += step * 2 * sin(PI / 3)) {
      fill(0, 0, 0, vals.getBetween(20, 150).round());
      drawHex(i, j, step);
    }
  }
  //drawcircle(0, 0, 100);
}
