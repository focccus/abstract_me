import 'dart:math';

import 'package:processing.dart/core/actions/ellipse.dart';
import 'package:processing.dart/processing.dart';

import '../../../data/input_values.dart';

void circlePacking(InputValues vals) {
  strokeWeight(1);
  vals.getBool() ? stroke(0) : fill(0);
  List<EllipseAction> circles = [];
  final double minRadius = 2;
  final maxRadius = 50;
  final totalCircles = 200;
  final createCircleAttempts = 200;

  bool doesCircleHaveACollision(double x, double y, double r) {
    // Return true of false depending on whether the circle collides with another.

    for (var i = 0; i < circles.length; i++) {
      var otherCircle = circles[i];
      var a = r + otherCircle.radius;
      var mx = x - otherCircle.offset.dx;
      var my = y - otherCircle.offset.dy;

      if (a >= sqrt(mx * mx + my * my)) {
        return true;
      }
    }

    if (x + r >= width || x - r <= 0) {
      return true;
    }

    if (y + r >= height || y - r <= 0) {
      return true;
    }

    return false;
  }

  void createAndDrawCircle() {
    // Loop through from 0 to createCircleAttempts
    // trying to create a circle.

    // Once we have a circle created, grow it until
    // it hits another, or reaches max size.

    // Draw the circle
    var circleSafeToDraw = false;
    double radius, x, y;
    for (var tries = 1; tries < createCircleAttempts; tries++) {
      radius = minRadius;
      x = vals.getBetween(0, width) *
          vals.getAverageIntBetween(0, tries) /
          tries *
          2;
      y = vals.getBetween(0, height) *
          vals.getAverageIntBetween(0, tries) /
          tries *
          2;

      if (doesCircleHaveACollision(x, y, radius)) {
        continue;
      } else {
        circleSafeToDraw = true;
        break;
      }
    }

    if (!circleSafeToDraw) {
      return;
    }

    for (var radiusSize = minRadius; radiusSize < maxRadius; radiusSize++) {
      radius = radiusSize;
      if (doesCircleHaveACollision(x, y, radius)) {
        radius--;
        break;
      }
    }

    circles.add(circle(x, y, radius));
  }

  for (var i = 0; i < totalCircles; i++) {
    createAndDrawCircle();
  }
  print(circles.length);
}
