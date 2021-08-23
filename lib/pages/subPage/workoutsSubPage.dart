import 'package:flutter/material.dart';
import 'package:fitnessnote/gtl.dart';

import 'package:fitnessnote/domains/workout.dart';

class WorkoutsSubPage extends StatefulWidget {
  const WorkoutsSubPage({Key? key}) : super(key: key);

  @override
  _WorkoutsSubPageState createState() => _WorkoutsSubPageState();
}

class _WorkoutsSubPageState extends State<WorkoutsSubPage> {
  final workouts = <Workout>[
    Workout(
        title: 'Test1',
        author: 'Max1',
        description: 'Lorem ipsum1',
        level: 'Beginner'),
    Workout(
        title: 'Test2',
        author: 'Max2',
        description: 'Lorem ipsum2',
        level: 'Intermediate'),
    Workout(
        title: 'Test3',
        author: 'Max3',
        description: 'Lorem ipsum3',
        level: 'Advanced'),
    Workout(
        title: 'Test4',
        author: 'Max4',
        description: 'Lorem ipsum4',
        level: 'Beginner'),
    Workout(
        title: 'Test5',
        author: 'Max5',
        description: 'Lorem ipsum5',
        level: 'Intermediate'),
    Workout(
        title: 'Test5',
        author: 'Max5',
        description: 'Lorem ipsum5',
        level: 'Intermediate'),
    Workout(
        title: 'Test5',
        author: 'Max5',
        description: 'Lorem ipsum5',
        level: 'Intermediate'),
    Workout(
        title: 'Test5',
        author: 'Max5',
        description: 'Lorem ipsum5',
        level: 'Intermediate'),
    Workout(
        title: 'Test5',
        author: 'Max5',
        description: 'Lorem ipsum5',
        level: 'Intermediate'),
    Workout(
        title: 'Test5',
        author: 'Max5',
        description: 'Lorem ipsum5',
        level: 'Intermediate'),
    Workout(
        title: 'Test5',
        author: 'Max5',
        description: 'Lorem ipsum5',
        level: 'Intermediate'),
    Workout(
        title: 'Test5',
        author: 'Max5',
        description: 'Lorem ipsum5',
        level: 'Intermediate'),
    Workout(
        title: 'Test5',
        author: 'Max5',
        description: 'Lorem ipsum5',
        level: 'Intermediate'),
    Workout(
        title: 'Test5',
        author: 'Max5',
        description: 'Lorem ipsum5',
        level: 'Intermediate'),
    Workout(
        title: 'Test5',
        author: 'Max5',
        description: 'Lorem ipsum5',
        level: 'Intermediate'),
  ];

  @override
  Widget build(BuildContext context) {

    Widget _subTitle(BuildContext context, Workout workout) {
      var color = mLightGrey;
      double indicatorLevel = 0;

      switch (workout.level) {
        case 'Beginner':
          color = mGreen;
          indicatorLevel = 0.33;
          break;
        case 'Intermediate':
          color = mYellow;
          indicatorLevel = 0.66;
          break;
        case 'Advanced':
          color = mRed;
          indicatorLevel = 1.0;
          break;
      }

      return Row(
        children: <Widget>[
          Expanded(
            flex: 2,
            child: LinearProgressIndicator(
              backgroundColor: mDarkGrey,
              value: indicatorLevel,
              valueColor: AlwaysStoppedAnimation(color),
            ),
          ),
          SizedBox(
            width: 10,
          ),
          Expanded(
            flex: 3,
            child: mText15(workout.level),
          ),
        ],
      );
    }

    return Container(
      child: Container(
        // padding: EdgeInsets.fromLTRB(0, 4, 0, 0),
        child: ListView.builder(
          padding: EdgeInsets.fromLTRB(0, 4, 0, 4),
          itemCount: workouts.length,
          itemBuilder: (context, i) {
            return Card(
              color: mGrey,
              elevation: 2.0,
              margin: EdgeInsets.symmetric(horizontal: 6, vertical: 4),
              child: Container(
                child: ListTile(
                  contentPadding: EdgeInsets.symmetric(horizontal: 10),
                  leading: Container(
                    padding: EdgeInsets.only(right: 10),
                    child: mIcon(Icons.fitness_center, size: 30),
                    decoration: BoxDecoration(
                      border: Border(
                        right: BorderSide(width: 1, color: mLightGrey),
                      )
                    ),
                  ),
                  title: mText20(workouts[i].title, fontWeight: FontWeight.bold),
                  trailing: mIcon(Icons.keyboard_arrow_right),
                  subtitle: _subTitle(context, workouts[i]),
                ),
              ),
            );
          },
        ),
      )
    );
  }
}