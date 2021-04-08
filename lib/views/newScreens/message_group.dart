import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:get/get.dart';
import 'package:social_media/utility/widget/bottomNavBar.dart';
import 'package:social_media/utility/widget/message_group_mood_widget.dart';
import 'package:social_media/views/message_group_screen/calls_screen.dart';
import 'package:social_media/views/message_group_screen/chats_screen.dart';
import 'package:social_media/views/message_group_screen/groups_screen.dart';

import '../../profile.dart';

class MessageGroup extends StatefulWidget {
  @override
  _MessageGroupState createState() => _MessageGroupState();
}

class _MessageGroupState extends State<MessageGroup> with SingleTickerProviderStateMixin {
  TabController tabController;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    tabController = TabController(length: 3, vsync: this);
    // detailerTabController = TabController(length: 3 ,vsync: this);
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      bottomNavigationBar: NavBar(),
      appBar: AppBar(
        backgroundColor: Color(0xFFFFFFFF),
        elevation: 0,
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
                    Get.toNamed('/message_group');
                  }
              ),
            ),
          ],
        ),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 10,right: 10,top: 10,bottom: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Neumorphic(
                      style: NeumorphicStyle(
                          shape: NeumorphicShape.convex,
                          boxShape: NeumorphicBoxShape.roundRect(BorderRadius.circular(16.0)),
                          color: Color(0xFFFFFFFF),
                          depth: -5
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          children: [
                            Image.asset(
                                'assets/images/NoPath - Copy (28).png',height: 20,),
                            Row(
                              children: List.generate(3, (index) {
                                return Icon(Icons.emoji_emotions,color: Colors.grey,);
                              }),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Row(
                      children: [
                        InkWell(
                          child: Icon(Icons.search),
                          onTap: (){},
                        ),
                        InkWell(
                          child: Icon(Icons.more_vert),
                          onTap: (){},
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              TabBar(
                controller: tabController,
                indicatorColor: Colors.black,
                tabs: [
                  Tab(
                    child: Text("Chats",style: TextStyle(color: Colors.black),),
                  ),
                  Tab(
                    child: Text("Groups",style: TextStyle(color: Colors.black)),
                  ),
                  Tab(
                    child: Text("Calls",style: TextStyle(color: Colors.black)),
                  ),
                ],
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    MessageGroupMood(image: 'assets/images/main_home_image.png',onTap: (){},text: 'Mood',),
                    Padding(
                      padding: const EdgeInsets.only(left: 5,right: 5),
                      child: MessageGroupMood(image: 'assets/images/main_home_image.png',onTap: (){},text: 'Outer Circle',),
                    ),
                    MessageGroupMood(image: 'assets/images/main_home_image.png',onTap: (){},text: 'Universe',),
                    Padding(
                      padding: const EdgeInsets.only(left: 5,right: 5),
                      child: MessageGroupMood(image: 'assets/images/main_home_image.png',onTap: (){},text: 'Mood',),
                    ),
                    MessageGroupMood(image: 'assets/images/main_home_image.png',onTap: (){},text: 'Outer Circle',),
                    Padding(
                      padding: const EdgeInsets.only(left: 5,right: 5),
                      child: MessageGroupMood(image: 'assets/images/main_home_image.png',onTap: (){},text: 'Universe',),
                    ),
                  ],
                ),
              ),
              Container(
                height: 700,
                // color: Colors.green,
                child: TabBarView(
                  controller: tabController,
                  children: [
                    MessagesScreen(),
                    GroupsScreen(),
                    CallsScreen(),
                  ],
                ),
              ),

            ],
          ),
        ),
      ),
    );
  }
}

