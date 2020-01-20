import 'package:processing.dart/processing.dart';

void rotatedLines() {
  stroke(0);

  final double amount = random(10, 100);

  strokeWeight(random(2, 10));

  translate(width / 2, height / 2);
  final angle = TWO_PI / amount;
  for (var i = 0; i < amount; i++) {
    rotate(angle);
    line(0, 0, width * 0.45, 0);
  }
}
