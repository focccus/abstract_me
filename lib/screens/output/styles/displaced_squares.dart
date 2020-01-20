import 'package:processing.dart/processing.dart';
import '../../../data/input_values.dart';

void displacedSquares(InputValues vals) {
  final step = width / vals.getAverageIntBetween(5, 15);
  final double offset = vals.getAverageBetween(4, 10) * 6 + 4;
  rectMode(CENTER);
  stroke(0);
  strokeWeight(2);
  for (double x = step; x < width - 1; x += step) {
    for (double y = step; y < height - 1; y += step) {
      square(
        x + vals.getBetween(-offset, offset),
        y + vals.getBetween(-offset, offset),
        step * 0.8,
      );
    }
  }
}
