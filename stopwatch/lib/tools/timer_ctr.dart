import 'dart:async';
import 'package:flutter/foundation.dart';

class TimerListener with ChangeNotifier {
  String timetodisplay = '00:00:00';
  final dur = const Duration(seconds: 1);
  var setTime = 0;

  bool checkTimer = true;

  void convertToString() {
    if (setTime < 60) {
      var st = setTime.toString();
      if (setTime < 10) st = "0" + st;

      timetodisplay = "00:00:" + st;

      notifyListeners();
    } else if (setTime < 3600) {
      int m = setTime ~/ 60;
      int s = setTime - (60 * m);

      var sm = m.toString();
      var ss = s.toString();

      if (m < 10) sm = "0" + sm;
      if (s < 10) ss = "0" + ss;

      timetodisplay = "00:" + sm + ":" + ss;

      notifyListeners();
    } else {
      int h = setTime ~/ 3600;
      int t = setTime - (3600 * h);
      int m = t ~/ 60;
      int s = t - (60 * m);

      var sh = h.toString();
      var sm = m.toString();
      var ss = s.toString();

      if (h < 10) sh = "0" + sh;
      if (m < 10) sm = "0" + sm;
      if (s < 10) ss = "0" + ss;

      timetodisplay = sh + ":" + sm + ":" + ss;
      notifyListeners();
    }
  }

  void incrementHour() {
    setTime = setTime + 3600;
    convertToString();
    notifyListeners();
  }

  void incrementMinute() {
    setTime = setTime + 60;
    convertToString();
    notifyListeners();
  }

  void startTimer() {
    checkTimer = true;

    Timer.periodic(
      dur,
      (Timer t) {
        if (setTime <= 0 || checkTimer == false) {
          t.cancel();
          notifyListeners();
        } else {
          setTime -= 1;
          convertToString();
        }
      },
    );
  }

  void stopTimer() {
    checkTimer = false;
    notifyListeners();
  }

  void resetTimer() {
    setTime = 0;
    checkTimer = false;
    timetodisplay = "00:00:00";
    notifyListeners();
  }
}
