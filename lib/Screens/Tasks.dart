import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../Model/TaskModel.dart';
import '../../Model/User.dart';
import '../../Services/Database.dart';
import '../Widgets/Tasks/TasksView.dart';

class Tasks extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final user = Provider.of<MyUser>(context);

    return StreamProvider<List<TaskData>>.value(
      initialData: null,
      value: DatabaseService(uid: user.uid).streamTaskData(),
      child: TaskView(),
    );
  }
}
