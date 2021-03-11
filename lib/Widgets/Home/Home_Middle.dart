import 'package:flutter/material.dart';

import '../my_task_card.dart';

class HomeMiddleDashboard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        color: Color.fromRGBO(252, 239, 249, 1),
        child: Padding(
          padding: EdgeInsets.all(70.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              //TODO:  Today's Tasks,
              Text(
                "Today's Tasks",
                style: TextStyle(color: Colors.black, fontSize: 20.0),
              ),
              //TODO:  Tasks List
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  //TODO:  Tasks List
                  MyTaskCard(),
                ],
              ),
              //TODO:  Upcoming Tasks
              Text(
                "Upcoming Tasks",
                style: TextStyle(color: Colors.black, fontSize: 20.0),
              ),
              //TODO:  Tasks List
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  //TODO:  Tasks List
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
