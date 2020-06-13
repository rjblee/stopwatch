import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:provider/provider.dart';
import 'file:///G:/esunb/Github/stopwatch/stopwatch/lib/tools/stopwatch_ctr.dart';

class StopwatchController extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer<StopwatchListener>(
      builder: (context, value, child) => Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          mainAxisSize: MainAxisSize.max,
          children: <Widget>[
            NeumorphicButton(
              child: Text(
                "Reset",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.grey,
                    fontSize: 18),
              ),
              onPressed: ()=> value.resetStopwatch() ,
              style: NeumorphicStyle(
                shape: NeumorphicShape.concave,
                depth: 3,
              ),
              padding: EdgeInsets.only(
                  left: 20, top: 15, right: 20, bottom: 15),
            ),
            NeumorphicButton(
              padding: EdgeInsets.all(10),
              style: NeumorphicStyle(
                boxShape: NeumorphicBoxShape.circle(),
                depth: 3,
              ),
              child: Icon(
                Icons.pause,
                color: Colors.grey,
                size: 40,
              ),
              onPressed: () => value.stopStopwatch(),
            ),
            NeumorphicButton(
              child: Text(
                "Start",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.grey,
                    fontSize: 18),
              ),
              onPressed: ()=>value.startStopwatch(),
              style: NeumorphicStyle(
                shape: NeumorphicShape.concave,
                depth: 3,
              ),
              padding: EdgeInsets.only(
                  left: 28, top: 15, right: 28, bottom: 15),
            ),
          ]),
    );
  }
}
