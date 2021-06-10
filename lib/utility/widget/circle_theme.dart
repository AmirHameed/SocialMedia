import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';

import '../constants.dart';

class CircleTheme extends StatelessWidget {
  String text, image;
  double width;
  Color color;
  CircleTheme({this.text, this.image, this.width, this.color});
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    return Container(
      margin: EdgeInsets.symmetric(vertical: 0, horizontal: 2),
      // color: Colors.green,
      height: height / 34,
      child: Neumorphic(
        padding: EdgeInsets.only(right: 6),
        margin: EdgeInsets.symmetric(horizontal: 2),
        style: NeumorphicStyle(
            shape: NeumorphicShape.concave,
            depth: 2,
            boxShape: NeumorphicBoxShape.roundRect(BorderRadius.circular(24)),
            lightSource: LightSource.topLeft,
            color: Colors.white),
        child: Row(
          children: [
            CircleAvatar(
              radius: 12,
              backgroundColor: Colors.transparent,
              child: ClipOval(
                  child: Image.asset(
                image,
                width: width / 3,
                fit: BoxFit.cover,
              )),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 5, right: 5),
              child: Center(
                child: Text(
                  text,
                  style: TextStyle(
                    color: color,
                    fontSize: width / 16,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class DebateTheme extends StatelessWidget {
  String text, image;
  double width;
  Color color;
  Function onTap;
  DebateTheme({this.text, this.image, this.width, this.color, this.onTap});
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    return InkWell(
      onTap: onTap,
      child: Container(
        margin: const EdgeInsets.only(left: 5, right: 5),
        // margin: EdgeInsets.symmetric(vertical: 0, horizontal: 2),
        color: Colors.transparent,
        height: height / 25,
        width: width / 1.25,
        child: Neumorphic(
          // padding: EdgeInsets.only(right: 6),
          // margin: EdgeInsets.symmetric(horizontal: 2),
          style: NeumorphicStyle(
              shape: NeumorphicShape.concave,
              depth: 2,
              boxShape: NeumorphicBoxShape.roundRect(BorderRadius.circular(24)),
              lightSource: LightSource.topLeft,
              color: Colors.white),
          child: Row(
            children: [
              CircleAvatar(
                // radius: 21,
                backgroundColor: Colors.transparent,
                child: ClipOval(
                    child: Image.asset(
                  image,
                  width: width / 5,
                  // fit: BoxFit.cover,
                )),
              ),
              Text(
                text,
                style: TextStyle(
                    color: color,
                    fontSize: width / 10,
                    fontWeight: FontWeight.bold),
                textAlign: TextAlign.center,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class DebaateTheme extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Row(children: [
      Expanded(
        flex: 1,
        child: Text('Sent to: '),
      ),
      Expanded(
        flex: 7,
        child: SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: List.generate(6, (index) {
              return Container(
                margin: EdgeInsets.symmetric(vertical: 6, horizontal: 2),
                color: Colors.transparent,
                width: width / 4,
                height: height / 20,
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
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      CircleAvatar(
                        radius: 15,
                        backgroundColor: Colors.transparent,
                        child: ClipOval(
                            child: Image.asset(
                          'assets/images/plus_button.png',
                          width: 40,
                          height: 45,
                          fit: BoxFit.cover,
                        )),
                      ),
                      Text(
                        '  Debate',
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 14,
                            fontWeight: FontWeight.w500),
                        textAlign: TextAlign.center,
                      ),
                    ],
                  ),
                ),
              );
            }),
          ),
        ),
      ),
    ]);
  }
}
