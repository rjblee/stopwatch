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

class MyStopWatch extends StatefulWidget {
  @override
  _MyStopWatchState createState() => _MyStopWatchState();
}

class _MyStopWatchState extends State<MyStopWatch> {

  var _selectedIndex = 1;

  static List<Widget> _widgetOptions = <Widget> [
    NeuStopwatch(),
    NeuTimer(),
  ];

  void onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return NeumorphicApp(
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
          body: _widgetOptions[_selectedIndex],
          bottomNavigationBar: BottomNavigationBar(
            currentIndex: _selectedIndex,
            backgroundColor: Color(0xfff5f5f5),
            items: [
              BottomNavigationBarItem(
                icon: Icon(Icons.timer),
                title: Text("stopwatch"),
                backgroundColor: Color(0xfff5f5f5),
//                color: Colors.blue,
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.timelapse),
                title: Text("timer"),
              ),
            ],
            onTap: onItemTapped,
          ),
        ),
      ),
    );
  }
}


