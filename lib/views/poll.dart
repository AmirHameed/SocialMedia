import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:get/get.dart';
import 'package:social_media/utility/constants.dart';
import 'package:social_media/utility/widget/bottomNavBar.dart';
import 'package:social_media/utility/widget/circle_theme.dart';
import 'package:social_media/utility/widget/slider.dart';
import 'package:social_media/views/review_screens/group.dart';
import 'package:social_media/views/truth.dart';

import 'article.dart';
import 'comments_widget.dart';

class PollScreen extends StatelessWidget {
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
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      InkWell(
                        child: Text('X',style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),),
                        onTap: (){},
                      ),
                      TextQuestionWidget(text: 'Post',onTap: (){
                        Get.offAndToNamed('/next_screen');
                      },),
                      // Image.asset('assets/images/questions.png'),
                    ],
                  ),
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
                              // controller: questionText,
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
                    padding: const EdgeInsets.only(top: 0,bottom: 0),
                    child: Divider(
                      thickness: 1.0,
                    ),
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
                          // setState(() {
                          //   onTap = true;
                          // });
                        },
                        decoration: InputDecoration(
                            hintText: "Option 1",
                            border: InputBorder.none,
                            contentPadding: const EdgeInsets.symmetric(horizontal: 25,vertical: 10)
                        ),
                        // controller: questionText,
                        // onSubmitted: messageController.handleSubmitted,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 10,bottom: 10),
                    child: Neumorphic(
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
                            // setState(() {
                            //   onTap = true;
                            // });
                          },
                          decoration: InputDecoration(
                              hintText: "Option 2",
                              border: InputBorder.none,
                              contentPadding: const EdgeInsets.symmetric(horizontal: 25,vertical: 10)
                          ),
                          // controller: questionText,
                          // onSubmitted: messageController.handleSubmitted,
                        ),
                      ),
                    ),
                  ),

                  // SwitchButton(
                  //   text: 'Article Helper',
                  // ),
                  // onTap == true ?
                  NeumorphicButton(
                    onPressed: (){
                      // setState(() {
                      //   buttonClick = true;
                      // });
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
                  Padding(
                    padding: const EdgeInsets.only(top: 10,bottom: 0),
                    child: Divider(
                      thickness: 1.0,
                    ),
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
                          // setState(() {
                          //   onTap = true;
                          // });
                        },
                        decoration: InputDecoration(
                            hintText: "Add vibe",
                            border: InputBorder.none,
                            contentPadding: const EdgeInsets.symmetric(horizontal: 25,vertical: 10)
                        ),
                        // controller: questionText,
                        // onSubmitted: messageController.handleSubmitted,
                      ),
                    ),
                  ),
                  FSlider(),
                  CommentsWidget(),
                  Align(
                      alignment: Alignment.topLeft,
                      child: Text('Also post to',style: TextStyle(fontSize: 18),)),
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
              )

          ),
        ),
      ),
    );
  }
}
