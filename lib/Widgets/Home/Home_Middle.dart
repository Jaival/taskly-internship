import 'package:flutter/material.dart';

import '../my_task_card.dart';

class HomeMiddleDashboard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        color: Color.fromRGBO(252, 239, 249, 1),
        child: Padding(
          padding: const EdgeInsets.all(100.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              //TODO:  Today's Tasks,
              Text(
                "Today's Tasks",
                style: TextStyle(color: Colors.black),
              ),
              //TODO:  Tasks List
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  //TODO:  Tasks List
                  MyTaskCard(),
                  SizedBox(
                    width: 20,
                  ),
                  MyTaskCard(),
                  SizedBox(
                    width: 20,
                  ),
                  MyTaskCard(),
                ],
              ),
              //TODO:  Upcoming Tasks
              Text(
                "Upcoming Tasks",
                style: TextStyle(color: Colors.black),
              ),
              //TODO:  Tasks List
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  //TODO:  Tasks List
                  MyTaskCard(),
                  SizedBox(
                    width: 20,
                  ),
                  MyTaskCard(),
                  SizedBox(
                    width: 20,
                  ),
                  MyTaskCard(),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
