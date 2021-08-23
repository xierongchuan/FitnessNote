import 'package:fitnessnote/pages/authPage.dart';
import 'package:fitnessnote/pages/mainPage.dart';
import 'package:flutter/material.dart';

class LandingPage extends StatefulWidget {
  const LandingPage({ Key? key }) : super(key: key);

  @override
  _LandingPageState createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage> {
  @override
  Widget build(BuildContext context) {
    final bool isLogginedIn = false;

    return isLogginedIn ? MainPage() : AuthPage();
  }
}