import 'package:fitnessnote/pages/landing.dart';
import 'package:fitnessnote/services/auth.dart';
import 'package:flutter/material.dart';
import 'package:fitnessnote/gtl.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:provider/provider.dart';

import 'domains/person.dart';
import 'pages/HomePage.dart';
import 'pages/authPage.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  
    runApp(StreamProvider<Person?>.value(
      initialData: null,
      value: AuthService().currentUser,
      child: MaterialApp(
        title: 'Fitness Note',
        theme: ThemeData(
          primaryColor: mGrey,
        ),
        initialRoute: '/', // Выбор главной странички.
        routes: {
          '/': (context) => LandingPage()
        },
      )
    ));
}