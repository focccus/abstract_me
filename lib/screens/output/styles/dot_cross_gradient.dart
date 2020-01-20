import 'package:processing.dart/processing.dart';

import '../../../data/input_values.dart';

void dotCrossGradient(InputValues vals) {
  final step = width / (vals.getAverageIntBetween(10, 40) * 1.2);
  final dir = vals.getBetween(-1, 1).round();

  for (double i = 0; i < width; i += step * 1.2) {
    for (double j = 0; j < height; j += step * 1.2) {
      bool isCross = vals.getDouble() * j / height > 0.2;
      var o = (i / width * 150 + 55).round();
      if (dir < 0) o = 255 - o;
      fill(0, 0, 0, o);
      if (isCross) {
        square(i, j + step / 3, step / 3);
        rect(i + step / 3, j, step / 3, step);
        square(i + step - step / 3, j + step / 3, step / 3);
      } else {
        circle(i + step / 2, j + step / 2, step / 2);
      }
    }
  }
}
