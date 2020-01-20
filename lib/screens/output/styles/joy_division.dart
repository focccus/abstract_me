import 'package:processing.dart/processing.dart';
import '../../../data/input_values.dart';

void joyDivision(InputValues vals) {
  final step = width / vals.getAverageIntBetween(20, 50);
  stroke(0);

  for (double i = step * 2; i <= height; i += step) {
    double prevY = i;
    for (double j = 0; j <= width; j += step) {
      var distanceToCenter = abs(j - width / 2);
      var variance = max<num>(width / 2 - 50 - distanceToCenter, 0.0);
      var randomV = vals.getDouble() * variance / 4 * -1;
      bezier(
        j,
        prevY,
        j + step / 2,
        prevY,
        j + step / 2,
        i + randomV,
        j + step,
        i + randomV,
      );
      prevY = i + randomV;
    }
  }
}
