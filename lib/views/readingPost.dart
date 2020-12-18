import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:get/get.dart';
import 'package:social_media/utility/widget/bottomNavBar.dart';
import 'package:social_media/utility/widget/circle_theme.dart';

class ReadingView extends StatelessWidget {
  ReadingView({Key key}) : super(key: key);
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Colors.grey[50],
        resizeToAvoidBottomInset: false,
        bottomNavigationBar: NavBar(),
        // backgroundColor: NeumorphicTheme.baseColor(context),
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.only(top: 0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(children: [
                  Expanded(
                      flex: 8,
                      child: Row(
                        children: [
                          CircleTheme(image: 'assets/images/Ellipse 2.png',text: 'INNER CIRCLE',width: width/3.5,),
                          CircleTheme(image: 'assets/images/Ellipse -2.png',text: 'OUTER CIRCLE',width: width/3.4,color: Colors.lightBlue,),
                          CircleTheme(image: 'assets/images/Ellipse -1.png',text: 'UNIVERSE',width: width/3.5,color: Colors.lightBlue,),
                        ],
                      )),

                  Expanded(
                    flex: 1,
                    child: InkWell(
                      onTap: (){
                        Get.toNamed('/notificationsMessages');
                      },
                      child: Neumorphic(
                        padding: EdgeInsets.all(8),
                        margin: EdgeInsets.only(right: 5),
                        style: NeumorphicStyle(
                          shape: NeumorphicShape.concave,
                          boxShape: NeumorphicBoxShape.roundRect(BorderRadius.circular(50)),
                          depth: 2,
                          //lightSource: LightSource.topLeft,
                          color:  Color(0xFFFFFFFF),
                        ),
                        child: Icon(Icons.email_rounded,size: 20 ,color: Colors.grey,),
                      ),
                    ),
                  ),
                ]),
                Row(children: [
                  Container(
                    height: height/6,
                    width: width/3.7,
                    child: Neumorphic(
                      margin: EdgeInsets.only(right: 10,bottom: 10,left: 10),
                      style: NeumorphicStyle(
                        shape: NeumorphicShape.flat,
                        boxShape:
                        NeumorphicBoxShape.roundRect(
                          BorderRadius.only(
                            topLeft: Radius.circular(16),
                            topRight:  Radius.circular(0),
                            bottomLeft:  Radius.circular(16),
                            bottomRight:  Radius.circular(0),
                          ),),
                        depth: 4,
                        lightSource: LightSource.topLeft,
                        color: Colors.white,
                      ),
                      child:  Image.asset(
                        'assets/images/shahrukh-khan-20190625140849-86.png',fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  SizedBox(width: width/18,),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Baby don't hurt me",style: TextStyle(fontSize: width/17,fontWeight: FontWeight.bold),),
                      SizedBox(height: height*0.010,),
                      Text('Tesla.Moters',style: TextStyle(fontSize: width/21,fontWeight: FontWeight.w500),),
                      SizedBox(height: height*0.010,),
                      Text('12 Videos',style: TextStyle(fontSize: width/24,fontWeight: FontWeight.w500,color: Colors.grey),),
                    ],
                  ),
                ],),
                Image.asset(
                  'assets/images/audio.png',
                ),
                Container(
                  height: height/1.8,
                  child: GridView.count(
                    crossAxisCount: 3 ,
                    children: List.generate(20,(index){
                      return  Container(
                        child: Neumorphic(
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
                          ),
                        ),
                      );
                    }),
                  ),
                )
              ],
            ),
          ),
        ));
  }
}