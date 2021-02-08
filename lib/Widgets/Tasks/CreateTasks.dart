import 'package:flutter/material.dart';

class CreateTask extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
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
                          "Create Task",
                          style: TextStyle(color: Colors.black),
                        ),
                      ),
                      //TODO:Task Name
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
                      Row(
                        children: [
                          //TODO:Sub Tasks
                          Container(
                            margin: EdgeInsets.symmetric(vertical: 12.0),
                            width: 200,
                            // color: Colors.yellow,
                            child: Text("Sub Tasks",
                                style: TextStyle(color: Colors.black)),
                          ),
                          SizedBox(
                            width: 50.0,
                          ),
                          //TODO:Add Button
                          Container(
                            margin: EdgeInsets.symmetric(vertical: 12.0),
                            width: 200,
                            // color: Colors.yellow,
                            child: Text("Add",
                                style: TextStyle(color: Colors.black)),
                          ),
                        ],
                      ),
                      //TODO: Sub Tasks List
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
                            labelText: "SubTask",
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
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      //TODO:Calender
                      Container(
                        width: 100,
                        // color: Colors.yellow,
                        child: Text(
                          "Calender",
                          style: TextStyle(color: Colors.black),
                        ),
                      ),
                      //TODO:Assigned To
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
                            labelText: "Assigned To",
                            labelStyle: Theme.of(context)
                                .textTheme
                                .bodyText1
                                .copyWith(color: Colors.black),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              FlatButton(
                onPressed: () {},
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
