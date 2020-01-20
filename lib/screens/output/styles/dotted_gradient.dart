import 'package:processing.dart/processing.dart';
import '../../../data/input_values.dart';

void dottedGradient(InputValues vals) {
  final step = width / vals.getAverageIntBetween(20, 100);
  final dir = vals.getBetween(-1, 2).round() + vals.getBetween(-1, 2).round();

  strokeWeight(step);
  for (double i = 0; i < width; i += step) {
    for (double j = 0; j < height; j += step) {
      var color = (i / width * 200 + 55).round();
      var o = (j / height * 200 + 55).round();
      if (dir < 0) color = 255 - color;
      if (dir > 0) o = 255 - o;
      stroke(color, color, color, o);
      point(i + step / 2, j + step / 2);
    }
  }
}
