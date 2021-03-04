import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:social_media/utility/constants.dart';
import 'package:social_media/utility/widget/bottomNavBar.dart';
import 'package:social_media/views/post_screen.dart';
import 'package:social_media/views/sell_screen.dart';
import 'package:social_media/views/text_screen.dart';
import 'package:get/get.dart';
import 'package:social_media/views/truth.dart';
import 'article.dart';
import 'gallery_screen.dart';

class ServiceScreen extends StatelessWidget {
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
                  // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 20,right: 50),
                      child: InkWell(
                        child: Text('X',style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),),
                        onTap: (){},
                      ),
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
                            width: width/2.5,
                            // height: height/20,
                            // color: Colors.red,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                InkWell(
                                    onTap: (){
                                      Get.offAndToNamed('/sell_screen');
                                    },
                                    child: Text('Product',style: TextStyle(color: Colors.grey,fontWeight: FontWeight.w500),)),
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
                                    child: InkWell(
                                      onTap: (){
                                        Get.offAndToNamed('/service_screen');
                                      },
                                      child: Text(
                                        'Services',
                                        style: TextStyle(
                                            color: Colors.blue, fontWeight: FontWeight.bold),
                                      ),
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
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Type service name',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16),),
                    TextQuestionWidget(text: 'Next',onTap: (){
                      Get.offAndToNamed('/next_screen');
                    },),
                  ],
                ),
                Column(
                    children: [
                      ArticleText(text: 'Write a product description',),
                      Padding(
                        padding: const EdgeInsets.only(top: 15,bottom: 15),
                        child: ArticleText(text: 'Product Type',),
                      ),
                      ArticleText(text: 'Add requirements',),
                      Padding(
                        padding: const EdgeInsets.only(top: 15,bottom: 15),
                        child: ArticleText(text: 'Product Id',),
                      ),
                      ArticleText(text: 'Price',),
                      Padding(
                        padding: const EdgeInsets.only(top: 15,bottom: 15),
                        child: ArticleText(text: 'Add tags',),
                      ),
                      ArticleText(text: '+ Add media',),
                      Padding(
                        padding: const EdgeInsets.only(top: 10),
                        child: SingleChildScrollView(
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
                      )
                    ]
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
