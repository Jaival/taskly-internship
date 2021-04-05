import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../Model/ProjectModel.dart';
import '../../Model/User.dart';
import '../../Services/Database.dart';
import '../Widgets/Project/ProjectView.dart';

class Projects extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final user = Provider.of<MyUser>(context);

    return StreamProvider<List<ProjectData>>.value(
      initialData: null,
      value: DatabaseService(uid: user.uid).streamProjectData(),
      child: ProjectView(),
    );
  }
}
