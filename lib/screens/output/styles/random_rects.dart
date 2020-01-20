import 'package:processing.dart/processing.dart';

import '../../../data/input_values.dart';

void randomRects(InputValues vals) {
  final count = vals.getAverageIntBetween(10, 50);
  translate(width / 2, height / 2);
  rectMode(CENTER);
  strokeWeight(2);
  stroke(0);
  for (var i = 0; i < count; i++) {
    rect(
      (vals.getDouble() * 2 - 1) * width / 3,
      (vals.getDouble() * 2 - 1) * height / 3,
      vals.getDouble() * width / 2,
      vals.getDouble() * height / 2,
    );
  }
  // rect(-100, 0, width / 2, height);
  rectMode(CORNER);
}
