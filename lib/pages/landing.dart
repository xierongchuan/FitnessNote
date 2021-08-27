import 'package:fitnessnote/domains/person.dart';
import 'package:fitnessnote/pages/authPage.dart';
import 'package:fitnessnote/pages/HomePage.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class LandingPage extends StatefulWidget {
  const LandingPage({ Key? key }) : super(key: key);

  @override
  _LandingPageState createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage> {
  @override
  Widget build(BuildContext context) {
    final Person? user = Provider.of<Person?>(context);
    final bool isLogginedIn = user != null;

    return isLogginedIn ? MainPage() : AuthPage();
  }
}