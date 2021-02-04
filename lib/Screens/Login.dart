import 'package:flutter/material.dart';

import '../Widgets/LeftSideLoginSignUp/LeftSide.dart';
import '../Widgets/RightSideLoginSignUp/RightSideLogin.dart';

class LogIn extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Row(
        children: [
          Container(
            width: width / 3,
            color: Color.fromRGBO(54, 65, 86, 1),
            child: LeftSide(
              pageName: "Login",
              pageFooterStarting: "Don't have an account?",
              pageFooterEnding: "Sign Up",
            ),
          ),
          Container(
            width: width * 2 / 3,
            color: Color.fromRGBO(84, 69, 141, 1),
            child: RightSideLogin(),
          ),
        ],
      ),
    );
  }
}
