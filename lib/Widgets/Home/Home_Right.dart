import 'package:flutter/material.dart';

class HomeRightDashboard extends StatelessWidget {
  final double width;

  HomeRightDashboard({this.width});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width / 5,
      child: Column(
        children: [
          //TODO:  Profile(Pic and button)
          Container(
            padding: EdgeInsets.only(top: 20.0, right: 20.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                CircleAvatar(
                  child: Text("J"),
                ),
                IconButton(icon: Icon(Icons.arrow_drop_down), onPressed: () {})
              ],
            ),
          ),
          //TODO:  Information about projects and tasks
          Padding(
            padding: EdgeInsets.only(
                top: 150.0, left: 50.0, right: 15.0, bottom: 30.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                //TODO:  Total Projects
                Padding(
                  padding: EdgeInsets.only(right: 20.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Total Projects",
                        style: Theme.of(context)
                            .textTheme
                            .bodyText2
                            .copyWith(color: Colors.black),
                      ),
                      Row(
                        children: [
                          Icon(Icons.double_arrow_outlined),
                          Text(
                            "4",
                            style: Theme.of(context)
                                .textTheme
                                .bodyText2
                                .copyWith(color: Colors.black),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
                //TODO:  Completed
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Completed",
                      style: Theme.of(context)
                          .textTheme
                          .bodyText2
                          .copyWith(color: Colors.black),
                    ),
                    Row(
                      children: [
                        Icon(Icons.double_arrow_outlined),
                        Text(
                          "4",
                          style: Theme.of(context)
                              .textTheme
                              .bodyText2
                              .copyWith(color: Colors.black),
                        ),
                      ],
                    )
                  ],
                ),
              ],
            ),
          ),
          //TODO:  Information about projects and tasks
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 50.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                //TODO: In Progress
                Padding(
                  padding: EdgeInsets.only(right: 20.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "In Progress",
                        style: Theme.of(context)
                            .textTheme
                            .bodyText2
                            .copyWith(color: Colors.black),
                      ),
                      Row(
                        children: [
                          Icon(Icons.double_arrow_outlined),
                          Text(
                            "4",
                            style: Theme.of(context)
                                .textTheme
                                .bodyText2
                                .copyWith(color: Colors.black),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
                //TODO:  Out Of Schedule
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Out Of \nSchedule",
                      style: Theme.of(context)
                          .textTheme
                          .bodyText2
                          .copyWith(color: Colors.black),
                    ),
                    Row(
                      children: [
                        Icon(Icons.double_arrow_outlined),
                        Text(
                          "4",
                          style: Theme.of(context)
                              .textTheme
                              .bodyText2
                              .copyWith(color: Colors.black),
                        ),
                      ],
                    )
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
      color: Color.fromRGBO(145, 245, 173, 1),
    );
  }
}
