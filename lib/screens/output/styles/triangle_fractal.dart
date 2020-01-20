import 'dart:math';

import 'package:processing.dart/processing.dart';
import '../../../data/input_values.dart';

void triangleFractal(InputValues vals) {
  final int interations = vals.getAverageIntBetween(3, 8);

  translate(width / 2, 0);

  fill(0, 0, 0, 255);

  void drawT(double x, double y, double w, int i) {
    if (i == 0) {
      fill(0, 0, 0, vals.getBetween(10, 150).round());
      triangle(
        x,
        y,
        x + w / 2,
        y + w * sin(PI / 3),
        x - w / 2,
        y + w * sin(PI / 3),
      );
      return;
    }

    if (i > 0) {
      drawT(x, y, w / 2, i - 1);
      drawT(x - w / 4, y + w * sin(PI / 3) / 2, w / 2, i - 1);
      drawT(x + w / 4, y + w * sin(PI / 3) / 2, w / 2, i - 1);
    }
  }

  drawT(0, width * 0.05, width, interations);
}
