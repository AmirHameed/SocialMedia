import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:get/get.dart';
import 'package:social_media/utility/constants.dart';
import 'package:social_media/utility/widget/circle_theme.dart';
import 'package:social_media/utility/widget/slider.dart';
import 'package:social_media/views/text_screen.dart';

import 'comments_widget.dart';

class NextScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                      child: Text("X",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 24),),
                      onTap: (){
                        // Get.off(page
                        Navigator.pop(context);
                      },
                    ),
                    Align(
                      alignment: Alignment.bottomRight,
                      child: Padding(
                        padding: const EdgeInsets.only(right: 5,top: 10,bottom: 10),
                        child: FlatButton(
                          color: Colors.green,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(18)
                          ),
                          onPressed: (){},
                          child: Text("Done",style: TextStyle(color: Colors.white),),
                        ),
                      ),
                    ),


                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 0,bottom: 10),
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
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 10,bottom: 10),
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
                      // controller: questionText,
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
              ],
            ),
          ),
        ),
      ),
    );
  }
}
