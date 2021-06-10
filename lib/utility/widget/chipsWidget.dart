import 'package:flutter/material.dart';

import '../constants.dart';
import 'circle_theme.dart';

class ChipWidget extends StatelessWidget {
  const ChipWidget({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
        CircleTheme(
          image: 'assets/images/Ellipse 2.png',
          text: 'MOOD',
          width: width / 2.5,
        ),
        CircleTheme(
          image: 'assets/images/Ellipse -2.png',
          text: 'OUTER CIRCLE',
          width: width / 2.5,
        ),
        CircleTheme(
          image: 'assets/images/Ellipse -1.png',
          text: 'UNIVERSE',
          width: width / 2.5,
        ),
        CircleTheme(
          image: 'assets/images/Ellipse -2.png',
          text: 'OUTER CIRCLE',
          width: width / 2.5,
        ),
        CircleTheme(
          image: 'assets/images/Ellipse -1.png',
          text: 'UNIVERSE',
          width: width / 2.5,
        ),
      ]),
    );
  }
}
