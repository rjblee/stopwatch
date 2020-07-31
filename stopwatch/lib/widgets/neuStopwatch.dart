import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:stopwatch/widgets/stopwatchButtonSet.dart';
import 'package:stopwatch/widgets/timeDisplayer.dart';

class NeuStopwatch extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container(
      color: Color(0xfff5f5f5),
      child: Column(
        children: <Widget>[
          SizedBox(
            height: size.height*0.2,
          ),
          TimeDisplayer(),
          SizedBox(
            height: size.height*0.2,
          ),
          ControlButtonSet(),
        ],
      ),
    );
  }
}
