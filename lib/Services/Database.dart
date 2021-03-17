import 'package:cloud_firestore/cloud_firestore.dart';

class DatabaseService {
  final String uid;

  DatabaseService({this.uid});

// collection reference
  final CollectionReference myCollectionUser =
      FirebaseFirestore.instance.collection('User');

  // set User Profile Data
  Future updateUserData(
      {String email, String firstName, String lastName}) async {
    return await myCollectionUser
        .doc(uid)
        .set({'email': email, 'lastName': lastName, 'firstName': firstName});
  }
}
