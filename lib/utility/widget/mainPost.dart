import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:flutter_xlider/flutter_xlider.dart';
import 'package:get/get.dart';
import 'package:social_media/controllers/sliderController.dart';
class mainPost extends StatelessWidget {

  double _lowerValue = 50;
  Function onPressed;
  String image;
  mainPost({this.image,this.onPressed});
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return  Container(
      child: Neumorphic(
        margin: EdgeInsets.only(right: 10,bottom: 10,left: 10),
        style: NeumorphicStyle(
          shape: NeumorphicShape.concave,
          boxShape:
          NeumorphicBoxShape.roundRect(
            BorderRadius.only(
              topLeft: Radius.circular(16),
              topRight:  Radius.circular(16),
              bottomLeft:  Radius.circular(16),
              bottomRight:  Radius.circular(16),
            ),),
          depth: 12,
          lightSource: LightSource.topLeft,
          color:Color(0xFFFFFFFF),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 3),
                        child: Text('3.2',style: TextStyle(fontSize: 8,fontWeight: FontWeight.bold),),
                      ),
                      Row(
                        children: [
                          Image.asset(
                            'assets/images/Group 1527.png',
                            height: 15,
                          ),
                          CircleAvatar(
                            radius: 20,
                            backgroundColor: Colors.transparent,
                            child: ClipOval(
                              child:  Image.asset(
                                'assets/images/Ellipse 259.png',
                                height: 60,
                                width: 60,
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          Image.asset(
                            'assets/images/Group 2139.png',
                            height: 15,
                          ),
                        ],
                      ),
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Elon22> Tesla.Motors",style: TextStyle(fontSize:width/23,fontWeight: FontWeight.w700,color: Colors.black),),
                      Text("12:59 am, Pakistan",style: TextStyle(fontSize:width/28,color: Colors.grey),),
                    ],
                  ),
                ],),

