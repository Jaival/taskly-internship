import 'package:firebase_auth/firebase_auth.dart';

import '../Model/User.dart';
import 'Database.dart';

class AuthService {
  final FirebaseAuth _auth = FirebaseAuth.instance;

  MyUser _userFromFirebase(User user) {
    return user != null ? MyUser(uid: user.uid) : null;
  }

  //auth change user stream
  Stream<MyUser> get user {
    // return _auth.authStateChanges().map((User user) => _userFromFirebase(user));
    return _auth.authStateChanges().map(_userFromFirebase);
  }

//register email password
  Future registerWithEmailAndPassword(
      {String email,
      String password,
      String firstName,
      String lastName}) async {
    try {
      UserCredential result = await _auth.createUserWithEmailAndPassword(
          email: email, password: password);
      User user = result.user;

      // Create Document with UID when user registers for user collection
      await DatabaseService(uid: user.uid).updateUserData(
          email: email, firstName: firstName, lastName: lastName);

      // Create Document with UID when user registers for project collection
      await DatabaseService(uid: user.uid).setProjectData();

      // Create Document with UID when user registers for task collection
      await DatabaseService(uid: user.uid).setTasksData();

      return _userFromFirebase(user);
    } catch (e) {
      print(e.toString());
      return null;
    }
  }

//sign in email password
  Future signInWithEmailAndPassword(String email, String password) async {
    try {
      UserCredential result = await _auth.signInWithEmailAndPassword(
          email: email, password: password);
      User user = result.user;
      return _userFromFirebase(user);
    } catch (e) {
      print(e.toString());
      return null;
    }
  }

//sign out
  Future signOut() async {
    try {
      return await _auth.signOut();
    } catch (e) {
      print(e.toString());
      return null;
    }
  }
}
