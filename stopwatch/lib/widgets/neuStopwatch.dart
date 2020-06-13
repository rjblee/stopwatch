import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:stopwatch/widgets/stopwatchController.dart';
import 'package:stopwatch/widgets/timeDisplayer.dart';

class NeuStopwatch extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xfff5f5f5),
      child: Column(
        children: <Widget>[
          SizedBox(
            height: 100,
          ),
          TimeDisplayer(),
          SizedBox(
            height: 130,
          ),
          StopwatchController(),
        ],
      ),
    );
  }
}


