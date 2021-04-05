import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../Model/TaskModel.dart';
import '../../Model/User.dart';
import '../../Services/Database.dart';
import '../../Shared/CustomTile.dart';
import '../../Shared/DropDownData.dart';
import '../../Shared/Loading.dart';
import '../../Widgets/Tasks/CreateTasks.dart';

class CreateProject extends StatefulWidget {
  final String docId;
  final String name;
  final String description;

  final String priority;
  final String status;

  CreateProject(
      {this.docId, this.name, this.description, this.priority, this.status});

  @override
  _CreateProjectState createState() => _CreateProjectState();
}

class _CreateProjectState extends State<CreateProject> {
  final TextEditingController controllerName = TextEditingController();

  final TextEditingController controllerDesc = TextEditingController();

  final TextEditingController controllerTaskName = TextEditingController();

  final TextEditingController controllerTaskDesc = TextEditingController();

  String _selectedItemPriority;
  String _selectedItemStatus;
  String _selectedTaskItemPriority;
  String _selectedTaskItemStatus;

  @override
  void initState() {
    _selectedItemPriority = widget.priority;
    _selectedItemStatus = widget.status;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final user = Provider.of<MyUser>(context);

    controllerName.text = widget.name;
    controllerDesc.text = widget.description;

    return Scaffold(
      appBar: AppBar(
        title: Text("Taskly"),
        elevation: 0.0,
        // actions: [
        //   TextButton.icon(
        //     style: TextButton.styleFrom(padding: EdgeInsets.all(20.0)),
        //     onPressed: () async {
        //       await _authService.signOut();
        //     },
        //     icon: Icon(
        //       Icons.logout,
        //       color: Colors.white,
        //     ),
        //     label: Text(
        //       "Logout",
        //       style: TextStyle(color: Colors.white),
        //     ),
        //   )
        // ],
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.only(top: 50.0),
          // width: double.infinity,
          // height: double.infinity,
          color: Color.fromRGBO(252, 239, 249, 1),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              // Project
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Column(
                    // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        child: widget.docId == null
                            ? Text(
                                "Create Project",
                                style: TextStyle(
                                    color: Colors.black, fontSize: 50),
                              )
                            : Text(
                                "Update Project",
                                style: TextStyle(
                                    color: Colors.black, fontSize: 50),
                              ),
                      ),
                      // Project Name
                      Container(
                        margin: EdgeInsets.symmetric(vertical: 12.0),
                        width: 200,
                        // color: Colors.yellow,
                        child: TextField(
                          controller: controllerName,
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
                            labelText: "Project Name",
                            labelStyle: Theme.of(context)
                                .textTheme
                                .bodyText1
                                .copyWith(color: Colors.black),
                          ),
                        ),
                      ),
                      // Project Description
                      Container(
                        margin: EdgeInsets.symmetric(vertical: 12.0),
                        width: 200,
                        // color: Colors.yellow,
                        child: TextField(
                          controller: controllerDesc,
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
                            labelText: "Project Description",
                            labelStyle: Theme.of(context)
                                .textTheme
                                .bodyText1
                                .copyWith(color: Colors.black),
                          ),
                        ),
                      ),
                      widget.priority == null
                          ? Text(
                              "Task Not Created",
                              style: TextStyle(color: Colors.black),
                            )
                          : Text("Priority: " + widget.priority,
                              style: TextStyle(color: Colors.black)),
                      widget.status == null
                          ? Text(
                              "Task Not Created",
                              style: TextStyle(color: Colors.black),
                            )
                          : Text("Priority: " + widget.status,
                              style: TextStyle(color: Colors.black)),
                      // Priority
                      Container(
                        margin: EdgeInsets.symmetric(vertical: 12.0),
                        width: 200,
                        // color: Colors.yellow,
                        child: DropdownButton<String>(
                          underline: SizedBox(),
                          hint: Text("Select a Priority"),
                          value: _selectedItemPriority,
                          icon: RotatedBox(
                            quarterTurns: 1,
                            child: Icon(
                              Icons.play_arrow_rounded,
                              size: 20.0,
                            ),
                          ),
                          items:
                              DropDown().dropdownPriorityItems.map((priority) {
                            return DropdownMenuItem(
                              child: Text(priority),
                              value: priority,
                            );
                          }).toList(),
                          onChanged: (value) {
                            setState(() {
                              print(value);
                              _selectedItemPriority = value;
                            });
                          },
                        ),
                      ),
                      // Status
                      Container(
                        margin: EdgeInsets.symmetric(vertical: 12.0),
                        width: 200,
                        // color: Colors.yellow,
                        child: DropdownButton<String>(
                          underline: SizedBox(),
                          hint: Text("Select a status"),
                          value: _selectedItemStatus,
                          items: DropDown().dropdownStatusItems.map((status) {
                            return DropdownMenuItem(
                              child: Text(status),
                              value: status,
                            );
                          }).toList(),
                          icon: RotatedBox(
                            quarterTurns: 1,
                            child: Icon(
                              Icons.play_arrow_rounded,
                              size: 20.0,
                            ),
                          ),
                          onChanged: (value) {
                            setState(() {
                              _selectedItemStatus = value;
                              print(_selectedItemStatus);
                            });
                          },
                        ),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      Container(
                        margin: EdgeInsets.only(top: 20.0),
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            padding: EdgeInsets.symmetric(
                                vertical: 20.0, horizontal: 80.0),
                            primary: Color.fromRGBO(255, 203, 119, 1.0),
                          ),
                          onPressed: widget.docId == null
                              ? () async {
                                  await DatabaseService(uid: user.uid)
                                      .createProjectData(
                                    projectName: controllerName.text.toString(),
                                    projectDesc: controllerDesc.text.toString(),
                                    priority: _selectedItemPriority.toString(),
                                    status: _selectedItemStatus.toString(),
                                  );
                                  final snackBar = SnackBar(
                                    content: Text('Project Created'),
                                  );
                                  ScaffoldMessenger.of(context)
                                      .showSnackBar(snackBar);
                                  Navigator.pop(context);
                                }
                              : null,
                          child: Text(
                            "Create Project",
                            style: TextStyle(color: Colors.black),
                          ),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(top: 20.0),
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            padding: EdgeInsets.symmetric(
                                vertical: 20.0, horizontal: 80.0),
                            primary: Color.fromRGBO(255, 203, 119, 1.0),
                          ),
                          onPressed: widget.docId != null
                              ? () async {
                                  await DatabaseService(uid: user.uid)
                                      .updateProjectData(
                                    docId: widget.docId,
                                    projectName: controllerName.text.toString(),
                                    projectDesc: controllerDesc.text.toString(),
                                    priority: _selectedItemPriority.toString(),
                                    status: _selectedItemStatus.toString(),
                                  );
                                  final snackBar = SnackBar(
                                    content: Text('Project Updated'),
                                  );
                                  ScaffoldMessenger.of(context)
                                      .showSnackBar(snackBar);
                                  Navigator.pop(context);
                                }
                              : null,
                          child: Text(
                            "Update Project",
                            style: TextStyle(color: Colors.black),
                          ),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(top: 20.0),
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            padding: EdgeInsets.symmetric(
                                vertical: 20.0, horizontal: 80.0),
                            primary: Color.fromRGBO(255, 203, 119, 1.0),
                          ),
                          onPressed: widget.docId != null
                              ? () async {
                                  await DatabaseService(uid: user.uid)
                                      .deleteProjectData(docId: widget.docId);
                                  // await DatabaseService(uid: user.uid)
                                  //     .deleteProjectTaskData(docId: widget.docId);
                                  final snackBar = SnackBar(
                                    content: Text('Project Deleted'),
                                  );
                                  ScaffoldMessenger.of(context)
                                      .showSnackBar(snackBar);
                                  Navigator.pop(context);
                                }
                              : null,
                          child: Text(
                            "Delete Project",
                            style: TextStyle(color: Colors.black),
                          ),
                        ),
                      ),
                    ],
                  )
                ],
              ),
              // Project's Task's
              widget.docId == null
                  ? Text("")
                  : StreamBuilder<List<TaskData>>(
                      stream: DatabaseService(uid: user.uid)
                          .streamProjectTaskData(docId: widget.docId),
                      builder:
                          (context, AsyncSnapshot<List<TaskData>> snapshot) {
                        if (!snapshot.hasData) {
                          return Text(
                            "No Data",
                            style: TextStyle(color: Colors.black),
                          );
                        }
                        if (snapshot.connectionState ==
                            ConnectionState.active) {
                          if (snapshot.hasData) {
                            return Container(
                              margin: EdgeInsets.only(left: 10.0),
                              // width: 200,
                              height: 200,
                              child: ListView(
                                scrollDirection: Axis.horizontal,
                                children: snapshot.data.map<Widget>((data) {
                                  Color color;
                                  String priority = data.priority;

                                  if (priority == "Immediate") {
                                    color = Colors.red;
                                  } else if (priority == "High") {
                                    color = Colors.redAccent;
                                  } else if (priority == "Medium") {
                                    color = Colors.yellowAccent;
                                  } else if (priority == "Low") {
                                    color = Colors.greenAccent;
                                  }

                                  return Container(
                                    width: 200,
                                    height: 300,
                                    child: CustomTile(
                                      name: data.taskName,
                                      description: data.taskDesc,
                                      priority: data.priority,
                                      status: data.status,
                                      color: color,
                                      onTapped: () {
                                        Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                            builder: (BuildContext context) =>
                                                CreateTask(
                                              docId: data.taskId,
                                              name: data.taskName,
                                              description: data.taskDesc,
                                              priority: data.priority,
                                              status: data.status,
                                            ),
                                          ),
                                        );
                                      },
                                    ),
                                  );
                                }).toList(),
                              ),
                            );
                          }
                        } else {
                          return Text("Connection Closed");
                        }
                        return Loading();
                      }),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Column(
                    // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        child: Text(
                          "Create Project Task",
                          style: TextStyle(color: Colors.black, fontSize: 50),
                        ),
                      ),
                      // Task Name
                      Container(
                        margin: EdgeInsets.symmetric(vertical: 12.0),
                        width: 200,
                        // color: Colors.yellow,
                        child: TextField(
                          controller: controllerTaskName,
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
                      // Task Description
                      Container(
                        margin: EdgeInsets.symmetric(vertical: 12.0),
                        width: 200,
                        // color: Colors.yellow,
                        child: TextField(
                          controller: controllerTaskDesc,
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
                      // Priority
                      Container(
                        margin: EdgeInsets.symmetric(vertical: 12.0),
                        width: 200,
                        // color: Colors.yellow,
                        child: DropdownButton<String>(
                          underline: SizedBox(),
                          hint: Text("Select a Priority"),
                          value: _selectedTaskItemPriority,
                          icon: RotatedBox(
                            quarterTurns: 1,
                            child: Icon(
                              Icons.play_arrow_rounded,
                              size: 20.0,
                            ),
                          ),
                          items:
                              DropDown().dropdownPriorityItems.map((priority) {
                            return DropdownMenuItem(
                              child: Text(priority),
                              value: priority,
                            );
                          }).toList(),
                          onChanged: (value) {
                            setState(() {
                              print(value);
                              _selectedTaskItemPriority = value;
                            });
                          },
                        ),
                      ),
                      // Status
                      Container(
                        margin: EdgeInsets.symmetric(vertical: 12.0),
                        width: 200,
                        // color: Colors.yellow,
                        child: DropdownButton<String>(
                          underline: SizedBox(),
                          hint: Text("Select a status"),
                          value: _selectedTaskItemStatus,
                          items: DropDown().dropdownStatusItems.map((status) {
                            return DropdownMenuItem(
                              child: Text(status),
                              value: status,
                            );
                          }).toList(),
                          icon: RotatedBox(
                            quarterTurns: 1,
                            child: Icon(
                              Icons.play_arrow_rounded,
                              size: 20.0,
                            ),
                          ),
                          onChanged: (value) {
                            setState(() {
                              _selectedTaskItemStatus = value;
                              print(_selectedTaskItemStatus);
                            });
                          },
                        ),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      Container(
                        margin: EdgeInsets.only(top: 20.0),
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            padding: EdgeInsets.symmetric(
                                vertical: 20.0, horizontal: 80.0),
                            primary: Color.fromRGBO(255, 203, 119, 1.0),
                          ),
                          onPressed: widget.docId != null
                              ? () async {
                                  await DatabaseService(uid: user.uid)
                                      .createProjectTaskData(
                                    projectId: widget.docId,
                                    projectName: widget.name,
                                    taskName:
                                        controllerTaskName.text.toString(),
                                    taskDesc:
                                        controllerTaskDesc.text.toString(),
                                    priority:
                                        _selectedTaskItemPriority.toString(),
                                    status: _selectedTaskItemStatus.toString(),
                                  );
                                  final snackBar = SnackBar(
                                    content: Text('Project Task Created'),
                                  );
                                  ScaffoldMessenger.of(context)
                                      .showSnackBar(snackBar);
                                  Navigator.pop(context);
                                }
                              : null,
                          child: Text(
                            "Create Project Task",
                            style: TextStyle(color: Colors.black),
                          ),
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
