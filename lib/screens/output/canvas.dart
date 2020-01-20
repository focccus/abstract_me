import 'dart:math';

import 'package:flutter/material.dart';
import 'package:processing.dart/processing.dart';

import '../../data/input_values.dart';

import 'styles/braid_crossings.dart';
import 'styles/circle_pattern.dart';
import 'styles/dot_cross_gradient.dart';
import 'styles/dot_lines.dart';
import 'styles/dotted_gradient.dart';
import 'styles/random_lines.dart';
import 'styles/rect_patterns.dart';
import 'styles/square_fractal.dart';
import 'styles/circle_packing.dart';
import 'styles/displaced_squares.dart';
import 'styles/dots.dart';
import 'styles/hexagon_patterns.dart';
import 'styles/hypnotic_circles.dart';
import 'styles/hypnotic_squares.dart';
import 'styles/irregular_squares.dart';
import 'styles/lines_totop.dart';
import 'styles/parallelism.dart';
import 'styles/random_crossing.dart';
import 'styles/random_rects.dart';
import 'styles/random_triangles.dart';
import 'styles/recursive_squares.dart';
import 'styles/rotated_lines.dart';
import 'styles/sized_dots.dart';
import 'styles/spider.dart';
import 'styles/spiral.dart';
import 'styles/square_packing.dart';
import 'styles/tiled_arcs.dart';
import 'styles/tiled_squares.dart';
import 'styles/tilted_lines.dart';
import 'styles/triangle_fractal.dart';
import 'styles/triangle_pattern.dart';
import 'styles/wall_drawing.dart';
import 'styles/joy_division.dart';

class OutputCanvas extends StatelessWidget {
  final InputValues vals;

  OutputCanvas(this.vals) {
    print("Out");
  }

  void _draw() {
    vals.currentIndex = 0;

    background(255);
    for (int i = 0; i < (4 * vals.average).round(); i++) {
      push();
      print("paint1");
      vals.selectList([
        randomTriangles,
        wallDrawing,
        randomRects,
        tiltedMultiLinesConfused,
        randomCirclePattern,
        dotsAndLines,
        tiledSquares,
        rectPattern,
        simpleHexagonPattern,
        tiledArcs,
        hypnoticSquares,
        hypnoticCircles,
        tiltedLines,
        tiltedMultiLines,
        spiral,
        dots,
        linesBottomTop,
        circlePacking,
        sizedDots,
        displacedSquares,
        squarePacking,
        recursiveSquares,
        spider,
        parallelism,
        randomTiltedLines,
        goldenRatioSpiral,
        tiledQuarterCircles,
        dottedGradient,
        randomLines,
        braidCrossing,
        dotCrossGradient,
        randomRectTriangles,
        complexHexagonPattern,
        simpleSpacedHexagonPattern,
        randomHexagonPattern,
        simpleCirclePattern,
        spacedCirclePattern,
        spacedHexagonPattern,
        squareFractal,
        triangleFractal,
        joyDivision,
        randomCrossing,
        irregularSquares,
        rectLines,
        trianglePattern,
      ], (i + 1) / 4)(vals);
      pop();
    }
  }

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, layout) {
      double w = layout.maxWidth < layout.maxHeight
          ? layout.maxWidth - 200
          : layout.maxHeight;
      if (w > 600) {
        w = 600;
      }

      return CanvasWidget(
        setup: () {
          createCanvas(w * 0.95, w * 0.95);
          noLoop();
        },
        draw: _draw,
        onTap: _draw,
      );
    });
  }
}
