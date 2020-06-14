import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:stopwatch/tools/stopwatch_ctr.dart';
import 'widgets/neuStopwatch.dart';
import 'package:provider/provider.dart';
import 'widgets/neuTimer.dart';

void main() {
  runApp(StopWatch());
}

class StopWatch extends StatelessWidget {
  var currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return new NeumorphicApp(
      title: "welcome",
      themeMode: ThemeMode.light,
      theme: NeumorphicThemeData(
        baseColor: Color(0xFFffebeb),
//        baseColor: Colors.blueGrey[100],
        lightSource: LightSource.topLeft,
        depth: 10,
      ),
      darkTheme: NeumorphicThemeData(
        baseColor: Color(0xFF000000),
        lightSource: LightSource.topLeft,
        depth: 6,
      ),
      home: ChangeNotifierProvider<StopwatchListener>(
        create: (context) => StopwatchListener(),
        child: Scaffold(
          body:
//          NeuTimer(),
              NeuStopwatch(),
          bottomNavigationBar: BottomNavigationBar(
            currentIndex: currentIndex,
            backgroundColor: Color(0xfff5f5f5),
            items: [
              BottomNavigationBarItem(
                icon: Icon(Icons.timer),
                title: Text("stopwatch"),
                backgroundColor: Color(0xfff5f5f5),
//                color: Colors.blue,
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.timer),
                title: Text("timer"),
              ),
            ],
            onTap: (index) {},
          ),
        ),
      ),
    );
  }
}
