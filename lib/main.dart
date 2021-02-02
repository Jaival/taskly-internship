import 'package:flutter/material.dart';

import 'Screens/Home.dart';

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
          headline4: TextStyle(fontSize: 24.0, fontWeight: FontWeight.w600),
          headline5: TextStyle(fontSize: 24.0, fontWeight: FontWeight.w500),
          headline6: TextStyle(fontSize: 20.0, fontWeight: FontWeight.w500),
          bodyText1: TextStyle(fontSize: 16.0, fontWeight: FontWeight.normal),
          bodyText2: TextStyle(fontSize: 14.0, fontWeight: FontWeight.normal),
          button: TextStyle(
              fontSize: 16.0, fontWeight: FontWeight.w500, color: Colors.white),
        ),
      ),
      home: MyHomePage(),
    );
  }
}
