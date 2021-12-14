import 'package:flutter_styled_toast/flutter_styled_toast.dart';
import 'package:fitnessnote/services/auth.dart';
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

  AuthService _authService = AuthService();

  @override
  Widget build(BuildContext context) {

    Widget _logo() {
      return Padding(
        padding: EdgeInsets.only(top: 75),
        child: Container(
          child: Align(
            child: mText30('Fitness Note', fontWeight: FontWeight.bold),
          ),
        ),
      );
    }

    Widget _form(String label, void func()) {
      return Container(
        padding: EdgeInsets.only(top: 40),
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

    void _logInUser() async {
      _email = _emailController.text;
      _password = _passwordController.text;

      if (_email.isEmpty || _password.isEmpty) return; // Если условие не выполнено те код дальше не выполнится в этой функции

      String user = "";
      if(user == null) {
        showToast("Can't Log In you! Please check you email/password",
          context: context,
          animation: StyledToastAnimation.fade,
          reverseAnimation: StyledToastAnimation.fade,
          position: StyledToastPosition.center,
          backgroundColor: mRed,
          duration: Duration(seconds: 6),
        );
      }else {
        _emailController.clear();
        _passwordController.clear();
      }
    }

    void _registerUser() async {
      _email = _emailController.text;
      _password = _passwordController.text;

      if (_email.isEmpty || _password.isEmpty) return; // Если условие не выполнено те код дальше не выполнится в этой функции

      String user = "";
      if(user == null) {
      showToast("Can't Register you! Please check you email/password. \nPassword should be at least 6 characters.",
        context: context,
        animation: StyledToastAnimation.fade,
        reverseAnimation: StyledToastAnimation.fade,
        position: StyledToastPosition.center,
        backgroundColor: mRed,
        duration: Duration(seconds: 6),
      );
      }else {
        _emailController.clear();
        _passwordController.clear();
      }
    }

    return Scaffold(
      backgroundColor: mGrey,
      body: Column(
        children: <Widget>[
          _logo(),
          (
            showLogin ? Column(
              children: <Widget>[
                _form('Log In', _logInUser),
                Padding(
                  padding: EdgeInsets.only(top: 20),
                  child: GestureDetector(
                    child: mText15('Not registered yet? Register', underline: true),
                    onTap: () {
                      setState(() {
                        showLogin = false;
                      });
                    },
                  ),
                ),
              ],
            )
            : Column(
              children: <Widget>[
                _form('Register', _registerUser),
                Padding(
                  padding: EdgeInsets.only(top: 20),
                  child: GestureDetector(
                    child: mText15('Already registered yet? Log In', underline: true),
                    onTap: () {
                      setState(() {
                        showLogin = true;
                      });
                    },
                  ),
                ),
              ],
            )
          ),
        ],
      ),
    );
  }
}
