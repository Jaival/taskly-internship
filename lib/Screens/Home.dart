import 'package:flutter/material.dart';

import '../Widgets/NavBar/navBar.dart';

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: SingleChildScrollView(
          child: Column(
            children: [
              NavBar(),
            ],
          ),
        ),
      ),
    );
  }
}
