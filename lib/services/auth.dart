import 'package:firebase_auth/firebase_auth.dart';
import 'package:fitnessnote/domains/person.dart';
import 'package:fitnessnote/gtl.dart';

class AuthService  {
  final FirebaseAuth _fAuth = FirebaseAuth.instance;

  Future logInWithEmailAndPassword(String email, String password) async {
    try {
      UserCredential result = await _fAuth.signInWithEmailAndPassword(email: email, password: password);
      User user = result.user!;
      return Person.fromFirebase(user);
    } catch (e) {
      print(e);
      return null;
    }
  }

  Future registerWithEmailAndPassword(String email, String password) async {
    try {
      UserCredential result = await _fAuth.createUserWithEmailAndPassword(email: email, password: password);
      User user = result.user!;
      return Person.fromFirebase(user);
    } catch (e) {
      print(e);
      return null;
    }
  }

  Future logOut() async {
    await _fAuth.signOut();
  }

  Stream<Person> get currentUser {
    return _fAuth.authStateChanges()
      .map((User? user) => user != null ? Person.fromFirebase(user) : Person.fromFirebase(user!));
  }
}