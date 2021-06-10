import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:get/get.dart';
import 'package:social_media/utility/widget/addIcon.dart';
import 'package:social_media/utility/widget/bottomNavBar.dart';
import 'package:social_media/utility/widget/notiWidget.dart';

import 'messages.dart';

class NotificationsMessages extends StatefulWidget {
  @override
  _NotificationsMessagesState createState() => _NotificationsMessagesState();
}

class _NotificationsMessagesState extends State<NotificationsMessages> {
  bool check = false;
  bool cancel = false;
  List<String> listItems = [
    "1",
    "2"
  ];
  final items = List<String>();
  void deleteItem(index) {
    setState(() {
      listItems.removeAt(index);
    });
  }
  void undoDeletion(index, item) {
    setState(() {
      listItems.insert(index, item);
    });
  }
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    double l = MediaQuery.of(context).size.longestSide;
    Orientation orien = MediaQuery.of(context).orientation;
    bool screen = orien == Orientation.portrait ? true : false;
    return Scaffold(
      resizeToAvoidBottomInset: false,
      bottomNavigationBar: NavBar(),
      appBar: AppBar(
        elevation: 0,
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
        title: Stack(
          children: [
            Neumorphic(
              style: NeumorphicStyle(
                // shape: NeumorphicShape.concave,
                boxShape:
                NeumorphicBoxShape.roundRect(BorderRadius.circular(36)),
                depth: -5,
                // lightSource: LightSource.topLeft,
                color: Color(0xFFFFFFFF),
              ),
              child: Container(
                padding: const EdgeInsets.only(top: 10,bottom: 0,right: 30,left: 150),
                child: GestureDetector(
                  child: Padding(
                    padding: const EdgeInsets.only(left: 20,bottom: 10),
                    child: Text("Messages",
                      style: TextStyle(
                          color: Colors.grey[400],fontWeight: FontWeight.w500),
                    ),
                  ),
                  onTap: (){
                    Get.toNamed('/message_group');
                  },
                ),
              ),
            ),
            Positioned(
              top: 0,
              child: Neumorphic(
              style: NeumorphicStyle(
                // shape: NeumorphicShape.concave,
                  boxShape:
                  NeumorphicBoxShape.roundRect(BorderRadius.circular(36)),
                  // depth: 80,
                  // lightSource: LightSource.topLeft,
                  color: Color(0xFFFFFFFF)),
              child: NeumorphicButton(
                style: NeumorphicStyle(
                  color: Color(0xFFFFFFFF),
                ),
                child: Text(
                  '  Notification  ',
                  style: TextStyle(
                      color: Colors.black, fontWeight: FontWeight.bold),
                ),
              ),
            ),)
          ],
        ),
        // title: Neumorphic(
        //   style: NeumorphicStyle(
        //       // shape: NeumorphicShape.concave,
        //       boxShape:
        //       NeumorphicBoxShape.roundRect(BorderRadius.circular(36)),
        //       depth: -3,
        //       // lightSource: LightSource.topLeft,
        //       color: Color(0xFFFFFFFF),
        //   ),
        //   child: Row(
        //     mainAxisAlignment: MainAxisAlignment.spaceBetween,
        //     children: [
        //       Neumorphic(
        //         style: NeumorphicStyle(
        //             // shape: NeumorphicShape.concave,
        //             boxShape:
        //                 NeumorphicBoxShape.roundRect(BorderRadius.circular(36)),
        //             depth: 80,
        //             // lightSource: LightSource.topLeft,
        //             color: Color(0xFFFFFFFF)),
        //         child: NeumorphicButton(
        //           style: NeumorphicStyle(
        //             color: Color(0xFFFFFFFF),
        //           ),
        //           child: Text(
        //             '  Notification  ',
        //             style: TextStyle(
        //                 color: Colors.black, fontWeight: FontWeight.bold),
        //           ),
        //         ),
        //       ),
        //       Neumorphic(
        //         // style: NeumorphicStyle(
        //         //     // shape: NeumorphicShape.concave,
        //         //     boxShape:
        //         //         NeumorphicBoxShape.roundRect(BorderRadius.only(topRight: Radius.circular(36),bottomRight: Radius.circular(36))),
        //         //     depth: -36,
        //         //     // lightSource: LightSource.topLeft,
        //         //     color: Color(0xFFFFFFFF),
        //         // ),
        //         child: NeumorphicButton(
        //           style: NeumorphicStyle(
        //             color: Color(0xFFFFFFFF),
        //           ),
        //           child: Text(
        //             'Messages',
        //             style: TextStyle(
        //                 color: Colors.black, fontWeight: FontWeight.bold),
        //           ),
        //           onPressed: (){
        //             Get.toNamed('/message_group');
        //           },
        //         ),
        //       ),
        //     ],
        //   ),
        // ),
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
                              depth: 2.5,
                              // intensity: 1,
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
                                        Padding(
                                          padding: const EdgeInsets.only(top: 5),
                                          child: Text(
                                            '3 min ago',
                                            style: TextStyle(color: Colors.grey,fontSize: 10),
                                          ),
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
                                      Container(
                                        margin: const EdgeInsets.only(right: 5,left: 3),
                                        height: 25,
                                        width: 25,
                                        color: Colors.red,
                                        child: Image.asset(
                                          'assets/images/Ellipse 313.png',
                                          // height: 40,
                                        ),
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
                // Column(
                //   children: [
                //     Padding(
                //       padding: const EdgeInsets.only(top: 10,bottom: 10),
                //       child: Neumorphic(
                //           style: NeumorphicStyle(
                //             shape: NeumorphicShape.concave,
                //             boxShape: NeumorphicBoxShape.roundRect(
                //                 BorderRadius.circular(38)),
                //             depth: 2.5,
                //             // intensity: 1,
                //             lightSource: LightSource.left,
                //             color:Color(0xFFFFFFFF),
                //           ),
                //           child: Container(
                //             padding: const EdgeInsets.only(bottom: 10),
                //             child: Row(
                //               mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                //               children: [
                //                 Column(
                //                   children: [
                //                     Text(
                //                       '3.2',
                //                       style: TextStyle(fontSize: 10),
                //                     ),
                //                     Image.asset(
                //                       'assets/images/Ellipse 311.png',
                //                       // height: 40,
                //                     ),
                //                   ],
                //                 ),
                //                 Padding(
                //                   padding: const EdgeInsets.only(top: 10),
                //                   child: Column(
                //                     crossAxisAlignment: CrossAxisAlignment.start,
                //                     children: [
                //                       Row(
                //                         children: [
                //                           Text(
                //                             'Nick Collins',
                //                             style: TextStyle(
                //                                 fontWeight: FontWeight.bold),
                //                           ),
                //                           Text(
                //                             '   "cute 3.5"',
                //                             style: TextStyle(
                //                                 fontWeight: FontWeight.bold,
                //                                 color: Colors.red),
                //                           ),
                //                         ],
                //                       ),
                //                       Text(
                //                         '114 others also vibed on your post',
                //                         style: TextStyle(color: Colors.grey,fontSize: width/30),
                //                       ),
                //                       Text(
                //                         '3 min ago',
                //                         style: TextStyle(color: Colors.grey,fontSize: 10),
                //                       ),
                //                     ],
                //                   ),
                //                 ),
                //                 Row(
                //                   children: [
                //                     CrossIcon(),
                //                    SizedBox(width: 5,),
                //                    TickIcon(),
                //                   ],
                //                 ),
                //               ],
                //             ),
                //           )),
                //     ),
                //   ],
                // ),
                Container(
                  height: 110,
                  width: width,
                  child: ListView.builder(
                    itemCount: 2,
                    itemBuilder: (context, index){
                      return  Dismissible(
                        background: stackBehindDismiss(),
                        key: ObjectKey(listItems[index]),
                        child: Padding(
                          padding: const EdgeInsets.only(top: 10,bottom: 10),
                          child: Neumorphic(
                              style: NeumorphicStyle(
                                shape: NeumorphicShape.concave,
                                boxShape: NeumorphicBoxShape.roundRect(
                                    BorderRadius.circular(38)),
                                depth: 2.5,
                                // intensity: 1,
                                lightSource: LightSource.left,
                                color:Color(0xFFFFFFFF),
                              ),
                              child: Container(
                                width: width,
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
                                            '114 others also vibed \n on your post',
                                            style: TextStyle(color: Colors.grey),
                                          ),
                                          Text(
                                            '3 min ago',
                                            style: TextStyle(color: Colors.grey,fontSize: 10),
                                          ),
                                        ],
                                      ),
                                    ),
                                    Row(
                                      children: [
                                        CrossIcon(),
                                        SizedBox(width: 5,),
                                        TickIcon(),
                                      ],
                                    ),
                                  ],
                                ),
                              )),
                        ),
                        onDismissed: (direction) {
                          var item = listItems.elementAt(index);
                          //To delete
                          deleteItem(index);
                          //To show a snackbar with the UNDO button
                          Scaffold.of(context).showSnackBar(SnackBar(
                              content: Text("Item deleted"),
                              action: SnackBarAction(
                                  label: "UNDO",
                                  onPressed: () {
                                    //To undo deletion
                                    undoDeletion(index, item);
                                  })));
                        },
                      );
                    },
                  ),
                ),

                check == true ?
                    ListView.builder(
                      itemCount: 1,
                      itemBuilder: (context, index){
                        final item = items[index];
                        return  Dismissible(
                          background: stackBehindDismiss(),
                          key: Key(item),
                          child: Padding(
                            padding: const EdgeInsets.only(top: 10,bottom: 10),
                            child: Neumorphic(
                                style: NeumorphicStyle(
                                  shape: NeumorphicShape.concave,
                                  boxShape: NeumorphicBoxShape.roundRect(
                                      BorderRadius.circular(38)),
                                  depth: 2.5,
                                  // intensity: 1,
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
                                              style: TextStyle(color: Colors.grey,fontSize: 10),
                                            ),
                                          ],
                                        ),
                                      ),
                                      Row(
                                        children: [
                                          CrossIcon(),
                                          SizedBox(width: 5,),
                                          TickIcon(),
                                        ],
                                      ),
                                    ],
                                  ),
                                )),
                          ),
                          onDismissed: (direction) {
                            var item = items.elementAt(index);
                            //To delete
                            deleteItem(index);
                            //To show a snackbar with the UNDO button
                            Scaffold.of(context).showSnackBar(SnackBar(
                                content: Text("Item deleted"),
                                action: SnackBarAction(
                                    label: "UNDO",
                                    onPressed: () {
                                      //To undo deletion
                                      undoDeletion(index, item);
                                    })));
                          },
                        );
                      },
                    )
                : Container(),

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
                            depth: 2.5,
                            // intensity: 1,
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
                                        style: TextStyle(color: Colors.grey,fontSize: 10),
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
                      padding: const EdgeInsets.only(top: 20,bottom: 20),
                      child: Neumorphic(
                          style: NeumorphicStyle(
                            shape: NeumorphicShape.concave,
                            boxShape: NeumorphicBoxShape.roundRect(
                                BorderRadius.circular(38)),
                            depth: 2.5,
                            // intensity: 1,
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
                                        style: TextStyle(color: Colors.grey,fontSize: width/30),
                                      ),
                                      Text(
                                        '3 min ago',
                                        style: TextStyle(color: Colors.grey,fontSize: 10),
                                      ),
                                    ],
                                  ),
                                ),
                                Row(
                                  children: [
                                    EditIcon(),
                                    SizedBox(width: 5,),
                                    TickIcon(),
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
Widget stackBehindDismiss() {
  return Container(
    alignment: Alignment.centerRight,
    // padding: EdgeInsets.only(right: 20.0),
    // color: Colors.red,
    child:Neumorphic(
      style: NeumorphicStyle(
        color: Color(0xFFFFFFFF),
        boxShape: NeumorphicBoxShape.circle(),
      ),
      padding: const EdgeInsets.all(12.0),
      child: Icon(
        Icons.delete,
        color: Colors.red,
      ),
    ),
  );
}
