import 'package:processing.dart/processing.dart';
import '../../../data/input_values.dart';

void randomCrossing(InputValues vals) {
  final step = width / (vals.getAverageBetween(5, 20) * 15 + 5);
  fill(0, 0, 0, vals.getBetween(100, 200).round());

  final margin = vals.getBetween(0.08, 0.1);

  for (double i = 0; i < height; i += step * 0.9995) {
    for (double j = 0; j < width; j += step * 0.9995) {
      if (vals.getBool()) {
        rect(i + step / 3, j, step / 3, step);
        rect(
          i,
          j + step / 3,
          step / 3 - step * margin,
          step / 3,
        );
        rect(
          i + 2 * step / 3 + step * margin,
          j + step / 3,
          step / 3 - step * margin,
          step / 3,
        );
      } else {
        rect(i, j + step / 3, step, step / 3);
        rect(
          i + step / 3,
          j,
          step / 3,
          step / 3 - step * margin,
        );
        rect(
          i + step / 3,
          j + 2 * step / 3 + step * margin,
          step / 3,
          step / 3 - step * margin,
        );
      }
    }
  }
}
