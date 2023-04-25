import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';

class DBInterface {
  final FirebaseAuth _firebaseAuth = FirebaseAuth.instance;

  User? get currentUser => _firebaseAuth.currentUser;

  // Retrieving the user
  Stream<User?> get authStateChanges => _firebaseAuth.authStateChanges();

  /// Example of adding info into the database, this will be used for the sign up page
  Future addUserInfo(String userId, Map<String, dynamic> userInfoMap) async {
    return FirebaseFirestore.instance
        .collection("users")
        .doc(userId)
        .set(userInfoMap)
        .catchError((e) {
      print(e.toString());
    });
  }

  /// Signs in the user
  Future<void> signIn({required String email, required String password}) async {
    await _firebaseAuth.signInWithEmailAndPassword(
        email: email, password: password);
  }

  /// Signs up the userand adds the user info to the database
  Future<void> signUp(
      {required String email,
      required String password,
      String? name,
      String? role}) async {
    UserCredential userCredential = await _firebaseAuth
        .createUserWithEmailAndPassword(email: email, password: password);
    // Updating Display Name
    await userCredential.user!.updateProfile(displayName: name);

    // adding user info to the database
    Map<String, dynamic> userInfoMap = {
      "name": name,
      "email": email,
      "role": role,
    };

    await addUserInfo(userCredential.user!.uid, userInfoMap);
  }

  /// Signs out the user
  Future<void> signOut() async {
    await _firebaseAuth.signOut();
  }
}
