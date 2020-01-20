import 'package:processing.dart/processing.dart';
import '../../../data/input_values.dart';

/// Inspired by 34 Dots 6 Lines - SKYE SCHUCHMAN
/// https://www.artfullywalls.com/works/6904/34-dots-6-lines
void dotsAndLines(InputValues vals) {
  final total = 20;
  final margin = width * 0.05;

  fill(0);
  stroke(0);

  for (var i = 0; i < total; i++) {
    var x = vals.getBetween(margin, width - margin);
    var y = vals.getBetween(margin, height - margin);
    circle(
      x,
      y,
      vals.getBetween(5, 10),
    );
    int max = 100;
    if (vals.getDouble() > 0.8) {
      var d = width;
      while (max > 0 &&
          (x + d > width - margin ||
              x + d < margin ||
              y + d > width - margin ||
              y + d < margin ||
              d.abs() < width / 20)) {
        d = vals.getBetween(-width / 3, width / 3);
        max--;
      }

      if (vals.getBool()) {
        line(x, y, x + d, y);
        circle(
          x + d,
          y,
          vals.getBetween(5, 10),
        );
      } else {
        line(x, y, x, y + d);
        circle(
          x,
          y + d,
          vals.getBetween(5, 10),
        );
      }
    }
  }
}
