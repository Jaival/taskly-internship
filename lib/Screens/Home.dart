import 'package:flutter/material.dart';

// Imported Widgets
import '../Widgets/Home/Home_Left.dart';
import '../Widgets/Home/Home_Middle.dart';
import '../Widgets/Home/Home_Right.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Row(
        children: [
          //TODO:  Left Side
          HomeLeftDashboard(
            width: width,
          ),
          //TODO:  Middle
          HomeMiddleDashboard(),
          //TODO: Right Side
          HomeRightDashboard(
            width: width,
          ),
        ],
      ),
    );
  }
}
