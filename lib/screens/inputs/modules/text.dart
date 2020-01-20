import 'package:flutter/material.dart';

class TextInputModule extends StatelessWidget {
  final TextEditingController controller;
  final String label;

  TextInputModule(this.controller, this.label);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8),
      child: TextField(
        controller: controller,
        decoration: InputDecoration(
          labelText: label,
        ),
        //maxLengthEnforced: true,
      ),
    );
  }
}
