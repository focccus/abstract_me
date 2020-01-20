import 'package:flutter/material.dart';

class BlackButton extends StatelessWidget {
  final String text;
  final void Function() onPressed;

  BlackButton(this.text, {this.onPressed});

  @override
  Widget build(BuildContext context) {
    return RaisedButton(
      color: Colors.black,
      textColor: Colors.white,
      shape: RoundedRectangleBorder(
        borderRadius: new BorderRadius.circular(10.0),
      ),
      padding: EdgeInsets.symmetric(vertical: 15, horizontal: 60),
      onPressed: onPressed,
      child: Text(text),
    );
  }
}
