import 'package:flutter/material.dart';

import 'ProjectView.dart';

class CreateProject extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Color.fromRGBO(252, 239, 249, 1),
        child: Padding(
          padding: EdgeInsets.symmetric(vertical: 100.0, horizontal: 100.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  //TODO:Left Column
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
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
                    ],
                  ),
                  //TODO:Right Column
                  //TODO:Calender
                  Container(
                    width: 200,
                    // color: Colors.yellow,
                    child: Text(
                      "Calender",
                      style: TextStyle(color: Colors.black),
                    ),
                  ),
                ],
              ),
              FlatButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (BuildContext context) => Project(),
                      ));
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
