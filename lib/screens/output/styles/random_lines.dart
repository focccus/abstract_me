import 'package:processing.dart/processing.dart';
import '../../../data/input_values.dart';

void randomLines(InputValues vals) {
  final count = vals.getAverageIntBetween(10, 50);
  strokeWeight(2);
  stroke(0);
  final marginX = width * 0.1;
  final marginY = height * 0.1;
  for (var i = 0; i < count; i++) {
    line(
      vals.getBetween(marginX, width - marginX),
      vals.getBetween(marginY, height - marginY),
      vals.getBetween(marginX, width - marginX),
      vals.getBetween(marginY, height - marginY),
    );
  }
}
