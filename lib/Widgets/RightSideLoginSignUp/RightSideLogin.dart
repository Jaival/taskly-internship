import 'package:flutter/material.dart';

class RightSideLogin extends StatelessWidget {
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        //TODO: Sign In with Google
        // FlatButton(
        //   child: Text("Sign in with Google"),
        //   onPressed: () {},
        // ),
        //TODO: ----OR----
        // Text("------------OR------------"),
        //TODO: Email
        Container(
          margin: EdgeInsets.symmetric(vertical: 15.0),
          width: 300,
          // color: Colors.yellow,
          child: TextField(
            controller: _emailController,
            style: Theme.of(context).textTheme.bodyText1,
            cursorColor: Colors.white,
            decoration: InputDecoration(
              hintText: "johndoe@email.com",
              hintStyle: Theme.of(context).textTheme.subtitle2,
              border: InputBorder.none,
              enabledBorder: InputBorder.none,
              filled: true,
              fillColor: Color.fromRGBO(196, 196, 196, 0.42),
              labelText: "Email",
              labelStyle: Theme.of(context).textTheme.bodyText1,
            ),
          ),
        ),
        //TODO: Password
        Container(
          margin: EdgeInsets.symmetric(vertical: 30.0),
          width: 300,
          // color: Colors.yellow,
          child: TextField(
            controller: _passwordController,
            obscureText: true,
            style: Theme.of(context).textTheme.bodyText1,
            cursorColor: Colors.white,
            decoration: InputDecoration(
              border: InputBorder.none,
              enabledBorder: InputBorder.none,
              filled: true,
              fillColor: Color.fromRGBO(196, 196, 196, 0.42),
              labelText: "Password",
              labelStyle: Theme.of(context).textTheme.bodyText1,
            ),
          ),
        ),
        //TODO: Login Button
        Container(
          margin: EdgeInsets.symmetric(vertical: 30.0),
          height: 50,
          width: 150,
          // color: Colors.yellow,
          child: FlatButton(
            color: Color.fromRGBO(253, 204, 77, 1.0),
            child: Text(
              "Login",
              style: Theme.of(context).textTheme.button,
            ),
            onPressed: () {
              print("Login");
            },
          ),
        ),
      ],
    );
  }
}
