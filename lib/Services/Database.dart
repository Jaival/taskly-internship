import 'package:cloud_firestore/cloud_firestore.dart';
import '../Model/ProjectModel.dart';
import '../Model/TaskModel.dart';

class DatabaseService {
  final String uid;

  DatabaseService({this.uid});

// Collection References
  final CollectionReference myCollectionUser =
      FirebaseFirestore.instance.collection('User');

  final CollectionReference myCollectionProjects =
      FirebaseFirestore.instance.collection('Projects');

  final CollectionReference myCollectionTasks =
      FirebaseFirestore.instance.collection('Tasks');

  // Set User Profile Data
  Future updateUserData(
      {String email, String firstName, String lastName}) async {
    return await myCollectionUser
        .doc(uid)
        .set({'email': email, 'lastName': lastName, 'firstName': firstName});
  }

  // Set Project Data
  Future setProjectData() async {
    return await myCollectionProjects
        .doc(uid)
        .collection("userProjects")
        .doc()
        .set({
      'projectName': "Welcome",
      'projectDesc': "This is your first project"
    });
  }

  // Set Task Data
  Future setTasksData() {
    return myCollectionTasks
        .doc(uid)
        .collection("userTasks")
        .doc()
        .set({'taskName': "Welcome", 'taskDesc': "This is your first task"});
  }

  // Create Project Data
  Future createProjectData(
      {String projectName,
      String projectDesc,
      String priority,
      String status}) async {
    return await myCollectionProjects
        .doc(uid)
        .collection("userProjects")
        .doc()
        .set({
      'projectName': projectName,
      'projectDesc': projectDesc,
      'status': status,
      'priority': priority
    });
  }

  // Create ProjectTask Data
  Future createProjectTaskData(
      {String taskName,
      String taskDesc,
      String projectId,
      String projectName,
      String priority,
      String status}) async {
    return await myCollectionTasks.doc(uid).collection("userTasks").doc().set({
      'taskName': taskName,
      'taskDesc': taskDesc,
      'projectId': projectId,
      'status': status,
      'priority': priority,
      'projectName': projectName
    });
  }

  // Create Task Data
  Future createTaskData(
      {String taskName,
      String taskDesc,
      String priority,
      String status}) async {
    return await myCollectionTasks.doc(uid).collection("userTasks").doc().set({
      'taskName': taskName,
      'taskDesc': taskDesc,
      'status': status,
      'priority': priority
    });
  }

  // Update Project Data
  Future updateProjectData(
      {String docId,
      String projectName,
      String projectDesc,
      String priority,
      String status}) async {
    return await myCollectionProjects
        .doc(uid)
        .collection("userProjects")
        .doc(docId)
        .update({
      'projectName': projectName,
      'projectDesc': projectDesc,
      'status': status,
      'priority': priority
    });
  }

  // Update Task Data
  Future updateTasksData(
      {String docId,
      String taskName,
      String taskDesc,
      String priority,
      String status}) async {
    return await myCollectionTasks
        .doc(uid)
        .collection("userTasks")
        .doc(docId)
        .update({
      'taskName': taskName,
      'taskDesc': taskDesc,
      'status': status,
      'priority': priority
    });
  }

  // Delete Project Data
  Future deleteProjectData({String docId}) async {
    return await myCollectionProjects
        .doc(uid)
        .collection("userProjects")
        .doc(docId)
        .delete();
  }

  Future deleteProjectTaskData({String docId}) async {
    return await myCollectionTasks
        .doc(uid)
        .collection("userTasks")
        .where('projectId', isEqualTo: docId)
        .snapshots()
        .forEach((snapshot) {
      snapshot.docs.forEach((document) {
        print(document.id);
        deleteTasksData(docId: document.id);
      });
    });
  }

  // Delete Task Data
  Future deleteTasksData({String docId}) async {
    return await myCollectionTasks
        .doc(uid)
        .collection("userTasks")
        .doc(docId)
        .delete();
  }

  // Stream

  // Function to project stream data to project data model
  List<ProjectData> _listProjectData(QuerySnapshot snapshot) {
    return snapshot.docs.map((doc) {
      Map<String, dynamic> data = doc.data();
      return ProjectData(
        projectId: doc.id,
        projectName: data['projectName'],
        projectDesc: data['projectDesc'],
        priority: data['priority'],
        status: data['status'],
      );
    }).toList();
  }

  // Get Stream of Project data
  Stream<List<ProjectData>> streamProjectData() {
    return myCollectionProjects
        .doc(uid)
        .collection("userProjects")
        .snapshots()
        .map(_listProjectData);
  }

  // Function to project stream data to project data model
  List<TaskData> _listTaskData(QuerySnapshot snapshot) {
    return snapshot.docs.map((doc) {
      Map<String, dynamic> data = doc.data();
      return TaskData(
        projectId: data['projectId'] ?? '',
        projectName: data['projectName'] ?? '',
        taskId: doc.id,
        taskName: data['taskName'],
        taskDesc: data['taskDesc'],
        priority: data['priority'],
        status: data['status'],
      );
    }).toList();
  }

  // Get Stream of Project Task data
  Stream<List<TaskData>> streamProjectTaskData({String docId}) {
    return myCollectionTasks
        .doc(uid)
        .collection("userTasks")
        .where('projectId', isEqualTo: docId)
        .snapshots()
        .map(_listTaskData);
  }

  // Get Stream of Task data
  Stream<List<TaskData>> streamTaskData() {
    return myCollectionTasks
        .doc(uid)
        .collection("userTasks")
        .snapshots()
        .map(_listTaskData);
  }

  // Future

  // Get Future of Project data
  Future<List<ProjectData>> futureProjectData() async {
    return await myCollectionProjects
        .doc(uid)
        .collection("userProjects")
        .get()
        .then(_listProjectData);
  }

  // Get Future of Project Task data
  Future<QuerySnapshot> futureProjectTaskData({String docId}) {
    return myCollectionTasks
        .doc(uid)
        .collection("userTasks")
        .where('projectId', isEqualTo: docId)
        .get();
  }

  // Get Future of Task data
  Future<List<TaskData>> futureTaskData() async {
    return await myCollectionTasks
        .doc(uid)
        .collection("userTasks")
        .get()
        .then(_listTaskData);
  }
}
