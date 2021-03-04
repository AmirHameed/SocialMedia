import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:get/get.dart';
import 'package:social_media/utility/constants.dart';
import 'package:social_media/utility/widget/bottomNavBar.dart';
import 'package:social_media/views/post_screen.dart';
import 'package:social_media/views/sell_screen.dart';
import 'package:social_media/views/text_screen.dart';
import 'package:social_media/views/truth.dart';

import 'gallery_screen.dart';

class Article extends StatefulWidget {
  @override
  _ArticleState createState() => _ArticleState();
}

class _ArticleState extends State<Article> {
  bool onTap = false;
  bool buttonClick = false;
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
                            // shape: NeumorphicShape.concave,
                            boxShape:
                            NeumorphicBoxShape.roundRect(BorderRadius.circular(16)),
                            depth: -5,
                            // lightSource: LightSource.topLeft,
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
                                InkWell(
                                    onTap: (){
                                      Get.offAndToNamed('/text_screen');
                                    },
                                    child: Text('Questions',style: TextStyle(color: Colors.grey,fontWeight: FontWeight.w500),)),
                                Neumorphic(
                                  style: NeumorphicStyle(
                                      shape: NeumorphicShape.concave,
                                      boxShape:
                                      NeumorphicBoxShape.roundRect(BorderRadius.circular(16)),
                                      depth: 12,
                                      // lightSource: LightSource.topLeft,
                                      color: Color(0xFFFFFFFF)),
                                  child: NeumorphicButton(
                                    style: NeumorphicStyle(
                                      color: Color(0xFFFFFFFF),
                                    ),
                                    child: Text(
                                      'Article',
                                      style: TextStyle(
                                          color: Colors.blue, fontWeight: FontWeight.bold),
                                    ),
                                  ),
                                ),
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
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Type a Title for Article',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16),),
                    TextQuestionWidget(text: 'Next',onTap: (){
                      Get.offAndToNamed('/next_screen');
                    },),
                  ],
                ),
                Neumorphic(
                  style: NeumorphicStyle(
                    shape: NeumorphicShape.convex,
                    boxShape: NeumorphicBoxShape.roundRect(BorderRadius.circular(16.0)),
                    color: Color(0xFFFFFFFF),
                    depth: -5
                  ),
                  child:
                  Container(
                    child: TextField(
                      // maxLines: 4,
                      cursorColor: Colors.grey,
                      keyboardType: TextInputType.multiline,
                      maxLines: null,
                      onTap: (){
                        setState(() {
                          onTap = true;
                        });
                      },
                      decoration: InputDecoration(
                          hintText: "Start typing your article",
                          border: InputBorder.none,
                          contentPadding: const EdgeInsets.symmetric(horizontal: 25,vertical: 10)
                      ),
                      // controller: questionText,
                      // onSubmitted: messageController.handleSubmitted,
                    ),
                  ),
                ),
                // SwitchButton(
                //   text: 'Article Helper',
                // ),
                onTap == true ?
                Padding(
                  padding: const EdgeInsets.all(50.0),
                  child: NeumorphicButton(
                    onPressed: (){
                      setState(() {
                        buttonClick = true;
                      });
                    },
                    child: Icon(Icons.add),
                    style: NeumorphicStyle(
                      shape: NeumorphicShape.convex,
                      boxShape:
                      NeumorphicBoxShape.circle(),
                      depth: 3,
                      lightSource: LightSource.topLeft,
                      color:  Color(0xFFFFFFFF),
                    ),
                  ),
                ): Text(""),
                onTap == false ?
                Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('Article Helper'),
                        Switch(
                          value: isSwitched,
                          onChanged: (value){
                            setState(() {
                              isSwitched=value;
                              print(isSwitched);
                            });
                          },
                          activeTrackColor: Colors.white,
                          activeColor: Colors.green,
                        ),
                      ],
                    ),
                    isSwitched == true ?
                        Column(
                          children: [
                            ArticleText(text: 'Type of article',),
                            Padding(
                              padding: const EdgeInsets.only(top: 15,bottom: 15),
                              child: ArticleText(text: 'Are you for against central idea',),
                            ),
                            ArticleText(text: 'History/ Facts/ etc',),
                            Padding(
                              padding: const EdgeInsets.only(top: 15,bottom: 15),
                              child: ArticleText(text: 'Incident Personal',),
                            ),
                            ArticleText(text: 'Other examples',),
                            Padding(
                              padding: const EdgeInsets.only(top: 15,bottom: 15),
                              child: ArticleText(text: 'Understanding and conclusion',),
                            ),
                            ArticleText(text: 'CTA',),
                            Padding(
                              padding: const EdgeInsets.only(top: 15,bottom: 15),
                              child: ArticleText(text: '+ Add Media',),
                            ),
                            SingleChildScrollView(
                              scrollDirection: Axis.horizontal,
                              child: Row(
                                children: [
                                  Row(
                                    children: List.generate(3, (index) {
                                      return  Card(
                                        // width: width/4,
                                        // color: Colors.blue,
                                        // padding: const EdgeInsets.all( 45),
                                        // height: height/7.5,
                                        shape: RoundedRectangleBorder(
                                            borderRadius: BorderRadius.circular(16)
                                        ),
                                        child: Column(
                                          crossAxisAlignment: CrossAxisAlignment.end,
                                          children: [
                                            Padding(
                                              padding: const EdgeInsets.only(top: 10,right: 10,bottom: 5),
                                              child: Icon(Icons.cancel,color: Colors.black,size: 12,),
                                            ),
                                            Neumorphic(
                                              margin: EdgeInsets.only(right: 10,bottom: 10,left: 10),
                                              style: NeumorphicStyle(
                                                shape: NeumorphicShape.convex,
                                                boxShape:
                                                NeumorphicBoxShape.roundRect(
                                                  BorderRadius.only(
                                                    topLeft: Radius.circular(12),
                                                    topRight:  Radius.circular(12),
                                                    bottomLeft:  Radius.circular(12),
                                                    bottomRight:  Radius.circular(12),
                                                  ),),
                                                depth: 3,
                                                lightSource: LightSource.topLeft,
                                                color:  Color(0xFFFFFFFF),
                                              ),
                                              child:  Image.asset(
                                                'assets/images/tesla_car_PNG37.png',
                                                width: width/6,
                                              ),
                                            ),
                                          ],
                                        ),
                                      );
                                    }),
                                  ),
                                  Card(
                                    // width: width/4,
                                    // color: Colors.blue,
                                    // padding: const EdgeInsets.all( 45),
                                    // height: height/7.5,
                                    shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(16)
                                    ),
                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.end,
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.only(top: 10,right: 10,bottom: 5),
                                          child: Icon(Icons.cancel,color: Colors.transparent,size: 12,),
                                        ),
                                        Neumorphic(
                                          margin: EdgeInsets.only(right: 10,bottom: 10,left: 10),
                                          style: NeumorphicStyle(
                                            shape: NeumorphicShape.convex,
                                            boxShape:
                                            NeumorphicBoxShape.circle(),
                                            depth: 3,
                                            lightSource: LightSource.topLeft,
                                            color:  Color(0xFFFFFFFF),
                                          ),
                                          child:  IconButton(
                                            icon: Icon(Icons.add,color: Colors.black,),
                                            onPressed: (){

                                            },
                                          )
                                        ),
                                      ],
                                    ),
                                  )
                                ],
                              ),
                            )
                          ]
                        ):
                        Container(),
                  ],
                ) :
                    Container(),
                buttonClick == true ?
                    Card(
                     child: Padding(
                       padding: const EdgeInsets.all(15.0),
                       child: Column(
                         children: [
                           Row(
                             mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                             children:[
                               GradientButtonWidget(text: 'Image',),
                               GradientButtonWidget(text: 'Tag',),
                               GradientButtonWidget(text: 'Gifs',),
                             ]
                           ),
                           Padding(
                             padding: const EdgeInsets.only(top: 15),
                             child: GradientButtonWidget(text: 'Topic',),
                           ),

                         ],
                       ),
                     ),
                    ): Container(),
                onTap == false ?
                BottomNavWidget()
              : Text(""),

              ],
            )

          ),
        ),
      ),
    );
  }
}

