import 'package:flutter/cupertino.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';

class ImageWidget extends StatelessWidget {
  const ImageWidget({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Neumorphic(
      style: NeumorphicStyle(
        shape: NeumorphicShape.concave,
        boxShape: NeumorphicBoxShape.roundRect(BorderRadius.circular(38)),
        depth: 4.5,
        // intensity: 1,
        lightSource: LightSource.left,
        color: Color(0xFFFFFFFF),
      ),
      child: CircleAvatar(
        child: Image.asset(
          'assets/images/Ellipse -1.png',
          height: 50,
        ),
        radius: 30,
        backgroundColor: Colors.grey[200],
      ),
    );
  }
}
