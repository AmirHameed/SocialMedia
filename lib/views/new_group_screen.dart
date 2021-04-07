import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:get/get.dart';
import 'package:social_media/utility/constants.dart';
import 'package:social_media/views/review_screens/group.dart';

class AddGroupScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey[300],
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back,
            color: Colors.black,
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "New Group",
              style:
                  TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
            ),
            Text(
              'Add Subject',
              style: TextStyle(fontSize: 12, color: Colors.black),
            ),
          ],
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(top: 20, right: 10),
            child: InkWell(
              child: Text(
                'Done',
                style: TextStyle(color: Colors.green),
              ),
              onTap: () {
                Get.offAndToNamed('/groupMessage');
              },
            ),
          ),
        ],
      ),
      backgroundColor: Colors.grey[300],
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.only(left: 10, right: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 30),
                  child: Row(
                    // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Neumorphic(
                          margin:
                              EdgeInsets.only(right: 10, bottom: 10, left: 10),
                          style: NeumorphicStyle(
                            shape: NeumorphicShape.convex,
                            boxShape: NeumorphicBoxShape.circle(),
                            depth: 3,
                            lightSource: LightSource.topLeft,
                            color: Color(0xFFFFFFFF),
                          ),
                          child: Container(
                            width: width / 5.5,
                            height: height / 20.5,
                            child: InkWell(
                              child: Icon(
                                Icons.camera_alt,
                                color: Colors.grey,
                              ),
                              onTap: () {},
                            ),
                          )),
                      Expanded(
                        child: Neumorphic(
                          style: NeumorphicStyle(
                            shape: NeumorphicShape.concave,
                            boxShape: NeumorphicBoxShape.roundRect(
                                BorderRadius.circular(18.0)),
                            color: Color(0xFFFFFFFF),
                          ),
                          child: Expanded(
                            child: TextField(
                              cursorColor: Colors.grey,
                              decoration: InputDecoration(
                                  hintText: "Type group subject here",
                                  border: InputBorder.none,
                                  contentPadding: const EdgeInsets.symmetric(
                                      horizontal: 10, vertical: 20)),
                              // controller: questionText,
                              // onSubmitted: messageController.handleSubmitted,
                            ),
                          ),
                        ),
                      ),
                      Text(''),
                      Icon(
                        Icons.emoji_emotions,
                        color: Colors.grey,
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 20, bottom: 20),
                  child: Text(
                    'Provide a group subject optional group icon',
                    style: TextStyle(color: Colors.grey),
                  ),
                ),
                Align(
                  alignment: Alignment.bottomRight,
                  child: CircleAvatar(
                    radius: 30,
                    backgroundColor: Colors.white,
                    child: Neumorphic(
                        margin:
                            EdgeInsets.only(right: 10, bottom: 10, left: 10),
                        style: NeumorphicStyle(
                          shape: NeumorphicShape.convex,
                          boxShape: NeumorphicBoxShape.circle(),
                          depth: -1,
                          lightSource: LightSource.topLeft,
                          color: Color(0xFFFFFFFF),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.only(top: 5),
                          child: CircleAvatar(
                            backgroundColor: Colors.green,
                            radius: 15,
                            // color: Colors.green,
                            child: InkWell(
                              child: Icon(
                                Icons.check,
                                color: Colors.white,
                                size: 18,
                              ),
                              onTap: () {},
                            ),
                          ),
                        )),
                  ),
                ),
                Text(
                  'Participants : 12',
                  style: TextStyle(color: Colors.grey),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 10, bottom: 10),
                  child: SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: List.generate(8, (index) {
                        return Padding(
                          padding: const EdgeInsets.only(left: 5, right: 5),
                          child: Column(
                            children: [
                              Text('3.2'),
                              CircleAvatar(
                                backgroundColor: Colors.white,
                                radius: width / 17,
                                child: CircleAvatar(
                                  // radius: 21,
                                  // backgroundColor: Colors.white,
                                  child: ClipOval(
                                      child: Image.asset(
                                    'assets/images/Ellipse -1.png',
                                    width: width / 5,
                                    // fit: BoxFit.cover,
                                  )),
                                ),
                              ),
                              Text(
                                'Xavier Smith',
                                style: TextStyle(color: Colors.grey),
                              ),
                            ],
                          ),
                        );
                      }),
                    ),
                  ),
                ),
                Text(
                  'Additional Settings',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 5, bottom: 5),
                  child: SwitchButton(
                    text: 'Comments',
                  ),
                ),
                SwitchButton(
                  text: 'Public',
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 5, bottom: 5),
                  child: SwitchButton(
                    text: 'Group of group',
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
