import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';

import 'addIcon.dart';

class NotiWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 10,bottom: 10),
      child: Neumorphic(
          style: NeumorphicStyle(
            shape: NeumorphicShape.concave,
            boxShape: NeumorphicBoxShape.roundRect(
                BorderRadius.circular(38)),
            depth: 2.5,
            // intensity: 1,
            lightSource: LightSource.left,
            color:Color(0xFFFFFFFF),
          ),
          child: Container(
            padding: const EdgeInsets.only(bottom: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  children: [
                    Text(
                      '3.2',
                      style: TextStyle(fontSize: 10),
                    ),
                    Image.asset(
                      'assets/images/Ellipse 311.png',
                      // height: 40,
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Text(
                            'Nick Collins',
                            style: TextStyle(
                                fontWeight: FontWeight.bold),
                          ),
                          Text(
                            '   "cute 3.5"',
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.red),
                          ),
                        ],
                      ),
                      Text(
                        '114 others also vibed on your post',
                        style: TextStyle(color: Colors.grey),
                      ),
                      Text(
                        '3 min ago',
                        style: TextStyle(color: Colors.grey,fontSize: 10),
                      ),
                    ],
                  ),
                ),
                Row(
                  children: [
                    CrossIcon(),
                    SizedBox(width: 5,),
                    TickIcon(),
                  ],
                ),
              ],
            ),
          )),
    );
  }
}
