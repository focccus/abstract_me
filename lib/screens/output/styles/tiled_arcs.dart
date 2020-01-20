import 'package:processing.dart/processing.dart';

import '../../../data/input_values.dart';

void tiledArcs(InputValues vals) {
  final double step = width / (vals.getAverageBetween(5, 20) * 5 + 5).round();

  void drawArc(
    double x,
    double y,
    double w,
    double h,
    int type,
  ) {
    fill(0, 0, 0, vals.getBetween(50, 150).round());
    switch (type) {
      case 1:
        arc(x - w, y - h, w * 2, h * 2, 0, HALF_PI);
        break;
      case 2:
        arc(x, y - h, w * 2, h * 2, HALF_PI, HALF_PI);
        break;
      case 3:
        arc(x, y, w * 2, h * 2, PI, HALF_PI);
        break;
      case 4:
        arc(x - w, y, w * 2, h * 2, 3 * HALF_PI, HALF_PI);
        break;
    }
  }

  for (double x = 0; x < width + step; x += step) {
    for (double y = 0; y < height + step; y += step) {
      drawArc(
        x,
        y,
        step,
        step,
        vals.getBetween(1, 5).round(),
      );
    }
  }
}

void tiledQuarterCircles(InputValues vals) {
  final double step = width / vals.getAverageIntBetween(8, 30);

  stroke(0);
  strokeWeight(2);
  void drawCircle(
    double x,
    double y,
    double r,
  ) {
    if (vals.getBool()) {
      arc(x, y, r, r, 0, HALF_PI, false);
      arc(x + r, y + r, r, r, PI, 3 * HALF_PI, false);
    } else {
      arc(x + r, y, r, r, HALF_PI, PI, false);
      arc(x, y + r, r, r, 3 * HALF_PI, TWO_PI, false);
      circle(0, 0, 1);
    }
  }

  for (double x = 0; x < width; x += step) {
    for (double y = 0; y < height; y += step) {
      drawCircle(x, y, step);
    }
  }
  //drawCircle(0, 0, width);
}
