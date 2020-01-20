import 'package:processing.dart/processing.dart';

import '../../../data/input_values.dart';

void randomTriangles(InputValues vals) {
  final count = vals.getAverageBetween(5, 58) * 40 + 10;
  strokeWeight(2);

  final marginX = width * 0.05;
  final marginY = height * 0.05;
  for (var i = 0; i < count; i++) {
    push();
    var o = vals.getBetween(0, 150).round();
    vals.getBool() ? stroke(0, 0, 0, o) : fill(0, 0, 0, o);
    triangle(
      vals.getBetween(marginX, width - marginX),
      vals.getBetween(marginY, height - marginY),
      vals.getBetween(marginX, width - marginX),
      vals.getBetween(marginY, height - marginY),
      vals.getBetween(marginX, width - marginX),
      vals.getBetween(marginY, height - marginY),
    );
    pop();
  }
}

void randomRectTriangles(InputValues vals) {
  final count = vals.getAverageBetween(15, 58) * 50 + 20;
  strokeWeight(2);

  final marginX = width * 0.05;
  final marginY = height * 0.05;
  for (var i = 0; i < count; i++) {
    double x = vals.getBetween(marginX, width - marginX);
    double y = vals.getBetween(marginY, height - marginY);
    fill(0, 0, 0, vals.getBetween(0, 100).round());
    triangle(
      x,
      y,
      x,
      y + vals.getBetween(-height / 2, height / 2),
      x + vals.getBetween(-width / 2, width / 2),
      y,
    );
  }
}
