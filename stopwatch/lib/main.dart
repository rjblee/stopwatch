import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'widgets/neuStopwatch.dart';

void main() {
  runApp(StopWatch());
}

class StopWatch extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new NeumorphicApp(
      title: "welcome",
      themeMode: ThemeMode.light,
      theme: NeumorphicThemeData(
        baseColor: Color(0xFFcccccc),
        lightSource: LightSource.topLeft,
        depth: 10,
      ),
      darkTheme: NeumorphicThemeData(
        baseColor: Color(0xFF00000),
        lightSource: LightSource.topLeft,
        depth: 6,
      ),
      home: Scaffold(
        appBar: NeumorphicAppBar(
          title: Text(
            "Stopwatch",
            style: TextStyle(
                color: Colors.black45,
                fontSize: 30,
                fontWeight: FontWeight.bold),
          ),
          actions: <Widget>[
            NeumorphicButton(
              child: Icon(
                Icons.settings,
                color: Colors.grey,
              ),
              onPressed: () {},
              style: NeumorphicStyle(
                boxShape: NeumorphicBoxShape.circle(),
                shape: NeumorphicShape.flat,
                depth: 7,
              ),
            )
          ],
          color: Color(0xffdddddd),
        ),
        body: NeuStopwatch(),
      ),
    );
  }
}