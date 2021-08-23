import 'package:fitnessnote/pages/landing.dart';
import 'package:flutter/material.dart';
import 'package:fitnessnote/gtl.dart';
import 'package:firebase_core/firebase_core.dart';

import 'pages/mainPage.dart';
import 'pages/authPage.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MaterialApp(
    title: 'Fitness Note',
    theme: ThemeData(
      primaryColor: mGrey,
    ),
    initialRoute: '/', // Выбор главной странички.
    routes: {
      '/': (context) => LandingPage()
    },
  ));
}