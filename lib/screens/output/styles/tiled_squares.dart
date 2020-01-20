import 'package:processing.dart/processing.dart';

import '../../../data/input_values.dart';

void tiledSquares(InputValues vals) {
  final double step = width / vals.getAverageIntBetween(5, 10);

  void drawSquare(double x, double y, double w, int step) {
    if (vals.getBool()) {
      stroke(0, 0, 0, vals.selectList([100, 150, 200]));
      strokeWeight(vals.getBetween(0, step.toDouble() + 1));
      square(x, y, w);
    }

    if (step > 0) {
      final dS = w / step;
      drawSquare(x + dS / 2, y + dS / 2, w - dS, step - 1);
    }
  }

  for (double x = 0; x < width; x += step) {
    for (double y = 0; y < height; y += step) {
      stroke(0);
      strokeWeight(1);
      square(x + 2, y + 2, step - 4);
      drawSquare(x + 10, y + 10, step - 20, 6);
    }
  }
}
