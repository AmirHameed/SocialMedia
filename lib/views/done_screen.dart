import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:get/get.dart';
import 'package:social_media/utility/constants.dart';
import 'package:social_media/utility/widget/gradient_button.dart';

class DoneScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 15,bottom: 15),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Neumorphic(
                      style: NeumorphicStyle(
                        // shape: NeumorphicShape.concave,
                        boxShape: NeumorphicBoxShape.roundRect(BorderRadius.circular(48.0)),
                        color: Color(0xFFFFFFFF),
                        depth: 1,
                      ),
                      child:  Container(
                        width: width/3,
                        height: height/20,
                        child: InkWell(
                          onTap: (){},
                          child: Center(child: Text("Previous",style: TextStyle(color: Colors.grey),)),
                        ),
                      ),
                    ),
                    Neumorphic(
                      style: NeumorphicStyle(
                        // shape: NeumorphicShape.concave,
                        boxShape: NeumorphicBoxShape.roundRect(BorderRadius.circular(48.0)),
                        color: Color(0xFFFFFFFF),
                        depth: 1,
                      ),
                      child:  Container(
                        width: width/3,
                        height: height/20,
                        child: InkWell(
                          onTap: (){
                            Get.toNamed('/main_home');
                          },
                          child: Center(child: Text("Done",style: TextStyle(fontWeight: FontWeight.bold),)),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Stack(
                children: [
                  CircleAvatar(
                    radius: 80,
                    backgroundColor: Colors.green,
                  ),
                  Positioned(
                    bottom: 3,
                    top: 3,
                    // left: 15,
                    child:CircleAvatar(
                      radius: 80,
                      backgroundColor: Colors.white,
                    ) ,
                  ),
                  Positioned(
                    bottom: 10,
                    top: 10,
                    left: 15,
                    child:  Container(
                      width: width/3,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage('assets/images/back.jpg'),
                            fit: BoxFit.cover
                        ),
                        borderRadius: BorderRadius.circular(90.0),
                      ),
                    ),
                  ),
                ],
              ),
              ChoiceWidget(text: 'What I like to do in my free time?',),
              ChoiceWidget(text: 'What I like to do in my free time?',),
              ChoiceWidget(text: 'What I like to do in my free time?',),
            ],
          ),
        ),
      ),
    );
  }
}

class ChoiceWidget extends StatelessWidget {
  String text;
  ChoiceWidget({this.text});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 15,bottom: 30,left: 30),
          child: Align(alignment:Alignment.topLeft,child: Text(text)),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 30),
          child: SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: List.generate(5, (index) {
                return Container(
                  margin: EdgeInsets.only(right: 2),
                  //padding: EdgeInsets.symmetric(horizontal: 6),
                  width: width/4,
                  height: height/20,
                  child: Neumorphic(
                    style: NeumorphicStyle(
                      shape: NeumorphicShape.concave,
                      depth: 5,
                      boxShape:
                      NeumorphicBoxShape.roundRect(BorderRadius.circular(16)),
                      lightSource: LightSource.topLeft,
                      color:  Color(0xFFFFFFFF),),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        CircleAvatar(
                          radius: width/21,
                          backgroundColor: Colors.transparent,
                          child: ClipOval(
                              child: Image.asset(
                                'assets/images/Ellipse 311.png',
                                width: width/10,
                                fit: BoxFit.cover,
                              )),
                        ),
                        Text(
                          'Dancing   ',
                          style: TextStyle(
                            color: Colors.orange,
                            fontSize: width/35,
                          ),
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
        Padding(
          padding: const EdgeInsets.only(left: 15,right: 15,top: 15,bottom: 15),
          child: Neumorphic(
            style: NeumorphicStyle(
              // shape: NeumorphicShape.concave,
              boxShape: NeumorphicBoxShape.roundRect(BorderRadius.circular(42.0)),
              color: Color(0xFFFFFFFF),
              depth: -35,
            ),
            child:
            TextField(
              // maxLines: 4,
              cursorColor: Colors.grey,
              decoration: InputDecoration(
                  hintText: "Type your answer here",
                  border: InputBorder.none,
                  contentPadding: const EdgeInsets.all(16)
                // contentPadding: const EdgeInsets.symmetric(horizontal: 10,vertical: 0)
              ),
              // controller: questionText,
              // onSubmitted: messageController.handleSubmitted,
            ),
          ),
        ),
      ],
    );
  }
}
