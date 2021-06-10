import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SwapController extends GetxController{
  Image image ;
  Image imageRight = Image.asset('assets/images/flower.png');
  Image imageLeft = Image.asset('assets/images/shahrukh.png');
  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
    image = imageRight;
  }
  swapImage(){
    image = imageLeft;
    update();
  }
}