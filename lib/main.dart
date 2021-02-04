import 'package:flutter/material.dart';

import 'Screens/Login.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Responsive Landing Page',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Color.fromRGBO(84, 69, 141, 1),
        accentColor: Color.fromRGBO(18, 130, 162, 1),
        textTheme: TextTheme(
          headline4: TextStyle(
              fontSize: 24.0, fontWeight: FontWeight.w600, color: Colors.white),
          headline5: TextStyle(
              fontSize: 24.0, fontWeight: FontWeight.w500, color: Colors.white),
          headline6: TextStyle(
              fontSize: 20.0, fontWeight: FontWeight.w500, color: Colors.white),
          bodyText1: TextStyle(
              fontSize: 16.0,
              fontWeight: FontWeight.normal,
              color: Colors.white),
          bodyText2: TextStyle(
              fontSize: 14.0,
              fontWeight: FontWeight.normal,
              color: Colors.white),
          subtitle2: TextStyle(
              fontSize: 10.0,
              fontWeight: FontWeight.normal,
              color: Colors.white70),
          button: TextStyle(
              fontSize: 16.0, fontWeight: FontWeight.w500),
        ),
      ),
      // home: MyHomePage(),
      home: LogIn(),
    );
  }
}
