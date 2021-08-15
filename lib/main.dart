import 'package:flutter/material.dart';
import 'package:fitnessnote/gtl.dart';

import 'pages/mainPage.dart';
import 'pages/authPage.dart';

void main() {
  runApp(MaterialApp(
    title: 'Fitness Note',
    theme: ThemeData(
      primaryColor: mGrey,
    ),
    initialRoute: '/', // Выбор главной странички.
    routes: {
      '/': (context) => AuthPage()
    },
  ));
}