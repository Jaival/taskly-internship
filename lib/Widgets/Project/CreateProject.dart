import 'package:flutter/material.dart';

class CreateProject extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Taskly"),
        elevation: null,
        actions: [
          TextButton.icon(
            style: TextButton.styleFrom(padding: EdgeInsets.all(20.0)),
            onPressed: () {
              print("pressed");
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
      body: Container(
        width: double.infinity,
        height: double.infinity,
        color: Color.fromRGBO(252, 239, 249, 1),
        child: Padding(
          padding: EdgeInsets.symmetric(vertical: 100.0, horizontal: 100.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                child: Text(
                  "Create Project",
                  style: TextStyle(color: Colors.black),
                ),
              ),
              //TODO:Project Name
              Container(
                margin: EdgeInsets.symmetric(vertical: 12.0),
                width: 200,
                // color: Colors.yellow,
                child: TextField(
                  // controller: _emailController,
                  style: Theme.of(context)
                      .textTheme
                      .bodyText1
                      .copyWith(color: Colors.black),
                  cursorColor: Colors.black,
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    enabledBorder: InputBorder.none,
                    filled: true,
                    fillColor: Color.fromRGBO(196, 196, 196, 0.42),
                    labelText: "Project Name",
                    labelStyle: Theme.of(context)
                        .textTheme
                        .bodyText1
                        .copyWith(color: Colors.black),
                  ),
                ),
              ),
              //TODO:Project Description
              Container(
                margin: EdgeInsets.symmetric(vertical: 12.0),
                width: 200,
                // color: Colors.yellow,
                child: TextField(
                  // controller: _emailController,
                  style: Theme.of(context)
                      .textTheme
                      .bodyText1
                      .copyWith(color: Colors.black),
                  cursorColor: Colors.black,
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    enabledBorder: InputBorder.none,
                    filled: true,
                    fillColor: Color.fromRGBO(196, 196, 196, 0.42),
                    labelText: "Project Description",
                    labelStyle: Theme.of(context)
                        .textTheme
                        .bodyText1
                        .copyWith(color: Colors.black),
                  ),
                ),
              ),
              //TODO:Status Drop Down
              Container(
                margin: EdgeInsets.symmetric(vertical: 12.0),
                width: 200,
                // color: Colors.yellow,
                child: TextField(
                  // controller: _emailController,
                  style: Theme.of(context)
                      .textTheme
                      .bodyText1
                      .copyWith(color: Colors.black),
                  cursorColor: Colors.black,
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    enabledBorder: InputBorder.none,
                    filled: true,
                    fillColor: Color.fromRGBO(196, 196, 196, 0.42),
                    labelText: "Status",
                    labelStyle: Theme.of(context)
                        .textTheme
                        .bodyText1
                        .copyWith(color: Colors.black),
                  ),
                ),
              ),
              //TODO:Team Member
              Container(
                margin: EdgeInsets.symmetric(vertical: 12.0),
                width: 200,
                // color: Colors.yellow,
                child: Text(
                  "Team Members",
                  style: TextStyle(color: Colors.black),
                ),
              ),
              //TODO:Add Button
              // Container(
              //   width: 200,
              //   // color: Colors.yellow,
              //   child: TextField(
              //     decoration: InputDecoration(labelText: "Add Button"),
              //   ),
              // ),
              //TODO:Team Member List
              Container(
                margin: EdgeInsets.symmetric(vertical: 12.0),
                width: 200,
                // color: Colors.yellow,
                child: TextField(
                  // controller: _emailController,
                  style: Theme.of(context)
                      .textTheme
                      .bodyText1
                      .copyWith(color: Colors.black),
                  cursorColor: Colors.black,
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    enabledBorder: InputBorder.none,
                    filled: true,
                    fillColor: Color.fromRGBO(196, 196, 196, 0.42),
                    labelText: "Team Member",
                    labelStyle: Theme.of(context)
                        .textTheme
                        .bodyText1
                        .copyWith(color: Colors.black),
                  ),
                ),
              ),
              //TODO:Create Button
              TextButton(
                style: TextButton.styleFrom(
                    padding:
                        EdgeInsets.symmetric(vertical: 20.0, horizontal: 40.0),
                    primary: Color.fromRGBO(188, 231, 253, 1.0),
                    backgroundColor: Color.fromRGBO(255, 203, 119, 1.0)),
                onPressed: () {
                  Navigator.pop(context);
                },
                child: Text(
                  "Create",
                  style: TextStyle(color: Colors.black),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
