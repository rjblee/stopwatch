import 'package:flutter/cupertino.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:provider/provider.dart';
import 'package:stopwatch/tools/timer_ctr.dart';
import 'package:stopwatch/widgets/timerButtonSet.dart';

class NeuTimer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<TimerListener>(
      create: (context) => TimerListener(),
      child: Container(
//        color: Color(0xffF5F5F5),
//        color: Color(0xFFe4eef8),

        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            SizedBox(
              height: 10,
            ),
            Neumorphic(
              style: NeumorphicStyle(
                shape: NeumorphicShape.flat,
                depth: 2,
                boxShape: NeumorphicBoxShape.roundRect(
                  BorderRadius.circular(20),
                ),
              ),
              padding: const EdgeInsets.all(6),
              child: Neumorphic(
                style: NeumorphicStyle(
                  shape: NeumorphicShape.flat,
                  depth: -4,
                  boxShape: NeumorphicBoxShape.roundRect(
                    BorderRadius.circular(20),
                  ),
                  color: Color(0xffF5F5F5),
                  lightSource: LightSource.topLeft,
                ),
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(80, 30, 80, 30),
                  child: Consumer<TimerListener>(
                    builder: (context, stopwatchListener, child) => Text(
//                      stopwatchListener.setTime.toString(),
                      stopwatchListener.timetodisplay,

                      style: TextStyle(
                        fontFamily: 'Digital',
                        fontSize: 60,
                        color: Colors.blueGrey[400],
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                ),
              ),
            ),

//        SizedBox(
//          height: 20,
//        ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Consumer<TimerListener>(
                  builder: (context, stopwatchListener, child) =>
                      NeumorphicButton(
                        padding: EdgeInsets.all(25),
                        style: NeumorphicStyle(
                          boxShape: NeumorphicBoxShape.circle(),
                          depth: 5,
//                    color: Colors.blueGrey[100],
                        ),
                        onPressed: () {
                          stopwatchListener.incrementHour();
                        },
                        child: Text(
                          "HR",
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w500,
                            color: Colors.grey,
                          ),
                        ),
                      ),
                ),
                Consumer<TimerListener>(
                  builder: (context, stopwatchListener, child) =>
                      NeumorphicButton(
                        padding: EdgeInsets.all(25),
                        style: NeumorphicStyle(
                          boxShape: NeumorphicBoxShape.circle(),
                          depth: 5,
//                    color: Colors.blueGrey[100],
                        ),
                        onPressed: () {
                          stopwatchListener.incrementMinute();
                        },
                        child: Text(
                          "MIN",
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w500,
                            color: Colors.grey,
                          ),
                        ),
                      ),
                ),
              ],
            ),

            TimerButtonSet(),
          ],
        ),
      ),
    );
  }
}