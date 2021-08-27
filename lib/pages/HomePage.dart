import 'dart:async';
import 'dart:io';
import 'package:fitnessnote/services/auth.dart';
import 'package:flutter/material.dart';
import 'package:desktop_window/desktop_window.dart';
import 'package:fitnessnote/gtl.dart';

import 'subPage/workoutsSubPage.dart';

class MainPage extends StatefulWidget {
  const MainPage({ Key? key }) : super(key: key);

  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {

  @override
  void initState() {
    super.initState();
    update();
  }

  void update() {
    windowAction();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        backgroundColor: mDarkGrey,
        appBar: AppBar(
          backgroundColor: mGrey,
          title: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            
            children: [
              mText20('Fitness Note', size: 25.0),
            ]
          ),
          actions: <Widget>[
            mButton(
              onPressed: () {
                AuthService().logOut();
              }, 
              paddingTop: 10,
              paddingBottom: 10,
              paddingRight: 10,
              paddingLeft: 10,
              child: mIcon(Icons.supervised_user_circle)
            ),
          ],
        ),

        body: WorkoutsSubPage(),

      )
    );
  }

  void windowAction() async{
    // double width = MediaQuery.of(context).size.width ;
    // double height = MediaQuery.of(context).size.height;

    // if (width > 420) {
    //   setState(() {
    //     isActiveTabBarText = true;
    //   });
    // } else {
    //   setState(() {
    //     isActiveTabBarText = false;
    //   });
    // }

    if(Platform.isWindows || Platform.isLinux || Platform.isMacOS) {
      DesktopWindow.setMinWindowSize(Size(470, 590));
    }
  }

}