import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:get/get.dart';
import 'package:social_media/utility/constants.dart';
import 'package:social_media/utility/widget/gradient_button.dart';
import 'package:social_media/views/review_screens/onBoarding_screen.dart';

class RegistrationScreenThree extends StatefulWidget {
  @override
  _RegistrationScreenThreeState createState() => _RegistrationScreenThreeState();
}

class _RegistrationScreenThreeState extends State<RegistrationScreenThree> {
  bool isSwitched = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              NeumorphicText('OOUMPH',style:NeumorphicStyle(disableDepth: true,) ,textStyle: NeumorphicTextStyle(fontSize: 22,fontWeight: FontWeight.bold),),
              Image.asset(''),
              Text('Apply Account',style: TextStyle(color: Colors.black54),),
              Neumorphic(
                style: NeumorphicStyle(
                  // shape: NeumorphicShape.concave,
                  boxShape: NeumorphicBoxShape.circle(),
                  color: Color(0xFFFFFFFF),
                  depth: 1,
                ),
                child: Padding(
                  padding: const EdgeInsets.all(24.0),
                  child: InkWell(child: Icon(Icons.camera_alt,size: 30,color: Colors.grey,),onTap: (){},),
                ),
              ),
              Neumorphic(
                style: NeumorphicStyle(
                  shape: NeumorphicShape.concave,
                  boxShape: NeumorphicBoxShape.roundRect(BorderRadius.circular(42.0)),
                  color: Color(0xFFFFFFFF),
                  depth: -50,
                ),
                child:
                Expanded(
                  child: TextField(
                    // maxLines: 4,
                    cursorColor: Colors.grey,
                    decoration: InputDecoration(
                      hintText: "    Recovery Phone Number",
                      border: InputBorder.none,
                      contentPadding: const EdgeInsets.symmetric(horizontal: 10,vertical: 0)
                    ),
                    // controller: questionText,
                    // onSubmitted: messageController.handleSubmitted,
                  ),
                ),
              ),
              Text('Please provide a picture and account  recovery phone number'),
              Neumorphic(

                style: NeumorphicStyle(
                  // shape: NeumorphicShape.concave,
                  boxShape: NeumorphicBoxShape.roundRect(BorderRadius.circular(18.0)),
                  color: Color(0xFFFFFFFF),
                  depth: 35,
                ),
                child: Container(
                  width: width,
                  child: UnicornOutlineButton(
                    strokeWidth: 2,
                    radius: 16,
                    gradient: LinearGradient(
                      colors: [ Colors.purple,Colors.blue,Colors.green,Colors.lightGreen],
                      // begin: Alignment.topCenter,
                      // end: Alignment.bottomCenter,
                    ),
                    child: Text('Continue', style: TextStyle(fontSize: 16)),
                    onPressed: () {
                      Get.to(OnBoardingPage());
                    },
                  ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    width: width/2.5,
                    height: 1.0,
                    color: Colors.black,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 5,right: 5),
                    child: Text("Or"),
                  ),
                  Container(
                    width: width/2.5,
                    height: 1.0,
                    color: Colors.black,
                  ),
                ],
              ),
              Text('Or create account using social media'),
              Row(
                children: [
                  LoginSocialButtons(onPressed: null,),
                  LoginSocialButtons(onPressed: null,),
                  LoginSocialButtons(onPressed: null,),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class LoginSocialButtons extends StatelessWidget {
  String image;
  Function onPressed;
  LoginSocialButtons({this.image,this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Neumorphic(
      margin: EdgeInsets.only(right: 10,bottom: 10,left: 10),
      style: NeumorphicStyle(
        shape: NeumorphicShape.convex,
        boxShape:
        NeumorphicBoxShape.circle(),
        depth: 15,
        lightSource: LightSource.topLeft,
        color:  Color(0xFFFFFFFF),
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: InkWell(
          child: Icon(Icons.access_time),
          onTap: onPressed,
        ),
      ),

    );
  }
}
