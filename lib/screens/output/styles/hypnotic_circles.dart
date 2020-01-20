import 'package:processing.dart/processing.dart';
import '../../../data/input_values.dart';

void hypnoticCircles(InputValues vals) {
  final finalSize = vals.getBetween(5, 10);
  final startSize = width / vals.getAverageIntBetween(5, 10);
  final startSteps = vals.getBetween(3, 5).round();

  stroke(0);
  strokeWeight(2);

  void drawCircle(
    double x,
    double y,
    double r,
    double dx,
    double dy,
    int steps,
  ) {
    circle(x, y, r);

    if (steps >= 0) {
      var newSize =
          (startSize / 2 - finalSize) * (steps / startSteps) + finalSize;
      var nX = x - (newSize * dx) / (steps + 4);
      var nY = y - (newSize * dy) / (steps + 4);
      drawCircle(nX, nY, newSize, dx, dy, steps - 1);
    }
  }

  for (double x = 0; x < width; x += startSize) {
    for (double y = 0; y < height; y += startSize) {
      drawCircle(
        x + startSize / 2,
        y + startSize / 2,
        startSize / 2,
        vals.getDouble() * 2 - 1,
        vals.getDouble() * 2 - 1,
        startSteps - 1,
      );
    }
  }
}
