import 'package:processing.dart/processing.dart';

import '../../../data/input_values.dart';

void spider(InputValues vals) {
  stroke(0, 0, 0, 100);
  final amount = vals.getAverageIntBetween(10, 20) * 10;
  double lastX = 0;
  double lastY = vals.getBetween(0, height);
  for (var i = 0; i < amount; i++) {
    int direction = vals.getBetween(0, 4).round();
    double x = 0;
    double y = 0;

    if (direction == 0 && lastX != 0) {
      y = random(height);
    } else if (direction == 1 && lastY != 0) {
      x = random(width);
    } else if (direction == 2 && lastY != height) {
      y = height;
      x = random(width);
    } else if (direction == 3 && lastX != width) {
      x = width;
      y = random(height);
    } else {
      i--;
      continue;
    }
    line(lastX, lastY, x, y);
    lastX = x;
    lastY = y;
  }
}
