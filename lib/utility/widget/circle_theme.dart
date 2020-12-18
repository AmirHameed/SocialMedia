import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
class CircleTheme extends StatelessWidget {
  String text,image;
  double width;
  Color color;
  CircleTheme({this.text,this.image,this.width,this.color});
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    return   Container(
      margin: EdgeInsets.symmetric(vertical: 6, horizontal: 2),
      color: Colors.transparent,
      height: height/18,
      child: Neumorphic(
        padding: EdgeInsets.only(right: 6),
        margin: EdgeInsets.symmetric(horizontal: 2),
        style: NeumorphicStyle(
            shape: NeumorphicShape.concave,
            depth: 2,
            boxShape: NeumorphicBoxShape.roundRect(
                BorderRadius.circular(24)),
            lightSource: LightSource.topLeft,
            color: Colors.white),
        child: Row(
          children: [
            CircleAvatar(
              radius: 21,
              backgroundColor: Colors.transparent,
              child: ClipOval(
                  child: Image.asset(
                    image,
                    width: width/3,
                    fit: BoxFit.cover,
                  )),
            ),
            Center(
              child: Text(
                text,
                style: TextStyle(
                  color: color,
                  fontSize: width/12,
                ),
                textAlign: TextAlign.center,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
