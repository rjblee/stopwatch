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
        color: Colors.white,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
//        Spacer(),

            SizedBox(
              height: 30,
            ),
            Consumer<TimerListener>(
              builder: (context, stopwatchListener, child) => Text(
                stopwatchListener.timetodisplay,
                style: TextStyle(
                  fontFamily: 'Montserrat',
                  fontSize: 70,
                  color: Colors.blueGrey,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),

//        SizedBox(
//          height: 20,
//        ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                NeumorphicButton(
                  padding: EdgeInsets.all(30),
                  style: NeumorphicStyle(
                    boxShape: NeumorphicBoxShape.circle(),
                  ),
                  onPressed: () {},
                  child: Text(
                    "1",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w500,
                      color: Colors.blueGrey,
                    ),
                  ),
                ),
                NeumorphicButton(
                  padding: EdgeInsets.all(30),
                  style: NeumorphicStyle(
                    boxShape: NeumorphicBoxShape.circle(),
                  ),
                  onPressed: () {},
                  child: Text(
                    "2",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w500,
                      color: Colors.blueGrey,
                    ),
                  ),
                ),
                NeumorphicButton(
                  padding: EdgeInsets.all(30),
                  style: NeumorphicStyle(
                    boxShape: NeumorphicBoxShape.circle(),
                  ),
                  onPressed: () {},
                  child: Text(
                    "3",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w500,
                      color: Colors.blueGrey,
                    ),
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                NeumorphicButton(
                  padding: EdgeInsets.all(30),
                  style: NeumorphicStyle(
                    boxShape: NeumorphicBoxShape.circle(),
                  ),
                  onPressed: () {},
                  child: Text(
                    "4",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w500,
                      color: Colors.blueGrey,
                    ),
                  ),
                ),
                NeumorphicButton(
                  padding: EdgeInsets.all(30),
                  style: NeumorphicStyle(
                    boxShape: NeumorphicBoxShape.circle(),
                  ),
                  onPressed: () {},
                  child: Text(
                    "5",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w500,
                      color: Colors.blueGrey,
                    ),
                  ),
                ),
                NeumorphicButton(
                  padding: EdgeInsets.all(30),
                  style: NeumorphicStyle(
                    boxShape: NeumorphicBoxShape.circle(),
                  ),
                  onPressed: () {},
                  child: Text(
                    "6",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w500,
                      color: Colors.blueGrey,
                    ),
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                NeumorphicButton(
                  padding: EdgeInsets.all(30),
                  style: NeumorphicStyle(
                    boxShape: NeumorphicBoxShape.circle(),
                  ),
                  onPressed: () {},
                  child: Text(
                    "7",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w500,
                      color: Colors.blueGrey,
                    ),
                  ),
                ),
                NeumorphicButton(
                  padding: EdgeInsets.all(30),
                  style: NeumorphicStyle(
                    boxShape: NeumorphicBoxShape.circle(),
                  ),
                  onPressed: () {},
                  child: Text(
                    "8",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w500,
                      color: Colors.blueGrey,
                    ),
                  ),
                ),
                NeumorphicButton(
                  padding: EdgeInsets.all(30),
                  style: NeumorphicStyle(
                    boxShape: NeumorphicBoxShape.circle(),
                  ),
                  onPressed: () {},
                  child: Text(
                    "9",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w500,
                      color: Colors.blueGrey,
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
