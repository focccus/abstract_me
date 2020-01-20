import 'package:processing.dart/processing.dart';
import '../../../data/input_values.dart';

void irregularSquares(InputValues vals) {
  final step = width / vals.getAverageIntBetween(3, 7);
  final interations = (vals.getAverageBetween(10, 30) * 2 + 1).round();
  strokeWeight(2);
  stroke(0);

  drawSquare(double x, double y, double w, int i) {
    square(x, y, w);
    if (i <= 0 || vals.getBool()) {
      point(x + w / 2, y + w / 2);
    } else {
      double nW = w / 2;
      drawSquare(x, y, nW, i - 1);
      drawSquare(x + nW, y, nW, i - 1);
      drawSquare(x + nW, y + nW, nW, i - 1);
      drawSquare(x, y + nW, nW, i - 1);
    }
  }

  for (double i = 0; i < width; i += step) {
    for (double j = 0; j < height; j += step) {
      drawSquare(i, j, step, interations);
    }
  }
}
