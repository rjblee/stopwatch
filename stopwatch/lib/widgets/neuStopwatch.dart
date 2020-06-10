import 'package:flutter_neumorphic/flutter_neumorphic.dart';

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
                  child: NeumorphicText(
                    "01:00:01",
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
          SizedBox(
            height: 190,
          ),
          Row(
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
                  onPressed: () {
                    print("Reset");
                  },
                  style: NeumorphicStyle(
                    shape: NeumorphicShape.concave,
                    depth: 3,
                  ),
                  padding: EdgeInsets.only(
                      left: 20, top: 15, right: 20, bottom: 15),
                ),
                NeumorphicRadio(
                  padding: EdgeInsets.all(10),
                  style: NeumorphicRadioStyle(
                    boxShape: NeumorphicBoxShape.circle(),
                    unselectedDepth: 3,
                    selectedDepth: 3,
                    selectedColor: Colors.blueAccent,
                    unselectedColor: Colors.white30,
                  ),
                  child: Icon(
                    Icons.pause,
                    color: Colors.grey,
                    size: 40,
                  ),
                ),
                NeumorphicButton(
                  child: Text(
                    "Lap",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.grey,
                        fontSize: 18),
                  ),
                  onPressed: () {
                    print("Reset");
                  },
                  style: NeumorphicStyle(
                    shape: NeumorphicShape.concave,
                    depth: 3,
                  ),
                  padding: EdgeInsets.only(
                      left: 28, top: 15, right: 28, bottom: 15),
                ),
              ])
        ],
      ),
    );
  }
}
