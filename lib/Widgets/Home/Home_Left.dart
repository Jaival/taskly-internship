import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeLeftDashboard extends StatelessWidget {
  final double width;

  HomeLeftDashboard({this.width});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: (width / 5),
      color: Color.fromRGBO(54, 65, 86, 1),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          //TODO:  Logo
          Container(
            padding: EdgeInsets.symmetric(vertical: 100.0),
            child: Text(
              "Taskly",
              style: Theme.of(context).textTheme.headline4,
            ),
          ),
          //TODO:  Home
          Container(
            padding: EdgeInsets.symmetric(vertical: 50.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                MaterialButton(
                  onPressed: () {},
                  child: Text(
                    "Home",
                    style: Theme.of(context)
                        .textTheme
                        .button
                        .copyWith(color: Colors.white),
                  ),
                  padding: EdgeInsets.all(15.0),
                ),
                //TODO:  Tasks
                MaterialButton(
                  onPressed: () {},
                  child: Text(
                    "Tasks",
                    style: Theme.of(context)
                        .textTheme
                        .button
                        .copyWith(color: Colors.white),
                  ),
                  padding: EdgeInsets.all(15.0),
                ),
                //TODO:  Projects
                MaterialButton(
                  onPressed: () {},
                  child: Text(
                    "Project",
                    style: Theme.of(context)
                        .textTheme
                        .button
                        .copyWith(color: Colors.white),
                  ),
                  padding: EdgeInsets.all(15.0),
                ),
                //TODO:  Settings
                // MaterialButton(
                //   onPressed: () {},
                //   child: Text(
                //     "Settings",
                //     style: Theme.of(context)
                //         .textTheme
                //         .button
                //         .copyWith(color: Colors.white),
                //   ),
                //   padding: EdgeInsets.all(15.0),
                // ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
