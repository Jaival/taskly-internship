import 'package:flutter/material.dart';
import '../Widgets/Tasks/TasksView.dart';

class Tasks extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return TaskView();
    // return StreamProvider<List<TaskData>>.value(
    //   initialData: null,
    //   value: DatabaseService(uid: user.uid).streamTaskData(),
    //   child: TaskView(),
    // );
  }
}
