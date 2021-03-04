import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:get/get.dart';
import 'package:social_media/controllers/commonController.dart';
import 'package:social_media/controllers/text_controller.dart';
import 'package:social_media/utility/constants.dart';
import 'package:social_media/utility/widget/bottomNavBar.dart';
import 'package:social_media/utility/widget/circle_theme.dart';
import 'package:social_media/views/post_screen.dart';
import 'package:social_media/views/sell_screen.dart';
import '../article.dart';
import '../gallery_screen.dart';
import '../text_screen.dart';
import '../truth.dart';

bool isSwitched = false;
TextController textController = Get.put(TextController());

class GroupScreen extends StatefulWidget {
  @override
  _GroupScreenState createState() => _GroupScreenState();
}

class _GroupScreenState extends State<GroupScreen> {
  CommonController commonController = Get.put(CommonController());
  bool button = false;
  bool isSwitched = true;
  bool buttonClick = false;
  TextEditingController questionText = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
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
                                InkWell(
                                    onTap: (){
                                      Get.offAndToNamed('/product_screen');
                                    },
                                    child: Text('Product',style: TextStyle(color: Colors.grey,fontWeight: FontWeight.w500),)),


                                InkWell(
                                    onTap: (){
                                      Get.offAndToNamed('/service_review_screen');
                                    },
                                    child: Text('Services',style: TextStyle(color: Colors.grey,fontWeight: FontWeight.w500),)),
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
                                      'Group',
                                      style: TextStyle(
                                          color: Colors.blue, fontWeight: FontWeight.bold),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),

                    // Image.asset('assets/images/questions.png'),
                  ],
                ),
                TextQuestionWidget(text: 'Next',onTap: (){
                  Get.offAndToNamed('/next_screen');
                },),
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
                      },
                      decoration: InputDecoration(
                          hintText: "Search for a group",
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
                  child: Divider(
                    thickness: 1.0,
                  ),
                ),
                button == false ?
                Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 5,right: 5,top: 5,bottom: 5),
                      child: SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: List.generate(10, (index) {
                            return  DebateTheme(image: 'assets/images/Ellipse -1.png',text: 'Makeup',width: width/3.7,onTap: (){},);
                          }
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 10,bottom: 0),
                      child: Divider(
                        thickness: 1.0,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 10,right: 10),
                      child: Column(
                          children: List.generate(10, (index) {
                            return  Padding(
                              padding: const EdgeInsets.only(top: 5,bottom: 0),
                              child: InkWell(
                                onTap: (){
                                  setState(() {
                                    button = true;
                                  });
                                },
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  // crossAxisAlignment: CrossAxisAlignment.start,/**/
                                  children: [
                                    Row(
                                      children: [
                                        Column(
                                          children: [
                                            Text('3.2'),
                                            CircleAvatar(
                                              backgroundColor: Colors.white,
                                              radius: width/17,
                                              child: CircleAvatar(
                                                // radius: 21,
                                                // backgroundColor: Colors.white,
                                                child: ClipOval(
                                                    child: Image.asset(
                                                      'assets/images/Ellipse -1.png',
                                                      width: width/5,
                                                      // fit: BoxFit.cover,
                                                    )),
                                              ),
                                            ),
                                          ],
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.only(left: 5,top:8),
                                          child: Column(
                                            crossAxisAlignment: CrossAxisAlignment.start,
                                            children: [
                                              Text('Maybeline Lip Grace'),
                                              Text('Rs. 800',style: TextStyle(color: Colors.grey)),
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                    Text('245 vibes',style: TextStyle(color: Colors.grey),),
                                  ],
                                ),
                              ),
                            );
                          })
                      ),
                    ),
                  ],
                )
                    :
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
                ),
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
