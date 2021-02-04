import 'package:flutter/material.dart';

class RightSideSignUp extends StatelessWidget {
  final _firstName = TextEditingController();
  final _lastName = TextEditingController();
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();
  final _confirmPasswordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      // crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        //TODO: Sign In with Google
        // FlatButton(
        //   child: Text("Sign in with Google"),
        //   onPressed: () {},
        // ),
        //TODO: ----OR----
        // Text("------------OR------------"),
        //TODO: Name
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            //TODO: First Name
            Container(
              margin: EdgeInsets.symmetric(vertical: 15.0, horizontal: 15.0),
              width: 200,
              // color: Colors.yellow,
              child: TextField(
                controller: _firstName,
                style: Theme.of(context).textTheme.bodyText1,
                cursorColor: Colors.white,
                decoration: InputDecoration(
                  hintText: "John",
                  hintStyle: Theme.of(context).textTheme.subtitle2,
                  border: InputBorder.none,
                  enabledBorder: InputBorder.none,
                  filled: true,
                  fillColor: Color.fromRGBO(196, 196, 196, 0.42),
                  labelText: "First Name",
                  labelStyle: Theme.of(context).textTheme.bodyText1,
                ),
              ),
            ),
            //TODO: Last Name
            Container(
              margin: EdgeInsets.symmetric(vertical: 15.0, horizontal: 15.0),
              width: 200,
              // color: Colors.yellow,
              child: TextField(
                controller: _lastName,
                style: Theme.of(context).textTheme.bodyText1,
                cursorColor: Colors.white,
                decoration: InputDecoration(
                  hintText: "Doe",
                  hintStyle: Theme.of(context).textTheme.subtitle2,
                  border: InputBorder.none,
                  enabledBorder: InputBorder.none,
                  filled: true,
                  fillColor: Color.fromRGBO(196, 196, 196, 0.42),
                  labelText: "Last Name",
                  labelStyle: Theme.of(context).textTheme.bodyText1,
                ),
              ),
            ),
          ],
        ),
        //TODO: Email
        Container(
          margin: EdgeInsets.symmetric(vertical: 15.0),
          width: 200,
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
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            //TODO: Password
            Container(
              margin: EdgeInsets.symmetric(vertical: 15.0, horizontal: 15.0),
              width: 200,
              // color: Colors.yellow,
              child: TextField(
                controller: _passwordController,
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
            //TODO: Confirm Password
            Container(
              margin: EdgeInsets.symmetric(vertical: 15.0, horizontal: 15.0),
              width: 200,
              // color: Colors.yellow,
              child: TextField(
                controller: _confirmPasswordController,
                style: Theme.of(context).textTheme.bodyText1,
                cursorColor: Colors.white,
                decoration: InputDecoration(
                  border: InputBorder.none,
                  enabledBorder: InputBorder.none,
                  filled: true,
                  fillColor: Color.fromRGBO(196, 196, 196, 0.42),
                  labelText: "Confirm Password",
                  labelStyle: Theme.of(context).textTheme.bodyText1,
                ),
              ),
            ),
          ],
        ),
        //TODO: Sign Up Button
        Container(
          margin: EdgeInsets.symmetric(vertical: 15.0),
          height: 50,
          width: 150,
          // color: Colors.yellow,
          child: FlatButton(
            color: Color.fromRGBO(253, 204, 77, 1.0),
            child: Text(
              "Sign Up",
              style: Theme.of(context).textTheme.button,
            ),
            onPressed: () {
              print("Sign Up");
            },
          ),
        ),
      ],
    );
  }
}
