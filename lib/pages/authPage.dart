import 'package:flutter/material.dart';
import 'package:fitnessnote/gtl.dart';

class AuthPage extends StatefulWidget {
  const AuthPage({Key? key}) : super(key: key);

  @override
  _AuthPageState createState() => _AuthPageState();
}

class _AuthPageState extends State<AuthPage> {

  TextEditingController _emailController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();

  String _email = '';
  String _password = '';
  bool showLogin = true;

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
              child: mTextField(
                icon: mIcon(Icons.email),
                hint: "Email",
                controller: _emailController,
                obscure: false,
              ),
            ),
            Padding(
              padding: EdgeInsets.only(bottom: 20),
              child: mTextField(
                icon: mIcon(Icons.lock),
                hint: "Password",
                controller: _passwordController,
                obscure: true,
              ),
            ),
            SizedBox(height: 10,),
            Padding(
              padding: EdgeInsets.only(right: 20, left: 20,),
              child: Container(
                height: 50,
                width: MediaQuery.of(context).size.width,
                child: mButton(
                  child: mText20(label),
                  onPressed: func,
                ),
              ),
            ),
          ],
        ),
      );
    }

    void _loginOrRegisterUser() {
      _email = _emailController.text;
      _password = _passwordController.text;

      _emailController.clear();
      _passwordController.clear();
    }

    return Scaffold(
      backgroundColor: mGrey,
      body: Column(
        children: <Widget>[
          _logo(),
          _form('Login or Register', _loginOrRegisterUser),
        ],
      ),
    );
  }
}
