import 'package:flutter/material.dart';

import '../Services/Auth.dart';
import '../Widgets/Home/Home_Left.dart';
import '../Widgets/Home/Home_Right.dart';

class Home extends StatelessWidget {
  Widget build(BuildContext context) {
    final AuthService _authService = AuthService();
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Text("Taskly"),
        elevation: null,
        actions: [
          TextButton.icon(
            style: TextButton.styleFrom(padding: EdgeInsets.all(20.0)),
            onPressed: () async {
              await _authService.signOut();
            },
            icon: Icon(
              Icons.logout,
              color: Colors.white,
            ),
            label: Text(
              "Logout",
              style: TextStyle(color: Colors.white),
            ),
          )
        ],
      ),
      body: Row(
        children: [
          //TODO:  Left Side
          HomeLeftDashboard(
            width: width,
          ),
          //TODO: Right Side
          HomeRightDashboard(
            width: width,
          ),
        ],
      ),
    );
  }
}
