import 'package:flutter/material.dart';
import '../../intl.dart';
import '../../widgets/button.dart';
import '../inputs/inputs.dart';
import 'logo_painter.dart';

class WelcomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double w = MediaQuery.of(context).size.width;

    if (w > 650) {
      w = 650;
    }

    return Scaffold(
      body: Center(
        child: SingleChildScrollView(
          child: Container(
            constraints: BoxConstraints(
              maxHeight: 650,
              maxWidth: 650,
            ),
            padding: EdgeInsets.all(16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                LogoPainter(),
                Spacer(),
                Text(
                  AbstractLocalizations.of(context).title,
                  style: TextStyle(fontSize: 36, fontFamily: 'FiraCode'),
                ),
                Spacer(flex: 2),
                Text(
                  AbstractLocalizations.of(context).privacy,
                  style: TextStyle(fontSize: 18, height: 1),
                ),
                Spacer(),
                BlackButton(
                  AbstractLocalizations.of(context).start,
                  onPressed: () => Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (c) => InputsPage(),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
