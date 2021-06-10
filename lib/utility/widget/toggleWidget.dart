import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:get/get.dart';

class ToggleWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Neumorphic(
          style: NeumorphicStyle(
            // shape: NeumorphicShape.concave,
            boxShape:
            NeumorphicBoxShape.roundRect(BorderRadius.circular(36)),
            depth: -5,
            // lightSource: LightSource.topLeft,
            color: Color(0xFFFFFFFF),
          ),
          child: Container(
            padding: const EdgeInsets.only(top: 10,bottom: 0,right: 30,left: 150),
            child: GestureDetector(
              child: Padding(
                padding: const EdgeInsets.only(left: 20,bottom: 10),
                child: Text("Messages",
                  style: TextStyle(
                      color: Colors.grey[400],fontWeight: FontWeight.w500),
                ),
              ),
              onTap: (){
                Get.toNamed('/message_group');
              },
            ),
          ),
        ),
        Positioned(
          top: 0,
          child: Neumorphic(
            style: NeumorphicStyle(
              // shape: NeumorphicShape.concave,
                boxShape:
                NeumorphicBoxShape.roundRect(BorderRadius.circular(36)),
                // depth: 80,
                // lightSource: LightSource.topLeft,
                color: Color(0xFFFFFFFF)),
            child: NeumorphicButton(
              style: NeumorphicStyle(
                color: Color(0xFFFFFFFF),
              ),
              child: Text(
                '  Notification  ',
                style: TextStyle(
                    color: Colors.black, fontWeight: FontWeight.bold),
              ),
            ),
          ),)
      ],
    );
  }
}
