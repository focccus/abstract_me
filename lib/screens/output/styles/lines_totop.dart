import 'package:processing.dart/processing.dart';

import '../../../data/input_values.dart';

void linesBottomTop(InputValues vals) {
  for (var j = 0; j < 10; j++) {
    for (double i = 0; i < width; i += 3) {
      final b = vals.getBetween(0, 50).round();
      strokeWeight(vals.getDouble() * 3);
      stroke(0, 0, 0, b);
      line(
        i,
        height,
        i,
        vals.getDouble() * height,
      );
    }
  }
}
