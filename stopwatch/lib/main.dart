import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'file:///G:/esunb/Github/stopwatch/stopwatch/lib/tools/stopwatch_ctr.dart';
import 'widgets/neuStopwatch.dart';
import 'package:provider/provider.dart';
import 'widgets/neuTimer.dart';

void main() {
  runApp(MyStopWatch());
}

class MyStopWatch extends StatelessWidget {
  var currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return new NeumorphicApp(
      title: "welcome",
      themeMode: ThemeMode.light,
      theme: NeumorphicThemeData(

        baseColor: Color(0xFFffffff),
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

//          appBar: NeumorphicAppBar(
//            title: Text(
//              "Stopwatch",
//              style: TextStyle(
//                  color: Colors.black45,
//                  fontSize: 30,
//                  fontWeight: FontWeight.bold),
//            ),
//            actions: <Widget>[
//              NeumorphicButton(
//                child: Icon(
//                  Icons.settings,
//                  color: Colors.grey,
//                ),
//                onPressed: () {},
//                style: NeumorphicStyle(
//                  boxShape: NeumorphicBoxShape.circle(),
//                  shape: NeumorphicShape.flat,
//                  depth: 7,
//                ),
//              )
//            ],
//            color: Color(0xfff5f5f5),
//          ),
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
            onTap: (index) {

            },
          ),
        ),
      ),
    );
  }
}
