import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

var width = Get.width;
var height = Get.height;
const purpleColor = Color(0xff515DC7);
const primaryWhite = Color(0xffF8F8FC);

class AppColors {
  static Color primaryWhite = Color(0xFFCADCED);

  static List<BoxShadow> neumorpShadow = [
    BoxShadow(
        color: Colors.white.withOpacity(0.5),
        spreadRadius: -5,
        offset: Offset(-5, -5),
        blurRadius: 30),
  ];
}

final kInnerDecoration = BoxDecoration(
  color: Colors.white,
  gradient: LinearGradient(
    colors: [Colors.purple, Colors.blue, Colors.green, Colors.lightGreen],
    begin: Alignment.topCenter,
    end: Alignment.bottomCenter,
  ),
  // border: Border.all(color: Colors.red),
  borderRadius: BorderRadius.circular(48),
);
// border for all 3 colors
final kGradientBoxDecoration = BoxDecoration(
  gradient: LinearGradient(
    colors: [Colors.purple, Colors.blue, Colors.green, Colors.lightGreen],
    begin: Alignment.topCenter,
    end: Alignment.bottomCenter,
  ),
  // border: Border.all(
  //   color: Colors.amber, //kHintColor, so this should be changed?
  // ),
  borderRadius: BorderRadius.circular(48),
);
