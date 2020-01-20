import 'package:flutter/material.dart';

class SectionHeading extends StatelessWidget {
  final String heading;
  final List<Widget> body;

  SectionHeading(this.heading, this.body);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 24, horizontal: 2),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Container(
                padding: EdgeInsets.all(8.0),
                child: Text(
                  heading,
                  style: TextStyle(fontSize: 20, fontFamily: "FiraCode"),
                ),
              ),
              Expanded(
                child: Container(
                  height: 1.5,
                  color: Colors.black,
                ),
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Column(
            children: body,
            crossAxisAlignment: CrossAxisAlignment.center,
          ),
        ),
      ],
    );
  }
}
