import 'package:processing.dart/processing.dart';

import '../../../data/input_values.dart';

void dots(InputValues vals) {
  final step = width / vals.getAverageIntBetween(10, 40);
  for (double i = 0; i <= width; i += step) {
    for (double j = 0; j <= height; j += step) {
      fill(0, 0, 0, vals.getBetween(0, 200).round());
      circle(i + step / 2, j + step / 2, step / 5);
    }
  }
}
