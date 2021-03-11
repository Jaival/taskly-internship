import 'package:flutter/material.dart';

import '../my_task_card.dart';
import 'CreateProject.dart';

class ProjectView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: SingleChildScrollView(
        child: Container(
          color: Color.fromRGBO(252, 239, 249, 1),
          child: Padding(
            padding: EdgeInsets.symmetric(vertical: 50.0, horizontal: 70.0),
            child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                // mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  //TODO:  Project Name and  New Project
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Project Name",
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 35.0,
                            fontWeight: FontWeight.bold),
                      ),
                      //TODO:New Project Button
                      TextButton.icon(
                        style: TextButton.styleFrom(
                          primary: Colors.blueGrey,
                          backgroundColor: Color.fromRGBO(188, 231, 253, 1.0),
                        ),
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (BuildContext context) =>
                                    CreateProject(),
                              ));
                        },
                        label: Padding(
                          padding: EdgeInsets.only(
                              right: 5.0, top: 10.0, bottom: 10.0),
                          child: Text("New Project",
                              style: Theme.of(context).textTheme.button),
                        ),
                        icon: Padding(
                          padding: EdgeInsets.only(left: 5.0),
                          child: Icon(
                            Icons.add,
                            color: Colors.black,
                          ),
                        ),
                      ),
                    ],
                  ),
                  //TODO: Tasks
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: 15.0),
                    child: Text(
                      "Tasks",
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 25.0,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  //TODO:  Tasks List Name
                  Container(
                    padding: EdgeInsets.symmetric(vertical: 10.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Not Started",
                            style:
                                TextStyle(color: Colors.black, fontSize: 16.0)),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
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
                        Text("Work In Progress",
                            style:
                                TextStyle(color: Colors.black, fontSize: 16.0)),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
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
                          style: TextStyle(color: Colors.black, fontSize: 16.0),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            MyTaskCard(),
                          ],
                        ),
                      ],
                    ),
                  ),
                ]),
          ),
        ),
      ),
    );
  }
}