                Row(
                  children: [
                    NeumorphicIcon(
                      Icons.add_circle,
                      size: 30,
                      style: NeumorphicStyle(
                  color: Color(0xFFFFFFFF),
                ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 5),
                      child: Image.asset(
                        'assets/images/Group 2140.png',
                        height: 20,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left:5),
                      child: Image.asset(
                        'assets/images/design.png',
                        height: height/12,
                      ),
                    ),
                  ],
                ),

              ],
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10),
              child: Row(children: [
                Expanded(
                  flex:5,
                    child: Text('Good work guys! I remember the t', style:TextStyle(fontSize: 18,color: Colors.black,),overflow: TextOverflow.ellipsis,maxLines: 1,)),
                Expanded(
                  flex:2,
                  child: InkWell(
                      onTap: (){
                       Get.toNamed('/seeMore');
                      },
                      child: Text('see more', style:  TextStyle(fontSize: 18,color: Colors.black,fontWeight: FontWeight.w700),)),),
              ],),
            ),

            Padding(
              padding: const EdgeInsets.only(top: 5),
              child: InkWell(
                  onTap: onPressed,
                  child: Image.asset(image,width: width,height: height/2.1,fit: BoxFit.cover,)),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 10,bottom: 5,right: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(children: [
                    Row(
                      children: [
                        Image.asset(
                          'assets/images/Group 1527.png',
                          height: 15,
                        ),
                        Neumorphic(
                          padding: EdgeInsets.symmetric(vertical: 12,horizontal: 12),
                          style: NeumorphicStyle(
                            shape: NeumorphicShape.convex,
                            boxShape: NeumorphicBoxShape.roundRect(BorderRadius.circular(50)),
                            depth: 2,
                            //lightSource: LightSource.topLeft,
                            color:  Color(0xFFFFFFFF),
                          ),
                          child: Text('3.2',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 12),),
                        ),
                        Image.asset(
                          'assets/images/Group 2139.png',
                          height: 15,
                        ),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 5,right: 5),
                      child: Row(
                        children: [
                          Image.asset(
                            'assets/images/Group 1527.png',
                            height: 15,
                          ),
                          Neumorphic(
                            padding: EdgeInsets.symmetric(horizontal: 12,vertical: 6),
                            style: NeumorphicStyle(
                              shape: NeumorphicShape.convex,
                              boxShape: NeumorphicBoxShape.roundRect(BorderRadius.circular(16)),
                              depth: 2,
                              lightSource: LightSource.topLeft,
                              color:  Color(0xFFFFFFFF),
                            ),
                            child: Column(
                              children: [
                                Icon(Icons.remove_red_eye,size: 15,color: Colors.grey,),
                                Text('156',style: TextStyle(fontSize: 8),),
                              ],
                            ),
                          ),
                          Image.asset(
                            'assets/images/Group 2139.png',
                            height: 15,
                          ),
                        ],
                      ),
                    ),
                    Row(
                      children: [
                        Image.asset(
                          'assets/images/Group 1527.png',
                          height: 15,
                        ),
                        Neumorphic(
                          padding: EdgeInsets.symmetric(horizontal: 12,vertical: 6),
                          style: NeumorphicStyle(
                            shape: NeumorphicShape.convex,
                            boxShape: NeumorphicBoxShape.roundRect(BorderRadius.circular(16)),
                            depth: 2,
                            lightSource: LightSource.topLeft,
                            color:  Color(0xFFFFFFFF),
                          ),
                          child: Column(
                            children: [
                              Icon(Icons.chat_bubble_outlined,size: 15,color: Colors.grey,),
                              Text('156',style: TextStyle(fontSize: 8),),
                            ],
                          ),
                        ),
                        Image.asset(
                          'assets/images/Group 2139.png',
                          height: 15,
                        ),
                      ],
                    ),
                  ],),
                  Row(
                    children: [
                      Image.asset(
                        'assets/images/Group 1527.png',
                        height: 15,
                      ),
                      Neumorphic(
                        padding: EdgeInsets.symmetric(horizontal: 12,vertical: 6),
                        style: NeumorphicStyle(
                          shape: NeumorphicShape.convex,
                          boxShape: NeumorphicBoxShape.roundRect(BorderRadius.circular(16)),
                          depth: 2,
                          lightSource: LightSource.topLeft,
                          color:  Color(0xFFFFFFFF),
                        ),
                        child: Column(
                          children: [
                            Icon(Icons.wifi_protected_setup_outlined,size: 15,color: Colors.grey,),
                            Text('156',style: TextStyle(fontSize: 8),),
                          ],
                        ),
                      ),
                      Image.asset(
                        'assets/images/Group 2139.png',
                        height: 15,
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20),
              child: Text(('246 Vibe')),
            ),


            Row(
              children: [
                Expanded(
                  flex:1,
                  child: Text(
                    'Sexy',
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 14,
                        fontWeight: FontWeight.w500
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
                Expanded(
                  flex: 5,
                  child: FlutterSlider(
                    jump: true,
                    handlerHeight: 32.0,
                    trackBar: FlutterSliderTrackBar(
                      activeTrackBar:  BoxDecoration(
                        gradient: SweepGradient(
                            colors: [
                              Colors.pink,
                              Colors.blue,
                              Colors.green,
                              Colors.yellow,
                              Colors.purple
                            ],
                            stops: [0.8, 0.96, 0.74, 0.22, 0.85],
                            startAngle: 0.5,
                            endAngle: 1
                        ),
                      ),
                      inactiveTrackBar:  BoxDecoration(
                        gradient: SweepGradient(
                            colors: [
                              Colors.pink,
                              Colors.blue,
                              Colors.green,
                              Colors.yellow,
                              Colors.purple
                            ],
                            stops: [0.8, 0.96, 0.74, 0.22, 0.85],
                            startAngle: 0.5,
                            endAngle: 1
                        ),
                      ),
                    ),
                    values: [10],
                    fixedValues: [
                      FlutterSliderFixedValue(percent: 0, value: "0"),
                      FlutterSliderFixedValue(percent: 10, value: "1.0"),
                      FlutterSliderFixedValue(percent: 20, value: "1.5"),
                      FlutterSliderFixedValue(percent: 30, value: "2.0"),
                      FlutterSliderFixedValue(percent: 40, value: "2.5"),
                      FlutterSliderFixedValue(percent: 50, value: "3.0"),
                      FlutterSliderFixedValue(percent: 60, value: "3.5"),
                      FlutterSliderFixedValue(percent: 70, value: "4.0"),
                      FlutterSliderFixedValue(percent: 80, value: "4.5"),
                      FlutterSliderFixedValue(percent: 90, value: "4.8"),
                      FlutterSliderFixedValue(percent: 100, value: "5.0"),
                    ],
                    onDragging: (handlerIndex, lowerValue, upperValue) {
                      _lowerValue = lowerValue;

                    },
                    handler: FlutterSliderHandler(
                      // decoration: BoxDecoration(),

                      child: Row(
                        children: [
                          // Image.asset('assets/images/leftBrackets.png'),
                          Image.asset('assets/images/NoPath - Copy (28).png'),
                          // Image.asset('assets/images/rightBrackets.png'),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Row(children: [
              Expanded(
                flex: 1,
                child:  Icon(Icons.add,size: 35,color: Colors.grey,),
              ),
              Expanded(
                flex: 7,
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: List.generate(6, (index) {
                      return Container(
                        margin: EdgeInsets.symmetric(vertical: 6, horizontal: 2),
                        color: Colors.transparent,
                        width: width/4,
                        height: height/20,
                        child: Neumorphic(
                          padding: EdgeInsets.only(right: 6),
                          margin: EdgeInsets.symmetric(horizontal: 2),
                          style: NeumorphicStyle(
                              shape: NeumorphicShape.concave,
                              depth: 2,
                              boxShape: NeumorphicBoxShape.roundRect(
                                  BorderRadius.circular(24)),
                              lightSource: LightSource.topLeft,
                              color: Colors.white),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              CircleAvatar(
                                radius: 21,
                                backgroundColor: Colors.transparent,
                                child: ClipOval(
                                    child: Image.asset(
                                      'assets/images/Ellipse -2.png',
                                      width: 40,
                                      height: 45,
                                      fit: BoxFit.cover,
                                    )),
                              ),
                              Text(
                                'Sexy',
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 14,
                                    fontWeight: FontWeight.w500
                                ),
                                textAlign: TextAlign.center,
                              ),
                            ],
                          ),
                        ),
                      );
                    }),
                  ),
                ),
              ),
            ]),
          ],
        ),
      ),
    );
  }
}
