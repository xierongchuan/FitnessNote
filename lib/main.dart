import 'package:fitnessnote/services/auth.dart';
import 'package:flutter/material.dart';
import 'package:fitnessnote/gtl.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:provider/provider.dart';

import 'pages/HomePage.dart';
import 'pages/authPage.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  
  runApp(MaterialApp(
    title: 'Fitness Note',
    theme: ThemeData(
      primaryColor: mGrey,
    ),
    initialRoute: '/', // Выбор главной странички.
    routes: {
      '/': (context) => MainPage()
    },
  ));
}