class GradientButtonWidget extends StatelessWidget {
  String text;
  GradientButtonWidget({this.text});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          margin: const EdgeInsets.only(bottom:10),
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            gradient: SweepGradient(
              colors: [
                Colors.purple,
                Colors.pink,
                Colors.purple,
                Colors.purple,
                Colors.purple,
              ],
            ),
          ),
          child: InkWell(
              onTap: (){},
              child: Icon(Icons.people_outline,color: Colors.white,size: 30,)),
          width: width/5.5,
          height: 50,
        ),
        Text(text),
      ],
    );
  }
}

class ArticleText extends StatelessWidget {
  String text;
  ArticleText({this.text});
  @override
  Widget build(BuildContext context) {
    return Neumorphic(
      style: NeumorphicStyle(
          shape: NeumorphicShape.concave,
          boxShape:
          NeumorphicBoxShape.roundRect(BorderRadius.circular(24)),
          depth: 12,
          lightSource: LightSource.topLeft,
          color: Color(0xFFFFFFFF)),
      child: NeumorphicButton(
        style: NeumorphicStyle(
          color: Color(0xFFFFFFFF),
        ),
        child: Container(
          width:width,
          height: 24.0,
          padding: const EdgeInsets.only(top: 5),
          child: Text(
            text,
            style: TextStyle(
                color: Colors.grey[400], fontWeight: FontWeight.w500),
          ),
        ),
      ),
    );
  }
}
