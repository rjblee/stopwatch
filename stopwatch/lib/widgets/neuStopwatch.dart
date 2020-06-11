import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:provider/provider.dart';
import 'package:stopwatch/widgets/stopwatch_ctr.dart';

class NeuStopwatch extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xffdddddd),
      child: Column(
        children: <Widget>[
          SizedBox(
            height: 30,
          ),
          Center(
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
                  padding: EdgeInsets.all(70),
                  style: NeumorphicStyle(
                    boxShape: NeumorphicBoxShape.circle(),
                    shape: NeumorphicShape.flat,
                    depth: 2,
                  ),
                  child: Consumer<StopwatchListener>(
                    builder: (context, value, child)=> NeumorphicText(
                      value.timetodisplay,
                      style: NeumorphicStyle(
                        color: Color(0xff76909c),
                        depth: 30,
                      ),
                      textStyle: NeumorphicTextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
          SizedBox(
            height: 190,
          ),
          Consumer<StopwatchListener>(
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
          )
        ],
      ),
    );
  }
}
