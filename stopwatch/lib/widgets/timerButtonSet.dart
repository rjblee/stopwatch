import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:provider/provider.dart';
import 'package:stopwatch/tools/timer_ctr.dart';

class TimerButtonSet extends StatelessWidget {
  bool pressed = false;
  @override
  Widget build(BuildContext context) {
    return Consumer<TimerListener>(
      builder: (context, timerListener, child) => Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          mainAxisSize: MainAxisSize.max,
          children: <Widget>[
            NeumorphicButton(
              pressed: pressed,
              child: Text(
                "Reset",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.blueGrey,
                  fontSize: 18,
                ),
              ),
              onPressed: () {
//                pressed = true;
                Timer(
                  Duration(seconds: 1),
                  () {
//                  print pressed = false;
                  },
                );
                timerListener.resetTimer();
              },
              style: NeumorphicStyle(
                shape: NeumorphicShape.concave,
                depth: pressed ? -5 : 3,
              ),
              padding:
                  EdgeInsets.only(left: 20, top: 15, right: 20, bottom: 15),
            ),
            NeumorphicButton(
              padding: EdgeInsets.all(10),
              style: NeumorphicStyle(
                boxShape: NeumorphicBoxShape.circle(),
                depth: 3,
              ),
              child: Icon(
                Icons.pause,
                color: Colors.blueGrey,
                size: 40,
              ),
              onPressed: () => timerListener.stopTimer(),
            ),
            NeumorphicButton(
              child: Text(
                "Start",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.blueGrey,
                    fontSize: 18),
              ),
              onPressed: () => timerListener.startTimer(),
              style: NeumorphicStyle(
                shape: NeumorphicShape.concave,
                depth: 3,
              ),
              padding:
                  EdgeInsets.only(left: 28, top: 15, right: 28, bottom: 15),
            ),
          ]),
    );
  }
}
