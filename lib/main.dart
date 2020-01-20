import 'package:abstract_me/screens/welcome/welcome.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

import 'intl.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setEnabledSystemUIOverlays([]);
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      localizationsDelegates: [
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        AbstractLocalizationsDelegate(),
      ],
      supportedLocales: [
        const Locale("en"),
        const Locale("de"),
      ],
      theme: ThemeData(
          fontFamily: 'RobotoMono',
          backgroundColor: Colors.white,
          primarySwatch: MaterialColor(
            Colors.black.value,
            {
              50: Colors.white,
              100: Colors.white,
              200: Colors.grey,
              300: Colors.grey[700],
              400: Colors.grey[900],
              500: Colors.black,
              600: Colors.black,
              700: Colors.black,
              800: Colors.black,
              900: Colors.black,
            },
          ),
          inputDecorationTheme: InputDecorationTheme(
            focusColor: Colors.black,
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(2),
            ),
          )),
      home: WelcomeScreen(),
    );
  }
}
