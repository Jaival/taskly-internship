import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CreateTask extends StatelessWidget {
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
          padding: EdgeInsets.symmetric(vertical: 70.0, horizontal: 100.0),
          child: Column(
            // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                margin: EdgeInsets.only(bottom: 20.0),
                child: Text(
                  "Create Task",
                  style: TextStyle(color: Colors.black, fontSize: 50),
                ),
              ),
              //TODO:Task Name
              Container(
                margin: EdgeInsets.symmetric(vertical: 12.0),
                width: 250,
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
                    labelText: "Task Name",
                    labelStyle: Theme.of(context)
                        .textTheme
                        .bodyText1
                        .copyWith(color: Colors.black),
                  ),
                ),
              ),
              //TODO:Task Description
              Container(
                margin: EdgeInsets.symmetric(vertical: 12.0),
                width: 250,
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
                    labelText: "Task Description",
                    labelStyle: Theme.of(context)
                        .textTheme
                        .bodyText1
                        .copyWith(color: Colors.black),
                  ),
                ),
              ),
              //TODO:Priority
              Container(
                margin: EdgeInsets.symmetric(vertical: 12.0),
                width: 250,
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
                    labelText: "Priority",
                    labelStyle: Theme.of(context)
                        .textTheme
                        .bodyText1
                        .copyWith(color: Colors.black),
                  ),
                ),
              ),
              //TODO:Status
              Container(
                margin: EdgeInsets.symmetric(vertical: 12.0),
                width: 250,
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
              Container(
                margin: EdgeInsets.symmetric(vertical: 12.0),
                width: 250,
                // color: Colors.yellow,
                child: Text("Sub Tasks",
                    style: TextStyle(color: Colors.black, fontSize: 20.0)),
              ),
              //TODO: Sub Tasks List
              Container(
                margin: EdgeInsets.symmetric(vertical: 12.0),
                width: 250,
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
                    labelText: "SubTask",
                    labelStyle: Theme.of(context)
                        .textTheme
                        .bodyText1
                        .copyWith(color: Colors.black),
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 20.0),
                child: TextButton(
                  style: TextButton.styleFrom(
                      padding: EdgeInsets.symmetric(
                          vertical: 20.0, horizontal: 80.0),
                      primary: Color.fromRGBO(188, 231, 253, 1.0),
                      backgroundColor: Color.fromRGBO(255, 203, 119, 1.0)),
                  onPressed: () {
                    // Navigator.pop(context);
                  },
                  child: Text(
                    "Create",
                    style: TextStyle(color: Colors.black),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
