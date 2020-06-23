import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:provider/provider.dart';
import 'package:stopwatch/tools/stopwatch_ctr.dart';

class TimeDisplayer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Neumorphic(
        padding: EdgeInsets.all(10),
        style: NeumorphicStyle(
          boxShape: NeumorphicBoxShape.circle(),
          shape: NeumorphicShape.concave,
          depth: 15,
        ),
        child: Neumorphic(
          padding: EdgeInsets.all(20),
          style: NeumorphicStyle(
              boxShape: NeumorphicBoxShape.circle(),
              shape: NeumorphicShape.concave,
              depth: 3),
          child: Neumorphic(
            padding: EdgeInsets.all(80),
            style: NeumorphicStyle(
              boxShape: NeumorphicBoxShape.circle(),
              shape: NeumorphicShape.flat,
              depth: 2,
            ),
            child: Consumer<StopwatchListener>(
              builder: (context, value, child) => Text(
                value.timetodisplay,
                style: TextStyle(
                  color: Color(0xff76909c),
                  fontSize: 50,
                  fontFamily: 'Digital',
                  fontWeight: FontWeight.w500,
                  letterSpacing: 2,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
