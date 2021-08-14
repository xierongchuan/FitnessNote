import 'dart:async';
import 'dart:io';
import 'package:flutter/material.dart';
import 'package:desktop_window/desktop_window.dart';
import 'package:fitnessnote/gtl.dart';

import 'package:fitnessnote/pages/pageExtensions/workoutsExtension.dart';

class MainPage extends StatefulWidget {
  const MainPage({ Key? key }) : super(key: key);

  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {

  bool isActiveTabBarText = true;

  late Timer timer;

  @override
  void initState() {
    super.initState();
    timer = Timer.periodic(Duration(milliseconds: 10), (Timer t) => update());
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
              isActiveTabBarText ? mText20('Fitness Note', size: 25.0) : Container(),
            ]

          )
        ),

        body: WorkoutsExtension(),

      )
    );
  }

  windowAction() async{
    double width = MediaQuery.of(context).size.width ;
    // double height = MediaQuery.of(context).size.height;
    if (width > 420) {
      setState(() {
        isActiveTabBarText = true;
      });
    } else {
      setState(() {
        isActiveTabBarText = false;
      });
    }

    if(Platform.isWindows || Platform.isLinux || Platform.isMacOS) {
      DesktopWindow.setMinWindowSize(Size(470, 590));
    }
  }

}