import 'package:flutter/material.dart';

import '../my_task_card.dart';

class Project extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        color: Color.fromRGBO(252, 239, 249, 1),
        child: Padding(
          padding: EdgeInsets.symmetric(vertical: 50.0, horizontal: 75.0),
          child: Column(crossAxisAlignment: CrossAxisAlignment.start,
              // mainAxisAlignment: MainAxisAlignment.start,
              children: [
                //TODO:  Project Name and  New Project
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Project",
                      style: TextStyle(color: Colors.black),
                    ),
                    //TODO:New Task Button
                    FlatButton(
                      onPressed: () {},
                      child: Text(
                        "New Project",
                        style: TextStyle(color: Colors.black),
                      ),
                    ),
                  ],
                ),
                //TODO: Tasks
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 15.0),
                  child: Text(
                    "Tasks",
                    style: TextStyle(color: Colors.black),
                  ),
                ),
                //TODO:  Tasks List Name
                Container(
                  padding: EdgeInsets.symmetric(vertical: 10.0),
                  child: Column(
                    // mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Not Started",
                        style: TextStyle(color: Colors.black),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          MyTaskCard(),
                          MyTaskCard(),
                          MyTaskCard(),
                        ],
                      ),
                    ],
                  ),
                ),
                //TODO:  Work In Progress
                Container(
                  padding: EdgeInsets.symmetric(vertical: 10.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Work In Progress",
                        style: TextStyle(color: Colors.black),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          MyTaskCard(),
                          MyTaskCard(),
                          MyTaskCard(),
                        ],
                      ),
                    ],
                  ),
                ),
                //TODO:  Completed
                Container(
                  padding: EdgeInsets.symmetric(vertical: 10.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Completed",
                        style: TextStyle(color: Colors.black),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          MyTaskCard(),
                          MyTaskCard(),
                          MyTaskCard(),
                        ],
                      ),
                    ],
                  ),
                ),
              ]),
        ),
      ),
    );
  }
}
