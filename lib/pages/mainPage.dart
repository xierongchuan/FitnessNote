import 'dart:async';
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

  late Timer timer;

  @override
  void initState() {

    setWindowSize();

    super.initState();
    timer = Timer.periodic(Duration(milliseconds: 10), (Timer t) => update());
  }

  void update() {
    setWindowSize();
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

          )
        ),

        body: WorkoutsExtension(),

      )
    );
  }
}

setWindowSize() async{
  await DesktopWindow.setWindowSize(Size(400.0, 680.0));
}