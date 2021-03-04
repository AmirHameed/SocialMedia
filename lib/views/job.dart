import 'package:awesome_dialog/awesome_dialog.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:social_media/utility/constants.dart';
import 'package:social_media/utility/widget/bottomNavBar.dart';
import 'package:social_media/views/text_screen.dart';
import 'package:social_media/views/truth.dart';
import 'article.dart';


class JobScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: NavBar(),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.only(left: 10,right: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 20,right: 200),
                        child: InkWell(
                          child: Text('X',style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),),
                          onTap: (){},
                        ),
                      ),
                      Expanded(
                        child: AnimatedButton(
                          text: 'Next',
                          color: purpleColor,
                          pressEvent: () {
                            AwesomeDialog(
                                context: context,
                                dialogType: DialogType.ERROR,
                                animType: AnimType.RIGHSLIDE,
                                headerAnimationLoop: false,
                                title: 'Error',
                                desc:
                                'There was an error in uploading the post. Please try again later',
                                btnOkOnPress: () {
                                  Get.offAndToNamed('/share_screen');
                                },
                                // btnOkIcon: Icons.cancel,
                                btnOkColor: Colors.red)
                              ..show();
                          },
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 20),
                        child: Text(''),
                      ),
                      // Padding(
                      //   padding: const EdgeInsets.only(left: 50),
                      //   child: TextQuestionWidget(text: 'Next',onTap: (){
                      //     Get.offAndToNamed('/next_screen');
                      //   },),
                      // ),
                      // Image.asset('assets/images/questions.png'),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 5,bottom: 15),
                  child: Text('Type job name',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16),),
                ),
                Column(
                    children: [
                      ArticleText(text: 'Write a job description',),
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
