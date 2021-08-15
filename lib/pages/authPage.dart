import 'package:fitnessnote/gtl.dart';

import 'package:flutter/material.dart';

class AuthPage extends StatefulWidget {
  const AuthPage({Key? key}) : super(key: key);

  @override
  _AuthPageState createState() => _AuthPageState();
}

class _AuthPageState extends State<AuthPage> {
  @override
  Widget build(BuildContext context) {

    Widget _logo() {
      return Padding(
        padding: EdgeInsets.only(top: 100),
        child: Container(
          child: Align(
            child: mText30('Fitness Note', fontWeight: FontWeight.bold),
          ),
        ),
      );
    }

    Widget _form(String label, void func()) {
      return Container(
        child: Column(
          children: <Widget>[
            Padding(
              padding: EdgeInsets.only(bottom: 20, top: 10,),
              child: mText20('Email'),
            ),
            Padding(
              padding: EdgeInsets.only(bottom: 20),
              child: mText20('Password'),
            ),
            SizedBox(height: 10,),
            Padding(
              padding: EdgeInsets.only(right: 20, left: 20,),
              child: Container(
                height: 50,
                width: MediaQuery.of(context).size.width,
                child: mText20(label),
              ),
            ),
          ],
        ),
      );
    }

    return Scaffold(
      backgroundColor: mGrey,
      body: Column(
        children: <Widget>[
          _logo(),
          _form('Login', (){}),
        ],
      ),
    );
  }
}
