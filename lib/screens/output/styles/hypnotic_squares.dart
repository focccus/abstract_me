import 'package:processing.dart/processing.dart';
import '../../../data/input_values.dart';

void hypnoticSquares(InputValues vals) {
  final finalSize = vals.getBetween(5, 10);
  final startSize = width / vals.getAverageIntBetween(5, 10);
  final startSteps = vals.getBetween(3, 5).round();

  stroke(0);
  noFill();
  strokeWeight(2);

  void drawSquare(
    double x,
    double y,
    double w,
    double h,
    double dx,
    double dy,
    int steps,
  ) {
    rect(x, y, w, h);

    if (steps >= 0) {
      var newSize = startSize * (steps / startSteps) + finalSize;
      var nX = x + (w - newSize) / 2;
      var nY = y + (h - newSize) / 2;
      nX = nX - ((x - nX) / (steps + 2)) * dx;
      nY = nY - ((y - nY) / (steps + 2)) * dy;
      drawSquare(nX, nY, newSize, newSize, dx, dy, steps - 1);
    }
  }

  for (double x = 0; x < width; x += startSize) {
    for (double y = 0; y < height; y += startSize) {
      drawSquare(
        x,
        y,
        startSize,
        startSize,
        vals.getDouble() * 2 - 1,
        vals.getDouble() * 2 - 1,
        startSteps - 1,
      );
    }
  }
}
