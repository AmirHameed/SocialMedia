import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:get/get.dart';

import 'messages.dart';

class NotificationsMessages extends StatelessWidget {
  bool check = false;
  bool cancel = false;
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    double l = MediaQuery.of(context).size.longestSide;
    Orientation orien = MediaQuery.of(context).orientation;
    bool screen = orien == Orientation.portrait ? true : false;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFFFFFFFF),
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back,
            color: Colors.grey[400],
          ),
          onPressed: (){
            Get.back();
          },
        ),
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
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
                  'Notification',
                  style: TextStyle(
                      color: Colors.black, fontWeight: FontWeight.bold),
                ),
              ),
            ),
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
                  'Messages',
                  style: TextStyle(
                      color: Colors.black, fontWeight: FontWeight.bold),
                ),
                onPressed: () {
                  Get.toNamed('/messages');
                }
              ),
            ),
          ],
        ),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.only(left: 15, right: 15),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 10, bottom: 5),
                  child: Text(
                    'Activity',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                  ),
                ),
                Container(
                  height: 1.0,
                  color: Colors.grey[300],
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 20),
                  child: Column(
                    children: List.generate(3, (index) {
                      return Padding(
                        padding: const EdgeInsets.only(top: 20),
                        child: Neumorphic(
                            style: NeumorphicStyle(
                              shape: NeumorphicShape.concave,
                              boxShape: NeumorphicBoxShape.roundRect(
                                  BorderRadius.circular(38)),
                              // depth: 8,
                              intensity: 5,
                              lightSource: LightSource.left,
                               color:Color(0xFFFFFFFF),
                            ),
                            child: Container(
                              padding: const EdgeInsets.only(bottom: 10),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                children: [
                                  Column(
                                    children: [
                                      Text(
                                        '3.2',
                                        style: TextStyle(fontSize: 10),
                                      ),
                                      Image.asset(
                                        'assets/images/Ellipse 311.png',
                                        // height: 40,
                                      ),
                                    ],
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(top: 10),
                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Row(
                                          children: [
                                            Text(
                                              'Nick Collins',
                                              style: TextStyle(
                                                  fontWeight: FontWeight.bold),
                                            ),
                                            Text(
                                              '   "cute 3.5"',
                                              style: TextStyle(
                                                  fontWeight: FontWeight.bold,
                                                  color: Colors.red),
                                            ),
                                          ],
                                        ),
                                        Text(
                                          '114 others also vibed on your post',
                                          style: TextStyle(color: Colors.grey),
                                        ),
                                        Text(
                                          '3 min ago',
                                          style: TextStyle(color: Colors.grey),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Column(
                                    children: [
                                      Text(
                                        '3.2',
                                        style: TextStyle(fontSize: 10),
                                      ),
                                      Image.asset(
                                        'assets/images/Ellipse 313.png',
                                        // height: 40,
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            )),
                      );
                    }),
                  ),
                ),
                Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 10,bottom: 10),
                      child: Neumorphic(
                          style: NeumorphicStyle(
                            shape: NeumorphicShape.concave,
                            boxShape: NeumorphicBoxShape.roundRect(
                                BorderRadius.circular(38)),
                            // depth: 8,
                            intensity: 5,
                            lightSource: LightSource.left,
                            color: Color(0xFFFFFFFF)
                          ),
                          child: Container(
                            padding: const EdgeInsets.only(bottom: 10),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Column(
                                  children: [
                                    Text(
                                      '3.2',
                                      style: TextStyle(fontSize: 10),
                                    ),
                                    Image.asset(
                                      'assets/images/Ellipse 311.png',
                                      // height: 40,
                                    ),
                                  ],
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(top: 10),
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Row(
                                        children: [
                                          Text(
                                            'Nick Collins',
                                            style: TextStyle(
                                                fontWeight: FontWeight.bold),
                                          ),
                                          Text(
                                            '   "cute 3.5"',
                                            style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                                color: Colors.red),
                                          ),
                                        ],
                                      ),
                                      Text(
                                        '114 others also vibed on your post',
                                        style: TextStyle(color: Colors.grey),
                                      ),
                                      Text(
                                        '3 min ago',
                                        style: TextStyle(color: Colors.grey),
                                      ),
                                    ],
                                  ),
                                ),
                                Row(
                                  children: [
                                    InkWell(
                                      child: Image.asset('assets/images/cancel.png',height: 40,),
                                      onTap: (){},
                                    ),
                                    InkWell(
                                      child: Image.asset('assets/images/check.png',height: 30,),
                                      onTap: (){
                                        setState(){
                                          check = true;
                                        }
                                      },
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          )),
                    ),
                  ],
                ),
                check == true ?
                Padding(
                  padding: const EdgeInsets.only(top: 10,bottom: 10),
                  child: Neumorphic(
                      style: NeumorphicStyle(
                        shape: NeumorphicShape.concave,
                        boxShape: NeumorphicBoxShape.roundRect(
                            BorderRadius.circular(38)),
                        // depth: 8,
                        intensity: 5,
                        lightSource: LightSource.left,
                       color: Color(0xFFFFFFFF)
                      ),
                      child: Container(
                        padding: const EdgeInsets.only(bottom: 10),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Column(
                              children: [
                                Text(
                                  '3.2',
                                  style: TextStyle(fontSize: 10),
                                ),
                                Image.asset(
                                  'assets/images/Ellipse 311.png',
                                  // height: 40,
                                ),
                              ],
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 10),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    children: [
                                      Text(
                                        'Nick Collins',
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold),
                                      ),
                                      Text(
                                        '   "cute 3.5"',
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            color: Colors.red),
                                      ),
                                    ],
                                  ),
                                  Text(
                                    '114 others also vibed on your post',
                                    style: TextStyle(color: Colors.grey),
                                  ),
                                  Text(
                                    '3 min ago',
                                    style: TextStyle(color: Colors.grey),
                                  ),
                                ],
                              ),
                            ),
                            Row(
                              children: [
                                InkWell(
                                  child: Image.asset('assets/images/cancel.png',height: 40,),
                                  onTap: (){},
                                ),
                                InkWell(
                                  child: Image.asset('assets/images/check.png',height: 30,),
                                  onTap: (){},
                                ),
                              ],
                            ),
                          ],
                        ),
                      )),
                ) : Container(),

                Padding(
                  padding: const EdgeInsets.only(top: 10, bottom: 5),
                  child: Text(
                    'Earn Repo',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                  ),
                ),
                Container(
                  height: 1.0,
                  color: Colors.grey[300],
                ),
                Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 20),
                      child: Neumorphic(
                          style: NeumorphicStyle(
                            shape: NeumorphicShape.concave,
                            boxShape: NeumorphicBoxShape.roundRect(
                                BorderRadius.circular(38)),
                            // depth: 8,
                            intensity: 5,
                            lightSource: LightSource.left,
                           color: Color(0xFFFFFFFF)
                          ),
                          child: Container(
                            padding: const EdgeInsets.only(bottom: 10),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Column(
                                  children: [
                                    Text(
                                      '3.2',
                                      style: TextStyle(fontSize: 10),
                                    ),
                                    Image.asset(
                                      'assets/images/Ellipse 311.png',
                                      // height: 40,
                                    ),
                                  ],
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(top: 10),
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Row(
                                        children: [
                                          Text(
                                            'Nick Collins',
                                            style: TextStyle(
                                                fontWeight: FontWeight.bold),
                                          ),
                                          Text(
                                            '   "cute 3.5"',
                                            style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                                color: Colors.red),
                                          ),
                                        ],
                                      ),
                                      Text(
                                        '114 others also vibed on your post',
                                        style: TextStyle(color: Colors.grey),
                                      ),
                                      Text(
                                        '3 min ago',
                                        style: TextStyle(color: Colors.grey),
                                      ),
                                    ],
                                  ),
                                ),
                                Column(
                                  children: [
                                    Text(
                                      '3.2',
                                      style: TextStyle(fontSize: 10),
                                    ),
                                    Image.asset(
                                      'assets/images/Ellipse 313.png',
                                      // height: 40,
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          )),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 20),
                      child: Neumorphic(
                          style: NeumorphicStyle(
                            shape: NeumorphicShape.concave,
                            boxShape: NeumorphicBoxShape.roundRect(
                                BorderRadius.circular(38)),
                            // depth: 8,
                            intensity: 5,
                            lightSource: LightSource.left,
                           color: Color(0xFFFFFFFF)
                          ),
                          child: Container(
                            padding: const EdgeInsets.only(bottom: 10),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Column(
                                  children: [
                                    Text(
                                      '3.2',
                                      style: TextStyle(fontSize: 10),
                                    ),
                                    Image.asset(
                                      'assets/images/Ellipse 311.png',
                                      // height: 40,
                                    ),
                                  ],
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(top: 10),
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Row(
                                        children: [
                                          Text(
                                            'Nick Collins',
                                            style: TextStyle(
                                                fontWeight: FontWeight.bold),
                                          ),
                                          Text(
                                            '   "cute 3.5"',
                                            style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                                color: Colors.red),
                                          ),
                                        ],
                                      ),
                                      Text(
                                        '114 others also vibed on your post',
                                        style: TextStyle(color: Colors.grey),
                                      ),
                                      Text(
                                        '3 min ago',
                                        style: TextStyle(color: Colors.grey),
                                      ),
                                    ],
                                  ),
                                ),
                                Row(
                                  children: [
                                    InkWell(
                                      child: Image.asset('assets/images/cancel.png',height: 40,),
                                      onTap: (){},
                                    ),
                                    InkWell(
                                      child: Image.asset('assets/images/check.png',height: 30,),
                                      onTap: (){},
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          )),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
