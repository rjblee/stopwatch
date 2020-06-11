import 'dart:async';
import 'package:flutter/foundation.dart';

class StopwatchListener with ChangeNotifier {
  String timetodisplay = '00:00:00';
  final dur = const Duration(seconds: 1);
  var stopwatch = Stopwatch(); // Stopwatch class in Flutter

  void startTimer() {
    Timer(dur, keepRunning); // dur = 1sec, execute keepRunning.
  }

  void keepRunning() { // the function that will run during 1 sec.
    if (stopwatch.isRunning) { // stopwatch is running? then execute startTimer.
      // it makes startTimer execute keepRunning function in every 1 sec
      startTimer();
    }
    // this code makes the duration number to String "00:00:00"

    //stopwatch.elapsed = This has how long it has been since start the stopwatch.
    //string.padLeft(2,"0") = if the string is shorter than 2 length, fill it up with "0".
    timetodisplay = stopwatch.elapsed.inHours.toString().padLeft(2,"0") + ":"
                        + (stopwatch.elapsed.inMinutes%60).toString().padLeft(2, "0") + ":"
                        + (stopwatch.elapsed.inSeconds%60).toString().padLeft(2, "0");
    notifyListeners(); // letting Dom know that we changed something with this action.
  }

  void stopStopwatch() {
    stopwatch.stop();
  }

  void startStopwatch() {
    stopwatch.start();
    startTimer();
  }

  void resetStopwatch() {
    timetodisplay = '00:00:00';
    stopwatch.reset();
    notifyListeners();
  }
}
