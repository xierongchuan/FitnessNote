import 'package:firebase_auth/firebase_auth.dart';

class UserD {
  late String id;

  UserD.fromFirebase(User user) {
    id = user.uid;
  }
}