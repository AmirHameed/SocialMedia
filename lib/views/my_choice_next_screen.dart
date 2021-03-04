import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:social_media/utility/constants.dart';
import 'package:social_media/utility/widget/gradient_button.dart';

class MyChoiceNextScreen extends StatelessWidget {
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
                          onTap: (){},
                          child: Center(child: Text("Skip",style: TextStyle(fontWeight: FontWeight.bold),)),
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
            ],
          ),
        ),
      ),
    );
  }
}
