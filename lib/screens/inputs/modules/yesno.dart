import 'package:flutter/material.dart';

import '../../../intl.dart';

class YesNoInputModule extends StatelessWidget {
  final String label;
  final bool value;
  final void Function(bool) onChanged;

  YesNoInputModule(this.value, {this.label, this.onChanged});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Wrap(
        alignment: WrapAlignment.start,
        crossAxisAlignment: WrapCrossAlignment.center,
        spacing: 16,
        runSpacing: 16,
        children: <Widget>[
          if (label != null)
            Text(
              label,
            ),
          ToggleButtons(
            children: <Widget>[
              Text(AbstractLocalizations.of(context).yes),
              Text(AbstractLocalizations.of(context).no),
            ],
            selectedColor: Colors.white,
            fillColor: Colors.black,
            textStyle: TextStyle(fontFamily: "FiraCode"),
            isSelected: value ? [true, false] : [false, true],
            onPressed: (i) => onChanged != null ? onChanged(i == 0) : null,
          ),
        ],
      ),
    );
  }
}
