import 'package:firebase_auth/firebase_auth.dart';
import 'package:fitnessnote/domains/user.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class AuthService  {
  final FirebaseAuth _fAuth = FirebaseAuth.instance;

  Future logInWithEmailAndPassword(String email, String password) async {
    try {
      UserCredential result = await _fAuth.signInWithEmailAndPassword(email: email, password: password);
      User? user = result.user;
      return UserD.fromFirebase(user!);
    } catch (e) {
      return null;
    }
  }

  Future registerWithEmailAndPassword(String email, String password) async {
    try {
      UserCredential result = await _fAuth.createUserWithEmailAndPassword(email: email, password: password);
      User? user = result.user;
      return UserD.fromFirebase(user!);
    } catch (e) {
      return null;
    }
  }

  Future logOut() async {
    await _fAuth.signOut();
  }

  Stream get currentUser {
    return _fAuth.authStateChanges()
      .map((User? user) => user != null ? UserD.fromFirebase(user) : UserD.fromFirebase(user!));
  }
}