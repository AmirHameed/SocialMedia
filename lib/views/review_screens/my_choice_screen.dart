import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:social_media/utility/constants.dart';

import '../my_choice_next_screen.dart';

class MyChoiceScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 25,bottom: 10),
                child: Text("My Choices",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 22),),
              ),
              Text("Fine tune your Ooumph experience here"),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  MyChoiceWidget(),
                  MyChoiceWidget(),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  MyChoiceWidget(),
                  MyChoiceWidget(),
                ],
              ), Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  MyChoiceWidget(),
                  MyChoiceWidget(),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  MyChoiceWidget(),
                  MyChoiceWidget(),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class MyChoiceWidget extends StatelessWidget {
  Function onTap;
  MyChoiceWidget({this.onTap});

  @override
  Widget build(BuildContext context) {
    return Neumorphic(
      style: NeumorphicStyle(
        // shape: NeumorphicShape.concave,
        boxShape: NeumorphicBoxShape.circle(),
        color: Colors.black,
        depth: 1,
      ),
      child:  InkWell(
        onTap: (){
          Get.to(MyChoiceNextScreen());
          },
        child: Stack(
          children: [
            ClipRRect(
                borderRadius: BorderRadius.circular(8.0),
                child: Image.asset('assets/images/back.jpg',width: width/3,)),
            Positioned(
              top: 50,
              bottom: 50,
              right: 10,
              left: 25,
              child: Center(child: Text("What defines me?",style: TextStyle(color: Colors.white))),
            ),
          ],
        ),
      ),
    );
    // return CircleAvatar(
    //   backgroundColor: Colors.grey[300],
    //   radius: 60,
    //   child:  Stack(
    //     children: [
    //       ClipRRect(
    //           borderRadius: BorderRadius.circular(120),
    //           child: Image.asset(image, height: 100,)),
    //       Positioned(
    //         top: 50,
    //         bottom: 50,
    //         right: 10,
    //         left: 25,
    //         child: Center(child: Text("What defines me?",style: TextStyle(color: Colors.white))),
    //       ),
    //     ],
    //   ),
    // );
  }
}
