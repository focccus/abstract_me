import 'package:processing.dart/processing.dart';
import '../../../data/input_values.dart';

void parallelism(InputValues vals) {
  final justBlack = vals.getDouble() > 0.9;

  final double step = width / vals.getAverageIntBetween(5, 20);
  for (double x = 0; x < width; x += step) {
    for (double y = 0; y < height; y += step) {
      if (vals.getBool()) {
        stroke(0);
        line(x, y, x + step / 2, y + step);
        line(x + step / 2, y, x + step, y + step);
      } else if (!justBlack) {
        stroke(150);
        line(x, y + step, x + step / 2, y);
        line(x + step / 2, y + step, x + step, y);
      }
    }
  }
}
