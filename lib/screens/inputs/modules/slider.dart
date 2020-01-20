import 'package:flutter/material.dart';

class SliderInputModule extends StatelessWidget {
  final int value;
  final int min;
  final int max;
  final String label;
  final String Function(int) showLabel;
  final void Function(int) onChanged;

  SliderInputModule(
    this.value, {
    @required this.max,
    this.min = 0,
    this.showLabel,
    @required this.onChanged,
    this.label,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        if (label != null)
          Text(
            label,
            style: TextStyle(fontSize: 14),
          ),
        Expanded(
          child: Slider(
            value: value.toDouble(),
            onChanged: (d) => onChanged != null ? onChanged(d.toInt()) : null,
            divisions: max - min,
            min: min.toDouble(),
            max: max.toDouble(),
            label: showLabel != null ? showLabel(value.toInt()) : null,
          ),
        ),
      ],
    );
  }
}
