import 'package:flutter/material.dart';
import 'package:taskly/Widgets/Project/ProjectView.dart';
import 'package:taskly/Widgets/Tasks/TasksView.dart';

import '../Widgets/Home/Home_Middle.dart';
import '../Widgets/Home/Home_Right.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _selectedIndex = 0;
  List<String> list = ["Home", "Tasks", "Project"];

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
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
      body: Row(
        children: [
          //TODO:  Left Side
          Container(
            width: (width / 5),
            color: Color.fromRGBO(54, 65, 86, 1),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                //TODO:  Logo
                Container(
                  padding: EdgeInsets.symmetric(vertical: 70.0),
                  child: Text(
                    "Taskly",
                    style: Theme.of(context)
                        .textTheme
                        .headline4
                        .copyWith(fontSize: 50),
                  ),
                ),
                Container(
                  height: 300.0,
                  padding:
                      EdgeInsets.symmetric(vertical: 50.0, horizontal: 50.0),
                  child: ListView.builder(
                      itemCount: list.length,
                      itemBuilder: (BuildContext context, int index) {
                        return ListTile(
                          title: Text(
                            list[index],
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 20.0,
                            ),
                          ),
                          onTap: () {
                            print(list[index]);
                            setState(() {
                              _selectedIndex = index;
                            });
                          }, // Handle your onTap here.
                        );
                      }),
                ),
              ],
            ),
          ),
          //TODO:  Middle
          _selectedIndex == 0
              ? HomeMiddleDashboard()
              : _selectedIndex == 1
                  ? Tasks()
                  : _selectedIndex == 2
                      ? Project()
                      : Container(
                          color: Colors.black,
                        ),
          // HomeMiddleDashboard(),
          //TODO: Right Side
          HomeRightDashboard(
            width: width,
          ),
        ],
      ),
    );
  }
}
