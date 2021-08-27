import 'package:firebase_auth/firebase_auth.dart';

class Person{
  late String id;

  Person.fromFirebase(User user) {
    id = user.uid;
  }
}