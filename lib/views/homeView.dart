import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:get/get.dart';
import 'package:social_media/utility/widget/bottomNavBar.dart';
import 'package:social_media/utility/widget/circle_theme.dart';
import 'package:social_media/utility/widget/mainPost.dart';
import 'package:social_media/utility/widget/story.dart';
import 'package:social_media/utility/widget/swapImages.dart';
class Home extends StatelessWidget {

  Widget build(BuildContext context) {

    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
        resizeToAvoidBottomInset: false,
        bottomNavigationBar: NavBar(),
        // backgroundColor: NeumorphicTheme.baseColor(context),
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                flex: 1,
                child: Row(children: [
                  Expanded(
                    flex: 6,
                      child: Row(
                    children: [
                      CircleTheme(image: 'assets/images/Ellipse 2.png',text: 'INNER CIRCLE',width: width/3.7,),
                      CircleTheme(image: 'assets/images/Ellipse -2.png',text: 'OUTER CIRCLE',width: width/3.7,),
                      CircleTheme(image: 'assets/images/Ellipse -1.png',text: 'UNIVERSE',width: width/3.7,),
                    ],
                  )),

                  Expanded(
                    flex: 1,
                    child: InkWell(
                      onTap: (){
                        Get.toNamed('/notificationsMessages');
                      },
                      child: Neumorphic(
                        padding: EdgeInsets.all(16),
                        margin: EdgeInsets.only(right: 5),
                        style: NeumorphicStyle(
                          shape: NeumorphicShape.concave,
                          boxShape: NeumorphicBoxShape.roundRect(BorderRadius.circular(50)),
                          depth: 2,
                          //lightSource: LightSource.topLeft,
                          color:  Color(0xFFFFFFFF),
                        ),
                        child: Image.asset('assets/images/message.png'),
                      ),
                    ),
                  ),
                ]),
              ),
              Expanded(
                flex: 9,
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 10,right: 10,bottom: 10),
                        child: SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Column(
                                children: [
                                  Text('3.2',style: TextStyle(color: Colors.black,fontWeight: FontWeight.w600,fontSize: 12),),
                                  Stack(
                                    children: <Widget>[
                                      Container(
                                        alignment: Alignment.center,
                                        height: 60,
                                        width: 60,
                                        decoration: BoxDecoration(
                                          gradient: LinearGradient(
                                            begin: Alignment.topRight,
                                            end: Alignment.bottomLeft,
                                            stops: [0.1, 0.5, 0.7, 0.9,0.11, 0.13],
                                            colors: [
                                              Colors.green[200],
                                              Colors.blue[200],
                                              Colors.purple[200],
                                              Colors.yellow[200],
                                              Colors.deepOrange[200],
                                              Colors.pink[200],

                                            ],
                                          ),
                                          shape:BoxShape.circle,
                                        ),
                                        child: Center(
                                          child: ClipOval(
                                              child: Image.asset('assets/images/Ellipse 2.png',  height: 54,
                                                width: 54,
                                                fit: BoxFit.cover,)
                                          ),
                                        ),
                                      ),
                                      Positioned(
                                          bottom: 1,
                                          right: 1,
                                          child: InkWell(
                                            onTap: () {
                                            },
                                            child: Container(
                                              height: 20,
                                              width: 20,
                                              child: Icon(
                                                Icons.add,
                                                color: Colors.black,
                                                size: 15,
                                              ),
                                              decoration: BoxDecoration(
                                                  color: Colors.white,
                                                  borderRadius:
                                                  BorderRadius.all(Radius.circular(20))),
                                            ),
                                          ))
                                    ],
                                  ),
                                  Text('My Story',style: TextStyle(color: Colors.black,fontWeight: FontWeight.w600,fontSize: 12),),
                                ],
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 25,right: 25),
                                child: Story(text: 'Elon 22',image: 'assets/images/Ellipse -1.png',),
                              ),
                              Story(text: 'Elon 23',image: 'assets/images/Ellipse -2.png',),
                              Padding(
                                padding: const EdgeInsets.only(left: 25,right: 25),
                                child: Story(text: 'Elon 22',image: 'assets/images/Ellipse -1.png',),
                              ),
                              Story(text: 'Elon 24',image: 'assets/images/Ellipse -2.png',),

                            ],
                          ),
                        ),
                      ),
                      mainPost(image: 'assets/images/working-women-getty.png',),
                      SizedBox(height: height*0.02,),
                      mainPost(image: 'assets/images/carvid.png',onPressed: (){
                        Get.toNamed('/liveImage');
                      },),
                      SizedBox(height: height*0.02,),
                      mainPost(image:'assets/images/shahrukh.png'),
                      SizedBox(height: height*0.02,),
                      // mainPost(image: 'assets/images/flower.png',),
                      SwapImages(),
                    ],
                  ),
                ),
              )
            ],
          ),
        ));
  }

}