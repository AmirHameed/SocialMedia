import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:flutter_xlider/flutter_xlider.dart';
import 'package:get/get.dart';
import 'package:social_media/utility/colors.dart';
import 'package:social_media/utility/widget/addIcon.dart';
import 'package:social_media/utility/widget/mainPost.dart';
import 'package:social_media/utility/widget/slider.dart';

class SeeMore extends StatelessWidget {
  double _lowerValue = 50;

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return  Scaffold(
        // backgroundColor: NeumorphicTheme.baseColor(context),
        body: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              children: [
                InkWell(
                  child: Align(alignment: Alignment.topRight,
                      child: Padding(
                        padding: const EdgeInsets.only(right: 10,top:10,bottom: 10),
                        child: Icon(Icons.clear,size: 35,color: Colors.grey[500],),
                      )),
                  onTap: (){
                    Get.back();
                  },
                ),
                Container(
                  child: Neumorphic(
                    margin: EdgeInsets.only(right: 10, bottom: 10, left: 10),
                    style: NeumorphicStyle(
                      shape: NeumorphicShape.concave,
                      boxShape: NeumorphicBoxShape.roundRect(
                        BorderRadius.only(
                          topLeft: Radius.circular(16),
                          topRight: Radius.circular(16),
                          bottomLeft: Radius.circular(16),
                          bottomRight: Radius.circular(16),
                        ),
                      ),
                      depth: 12,
                      lightSource: LightSource.topLeft,
                      color: Color(0xFFFFFFFF),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(top: 3),
                                      child: Text(
                                        '3.2',
                                        style: TextStyle(
                                            fontSize: 8, fontWeight: FontWeight.bold),
                                      ),
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
                                            child: Image.asset(
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
                                    Text(
                                      "Elon22> Tesla.Motors",
                                      style: TextStyle(
                                          fontSize: width / 20,
                                          fontWeight: FontWeight.w700,
                                          color: Colors.black),
                                    ),
                                    Text(
                                      "12:59 am, Pakistan",
                                      style: TextStyle(
                                          fontSize: width / 25, color: Colors.grey),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                            Row(
                              children: [
                               AddIcon(),
                                Padding(
                                  padding: const EdgeInsets.only(left: 5),
                                  child: Image.asset(
                                    'assets/images/Group 2140.png',
                                    height: 20,
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 5),
                                  child: Image.asset(
                                    'assets/images/design.png',
                                    height: height / 12,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 10),
                          child: Text(
                            'Learning is the process of acquiring new understanding, knowledge, behaviors, skills, values, attitudes, and preferences.The ability to learn is possessed by humans, animals, and some machines; there is also evidence for some kind of learning in certain plants.[2] Some learning is immediate, induced by a single event (e.g. being burned by a hot stove), but much skill and knowledge accumulate from repeated experiences. The changes induced by learning often last a lifetime, and it is hard to distinguish learned material that seems to be "lost" from that which cannot be retrieved',
                            style: TextStyle(
                              fontSize: 18,
                              color: Colors.black,
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 5),
                          child: Image.asset(
                            'assets/images/NoPath - Copy (3).png',
                            width: width,
                            height: height / 2.1,
                            fit: BoxFit.cover,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 10, bottom: 5, right: 10),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                children: [
                                  Row(
                                    children: [
                                      Image.asset(
                                        'assets/images/Group 1527.png',
                                        height: 15,
                                      ),
                                      Neumorphic(
                                        padding: EdgeInsets.symmetric(
                                            vertical: 12, horizontal: 12),
                                        style: NeumorphicStyle(
                                          shape: NeumorphicShape.convex,
                                          boxShape: NeumorphicBoxShape.roundRect(
                                              BorderRadius.circular(50)),
                                          depth: 2,
                                          //lightSource: LightSource.topLeft,
                                          color: Color(0xFFFFFFFF),
                                        ),
                                        child: Text(
                                          '3.2',
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              fontSize: 12),
                                        ),
                                      ),
                                      Image.asset(
                                        'assets/images/Group 2139.png',
                                        height: 15,
                                      ),
                                    ],
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 5, right: 5),
                                    child: Row(
                                      children: [
                                        Image.asset(
                                          'assets/images/Group 1527.png',
                                          height: 15,
                                        ),
                                        Neumorphic(
                                          padding: EdgeInsets.symmetric(
                                              horizontal: 12, vertical: 6),
                                          style: NeumorphicStyle(
                                            shape: NeumorphicShape.convex,
                                            boxShape: NeumorphicBoxShape.roundRect(
                                                BorderRadius.circular(16)),
                                            depth: 2,
                                            lightSource: LightSource.topLeft,
                                            color: Color(0xFFFFFFFF),
                                          ),
                                          child: Column(
                                            children: [
                                              Icon(
                                                Icons.remove_red_eye,
                                                size: 15,
                                                color: Colors.grey,
                                              ),
                                              Text(
                                                '156',
                                                style: TextStyle(fontSize: 8),
                                              ),
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
                                        padding: EdgeInsets.symmetric(
                                            horizontal: 12, vertical: 6),
                                        style: NeumorphicStyle(
                                          shape: NeumorphicShape.convex,
                                          boxShape: NeumorphicBoxShape.roundRect(
                                              BorderRadius.circular(16)),
                                          depth: 2,
                                          lightSource: LightSource.topLeft,
                                          color: Color(0xFFFFFFFF),
                                        ),
                                        child: Column(
                                          children: [
                                            Icon(
                                              Icons.chat_bubble_outlined,
                                              size: 15,
                                              color: Colors.grey,
                                            ),
                                            Text(
                                              '156',
                                              style: TextStyle(fontSize: 8),
                                            ),
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
                              Row(
                                children: [
                                  Image.asset(
                                    'assets/images/Group 1527.png',
                                    height: 15,
                                  ),
                                  Neumorphic(
                                    padding: EdgeInsets.symmetric(
                                        horizontal: 12, vertical: 6),
                                    style: NeumorphicStyle(
                                      shape: NeumorphicShape.convex,
                                      boxShape: NeumorphicBoxShape.roundRect(
                                          BorderRadius.circular(16)),
                                      depth: 2,
                                      lightSource: LightSource.topLeft,
                                      color: Color(0xFFFFFFFF),
                                    ),
                                    child: Column(
                                      children: [
                                        Icon(
                                          Icons.wifi_protected_setup_outlined,
                                          size: 15,
                                          color: Colors.grey,
                                        ),
                                        Text(
                                          '156',
                                          style: TextStyle(fontSize: 8),
                                        ),
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
                        FSlider(),
                        Row(children: [
                          Expanded(
                            flex: 1,
                            child: Icon(
                              Icons.add,
                              size: 35,
                              color: Colors.grey,
                            ),
                          ),
                          Expanded(
                            flex: 7,
                            child: SingleChildScrollView(
                              scrollDirection: Axis.horizontal,
                              child: Row(
                                children: List.generate(6, (index) {
                                  return Container(
                                    margin: EdgeInsets.symmetric(
                                        vertical: 6, horizontal: 2),
                                    color: Colors.transparent,
                                    width: width / 4,
                                    height: height / 20,
                                    child: Neumorphic(
                                      padding: EdgeInsets.only(right: 6),
                                      margin: EdgeInsets.symmetric(horizontal: 2),
                                      style: NeumorphicStyle(
                                          shape: NeumorphicShape.concave,
                                          depth: 2,
                                          boxShape: NeumorphicBoxShape.roundRect(
                                              BorderRadius.circular(24)),
                                          lightSource: LightSource.topLeft,
                                          color: BaseColor),
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
                                                fontWeight: FontWeight.w500),
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
                ),
              ],
            ),
          ),
        ));




  }
}
