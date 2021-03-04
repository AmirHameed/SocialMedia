import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:get/get.dart';
import 'package:social_media/controllers/text_controller.dart';
import 'package:social_media/utility/constants.dart';
import 'package:social_media/utility/widget/bottomNavBar.dart';
import 'package:social_media/utility/widget/circle_theme.dart';
import 'package:social_media/utility/widget/slider.dart';
import 'package:social_media/views/post_screen.dart';
import 'package:social_media/views/sell_screen.dart';
import 'package:social_media/views/truth.dart';

import 'comments_widget.dart';
import 'gallery_screen.dart';
bool isSwitched = false;
TextController textController = Get.put(TextController());

class QuestionScreen extends StatelessWidget {
  bool isSwitched = true;
  TextEditingController questionText = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: NavBar(),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.only(left: 10,right: 10),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    InkWell(
                      child: Text('X',style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),),
                      onTap: (){},
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 10),
                      child: Neumorphic(
                        style: NeumorphicStyle(
                            shape: NeumorphicShape.concave,
                            boxShape:
                            NeumorphicBoxShape.roundRect(BorderRadius.circular(16)),
                            depth: 12,
                            lightSource: LightSource.topLeft,
                            color: Color(0xFFFFFFFF)),
                        child: NeumorphicButton(
                          style: NeumorphicStyle(
                            color: Color(0xFFFFFFFF),
                          ),
                          child: Container(
                            width: width/1.3,
                            // height: height/20,
                            // color: Colors.red,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Neumorphic(
                                  style: NeumorphicStyle(
                                      shape: NeumorphicShape.concave,
                                      boxShape:
                                      NeumorphicBoxShape.roundRect(BorderRadius.circular(16)),
                                      depth: 12,
                                      lightSource: LightSource.topLeft,
                                      color: Color(0xFFFFFFFF)),
                                  child: NeumorphicButton(
                                    style: NeumorphicStyle(
                                      color: Color(0xFFFFFFFF),
                                    ),
                                    child: Text(
                                      'Questions',
                                      style: TextStyle(
                                          color: Colors.blue, fontWeight: FontWeight.bold),
                                    ),
                                  ),
                                ),
                                InkWell(
                                    onTap: (){
                                      Get.offAndToNamed('/article');
                                    },
                                    child: Text('Article',style: TextStyle(color: Colors.grey,fontWeight: FontWeight.w500),)),
                                InkWell(
                                    onTap: (){
                                      Get.offAndToNamed('/truth');
                                    },
                                    child: Text('Truth',style: TextStyle(color: Colors.grey,fontWeight: FontWeight.w500),))
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),

                    // Image.asset('assets/images/questions.png'),
                  ],
                ),
                TextQuestionWidget(text: 'Post',onTap: (){},),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Image.asset('assets/images/person_image.png'),
                    Flexible(
                      child: Neumorphic(
                        style: NeumorphicStyle(
                          shape: NeumorphicShape.concave,
                          boxShape: NeumorphicBoxShape.roundRect(BorderRadius.circular(18.0)),
                          color: Color(0xFFFFFFFF),
                        ),
                        child:
                            Expanded(
                              child: TextField(
                                maxLines: 4,
                                cursorColor: Colors.grey,
                                decoration: InputDecoration(
                                    hintText: "Type a caption......",
                                    border: InputBorder.none,
                                    contentPadding: const EdgeInsets.symmetric(horizontal: 10,vertical: 20)
                                ),
                                controller: questionText,
                                // onSubmitted: messageController.handleSubmitted,
                              ),
                            ),
                      ),
                    ),

                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 10,bottom: 10),
                  child: Divider(
                    thickness: 1.0,
                  ),
                ),
                Row(
                  children: [
                    Text('Sent To:'),
                    Padding(
                      padding: const EdgeInsets.only(left: 5,right: 5),
                      child: SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: List.generate(3, (index) {
                            return  DebateTheme(image: 'assets/images/plus_button.png',text: 'Debate',width: width/3.7,onTap: (){},);
                          }
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 10,bottom: 0),
                  child: Divider(
                    thickness: 1.0,
                  ),
                ),
                Row(
                  children: [
                    Text('Location'),
                    IconButton(icon: Icon(Icons.location_on,color: Colors.red,),onPressed: (){},)
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 0,bottom: 10),
                  child: Divider(
                    thickness: 1.0,
                  ),
                ),
                Neumorphic(
                  style: NeumorphicStyle(
                    shape: NeumorphicShape.concave,
                    boxShape: NeumorphicBoxShape.roundRect(BorderRadius.circular(42.0)),
                    color: Color(0xFFFFFFFF),
                    // depth: 20,
                  ),
                  child:
                  Expanded(
                    child: TextField(
                      // maxLines: 4,
                      cursorColor: Colors.grey,
                      decoration: InputDecoration(
                          hintText: "     Add vibes",
                          border: InputBorder.none,
                          contentPadding: const EdgeInsets.symmetric(horizontal: 10,vertical: 0)
                      ),
                      controller: questionText,
                      // onSubmitted: messageController.handleSubmitted,
                    ),
                  ),
                ),
                FSlider(),
                CommentsWidget(),
                Padding(
                  padding: const EdgeInsets.only(top: 10,bottom: 10),
                  child: Divider(
                    thickness: 1.0,
                  ),
                ),
                Align(
                    alignment: Alignment.topLeft,
                    child: Text('Also post to',style: TextStyle(fontSize: 18),)),
                // Row(
                //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
                //   children: [
                //     Text("Facebook"),
                //     NeumorphicSwitch(
                //       height: 20,
                //       style: NeumorphicSwitchStyle(
                //         activeThumbColor: Colors.white,
                //         activeTrackColor: Colors.white,
                //       ),
                //       // isEnabled: true,
                //       value: isSwitched,
                //       onChanged: (value) => isSwitched = value,
                //     ),
                //   ],
                // ),
                Padding(
                  padding: const EdgeInsets.only(top: 5,bottom: 5),
                  child: SwitchButton(
                    text: 'Facebook',
                  ),
                ),
                SwitchButton(
                  text: 'Twitter',
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 5,bottom: 5),
                  child: SwitchButton(
                    text: 'Tumblr',
                  ),
                ),
                BottomNavWidget(),

              ],
            ),
          ),
        ),
      ),
    );
  }
}

class TextQuestionWidget extends StatelessWidget {
  String text;
  Function onTap;
  TextQuestionWidget({this.text,this.onTap});
  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.bottomRight,
      child: Padding(
        padding: const EdgeInsets.only(right: 5,top: 10,bottom: 10),
        child: FlatButton(
          color: purpleColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(18)
          ),
          onPressed: onTap,
          child: Text(text,style: TextStyle(color: Colors.white),),
        ),
      ),
    );
  }
}

class QuestionDebat extends StatelessWidget {
  const QuestionDebat({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text('Sent To:'),
        Image.asset('assets/images/plus_button.png',height: 30,),
        Text('Debate'),
      ],
    );
  }
}

class SwitchButton extends StatelessWidget{
  String text;
  SwitchButton({this.text});
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return  Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(text),
        StatefulBuilder(
          builder: (BuildContext context, void Function(void Function()) setState) {
            return NeumorphicSwitch(
              height: 20,
              style: NeumorphicSwitchStyle(
                activeThumbColor: Colors.white,
                activeTrackColor: Colors.white,
              ),
              // isEnabled: true,
              value: isSwitched,
              onChanged: (value) {
                setState(){
                  isSwitched = value;
                }
              },
            );
          },

        ),
      ],
    );
  }

}
