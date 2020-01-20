import 'dart:math';

import 'package:flutter/material.dart';
import 'package:processing.dart/processing.dart';

class LogoPainter extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, layout) {
      double w = layout.maxWidth;
      if (w > 300) {
        w = 300;
      }

      return CanvasWidget(
        setup: () {
          createCanvas(w * 0.8, w * 0.8);
          background(0, 0, 0, 0);
          noLoop();
        },
        draw: () {
          stroke(0);

          translate(width / 2, height / 2);

          final radius = width / 2 - 10;

          final angle = TWO_PI / 6;
          for (var i = 0; i < 6; i++) {
            rotate(angle);
            line(
              -radius / 2 + radius * cos(2 * angle) / 2,
              radius * sin(2 * angle) / 2,
              radius,
              0,
            );
            line(
              -radius / 2 + radius * cos(2 * angle) / 2,
              -radius * sin(2 * angle) / 2,
              radius,
              0,
            );
          }

          strokeWeight(2);

          circle(0, 0, radius);
          strokeWeight(3);
          polygon(0, 0, radius, 6);

          circle(0, 0, radius / 12);
          fill(0);
          circle(0, 0, radius / 35);
        },
      );
    });
  }
}
