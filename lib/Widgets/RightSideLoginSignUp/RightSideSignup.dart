import 'package:flutter/material.dart';

import '../../Services/Auth.dart';
import '../../Shared/Loading.dart';

class RightSideSignUp extends StatefulWidget {
  @override
  _RightSideSignUpState createState() => _RightSideSignUpState();
}

class _RightSideSignUpState extends State<RightSideSignUp> {
  final AuthService _authService = AuthService();
  final _formKey = GlobalKey<FormState>();

  bool loading = false;

  String email = '';
  String password = '';
  String firstName = '';
  String lastName = '';
  String error = '';

  @override
  Widget build(BuildContext context) {
    return loading
        ? Loading()
        : Form(
            key: _formKey,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              // crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                //TODO: Sign In with Google
                //TODO: ----OR----
                // Name
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    // First Name
                    Container(
                      margin: EdgeInsets.symmetric(
                          vertical: 15.0, horizontal: 15.0),
                      width: 200,
                      // color: Colors.yellow,
                      child: TextFormField(
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
                        validator: (val) =>
                            val.isEmpty ? 'Enter a First Name' : null,
                        onChanged: (val) {
                          setState(() {
                            firstName = val;
                          });
                        },
                      ),
                    ),
                    // Last Name
                    Container(
                      margin: EdgeInsets.symmetric(
                          vertical: 15.0, horizontal: 15.0),
                      width: 200,
                      // color: Colors.yellow,
                      child: TextFormField(
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
                        validator: (val) =>
                            val.isEmpty ? 'Enter an Last Name' : null,
                        onChanged: (val) {
                          setState(() {
                            lastName = val;
                          });
                        },
                      ),
                    ),
                  ],
                ),
                // Email
                Container(
                  margin: EdgeInsets.symmetric(vertical: 15.0),
                  width: 200,
                  // color: Colors.yellow,
                  child: TextFormField(
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
                    validator: (val) => val.isEmpty ? 'Enter an Email' : null,
                    onChanged: (val) {
                      setState(() {
                        email = val;
                      });
                    },
                  ),
                ),
                // Password
                Container(
                  margin:
                      EdgeInsets.symmetric(vertical: 15.0, horizontal: 15.0),
                  width: 200,
                  // color: Colors.yellow,
                  child: TextFormField(
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
                    validator: (val) => val.length < 6
                        ? 'Enter an Password 6+ character long'
                        : null,
                    obscureText: true,
                    onChanged: (val) {
                      setState(() {
                        password = val;
                      });
                    },
                  ),
                ),
                // Sign Up Button
                Container(
                  margin: EdgeInsets.symmetric(vertical: 15.0),
                  height: 50,
                  width: 150,
                  // color: Colors.yellow,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        primary: Color.fromRGBO(253, 204, 77, 1.0)),
                    child: Text(
                      "Sign Up",
                      style: Theme.of(context).textTheme.button,
                    ),
                    onPressed: () async {
                      if (_formKey.currentState.validate()) {
                        setState(() {
                          loading = true;
                        });
                        dynamic result =
                            await _authService.registerWithEmailAndPassword(
                                email: email,
                                password: password,
                                firstName: firstName,
                                lastName: lastName);
                        if (result == null) {
                          setState(() {
                            error = 'Something is wrong';
                            loading = false;
                          });
                        }
                      } else {
                        print("Some Error");
                      }
                    },
                  ),
                ),
              ],
            ),
          );
  }
}
