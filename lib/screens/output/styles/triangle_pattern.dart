import 'package:processing.dart/processing.dart';
import '../../../data/input_values.dart';

void trianglePattern(InputValues vals) {
  final step = width / (vals.getAverageBetween(10, 12) * 30 + 10).round();
  final hs = step / 2;
  fill(0, 0, 0, vals.getAverageIntBetween(5, 15) * 10);

  for (double y = 0; y < height; y += step) {
    for (double x = 0; x < width; x += step) {
      triangle(x, y, x, y + hs, x + hs, y + hs);
      triangle(x + hs, y, x + step, y, x + hs, y + hs);
      triangle(x + step, y + hs, x + step, y + step, x + hs, y + hs);
      triangle(x + hs, y + step, x, y + step, x + hs, y + hs);
    }
  }
}
