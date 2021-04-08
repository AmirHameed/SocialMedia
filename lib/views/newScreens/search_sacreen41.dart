import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:get/get.dart';

import 'package:social_media/utility/constants.dart';
import 'package:social_media/utility/widget/circle_theme.dart';

class SearchScreen extends StatefulWidget {
  @override
  _SearchScreenState createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen>
    with SingleTickerProviderStateMixin {
  double screenSize;
  double screenRatio;
  AppBar appBar;
  List<Tab> tabList = List();
  TabController tabController;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    tabController = TabController(length: 4, vsync: this);
    // detailerTabController = TabController(length: 3 ,vsync: this);
  }

  // @override
  // void initState() {
  //   tabList.add(new Tab(text:'Overview',));
  //   tabList.add(new Tab(text:'Workouts',));
  //   _tabController = new TabController(vsync: this, length:
  //   tabList.length);
  //   super.initState();
  // }
  // @override
  // void dispose() {
  //   _tabController.dispose();
  //   super.dispose();
  // }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                width: width,
                height: height,
                child: Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Image.asset(
                        'assets/images/ooumph.png',
                        height: 40,
                        width: 100,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 10, right: 20),
                        child: Container(
                          height: 30,
                          child: Neumorphic(
                            style: NeumorphicStyle(
                                lightSource: LightSource.topLeft,
                                shape: NeumorphicShape.flat,
                                boxShape: NeumorphicBoxShape.roundRect(
                                    BorderRadius.circular(22)),
                                color: Colors.white70),
                            child: Row(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(left: 10),
                                  child: Icon(
                                    Icons.search,
                                    color: Colors.grey[400],
                                  ),
                                ),
                                Expanded(
                                  child: TextField(
                                    cursorColor: Colors.grey,
                                    decoration: InputDecoration(
                                        isDense: true,
                                        hintText: "Search",
                                        hintStyle:
                                            TextStyle(color: Colors.grey[500]),
                                        border: InputBorder.none,
                                        contentPadding:
                                            const EdgeInsets.symmetric(
                                                horizontal: 10, vertical: 0)),
                                    // controller: questionText,
                                    // onSubmitted: messageController.handleSubmitted,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 8,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          MainHomeCategoryWidget(
                            onTap: () {
                            },
                            image: 'assets/images/people.png',
                          ),
                          MainHomeCategoryWidget(
                            onTap: () {
                              Get.offNamed('/connectScreen');
                            },
                            image: 'assets/images/content.png',
                          ),
                          MainHomeCategoryWidget(
                            onTap: () {
                              Get.offNamed('/communityScreen');
                            },
                            image: 'assets/images/comm.png',
                          ),
                          MainHomeCategoryWidget(
                            onTap: () {
                              Get.offNamed('/productScreeen');
                            },
                            image: 'assets/images/Group 563.png',
                          ),
                        ],
                      ),
                      TabBar(
                        controller: tabController,
                        isScrollable: true,
                        unselectedLabelColor: Colors.grey,
                        labelColor: Colors.blue,
                        indicatorColor: Colors.blue,
                        tabs: [
                          Tab(
                            child: Image.asset(
                              'assets/images/frangers.png',
                              height: height / 6,
                              width: width / 6,
                            ),
                          ),
                          Tab(
                            child: Image.asset(
                              'assets/images/friends.png',
                              height: height / 6,
                              width: width / 6,
                            ),
                          ),
                          Tab(
                            child: Image.asset('assets/images/colleagues.png',
                                height: height / 6, width: width / 6),
                          ),
                          Tab(
                            child: Image.asset('assets/images/releative.png',
                                height: height / 6, width: width / 6),
                          ),
                        ],
                      ),
                      Expanded(
                        child: TabBarView(
                          controller: tabController,
                          children: [
                            Container(
                              child: Column(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(top: 10),
                                    child: Row(
                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                        children: [
                                          CircleTheme(
                                            image: 'assets/images/Ellipse 2.png',
                                            text: 'MOOD',
                                            width: width / 1.5,
                                          ),
                                          CircleTheme(
                                            image: 'assets/images/Ellipse -2.png',
                                            text: 'OUTER CIRCLE',
                                            width: width / 2.5,
                                          ),
                                          CircleTheme(
                                            image: 'assets/images/Ellipse -1.png',
                                            text: 'UNIVERSE',
                                            width: width / 2.5,
                                          ),
                                        ]),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(top: 10, bottom: 10),
                                    child: SingleChildScrollView(
                                      scrollDirection: Axis.horizontal,
                                      child: Row(
                                        children: List.generate(3, (index) {
                                          return Padding(
                                            padding: const EdgeInsets.only(
                                                left: 5, right: 15, bottom: 8),
                                            child: Column(
                                              children: [
                                                Column(
                                                  children: [
                                                    Text('3.2',style: TextStyle(fontSize: 12),),
                                                    CircleAvatar(
                                                      backgroundColor: Colors.white,
                                                      radius: width / 20,
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
                                                  ],
                                                ),

                                                Text(
                                                  '12 Min',
                                                  style: TextStyle(
                                                      fontSize: 8,color: Colors.grey),
                                                ),
                                                Text(
                                                  'Parveen M',
                                                  style: TextStyle(fontSize: 12),
                                                ),
                                                InkWell(
                                                  child: Neumorphic(
                                                    padding: EdgeInsets.only(right: 5, bottom:7,top: 7, left: 5),
                                                    style: NeumorphicStyle(
                                                      shape: NeumorphicShape.flat,
                                                      boxShape:
                                                      NeumorphicBoxShape.roundRect(BorderRadius.circular(18.0)),
                                                      color: Colors.blue,
                                                    ),
                                                    child: Text(
                                                      'Lets Vibe',
                                                      style: TextStyle(color: Colors.white),
                                                    ),
                                                  ),
                                                  onTap: () {

                                                  },
                                                ),

                                                Text(
                                                  'ParveenMdd fdfdf',
                                                  style: TextStyle(
                                                      fontSize: 12, color: Colors.grey),
                                                ),
                                              ],
                                            ),
                                          );
                                        }),
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(top: 10, bottom: 10),
                                    child: SingleChildScrollView(
                                      scrollDirection: Axis.horizontal,
                                      child: Row(
                                        children: List.generate(3, (index) {
                                          return Padding(
                                            padding: const EdgeInsets.only(
                                                left: 5, right: 15, bottom: 8),
                                            child: Column(
                                              children: [
                                                Column(
                                                  children: [
                                                    Text('3.2',style: TextStyle(fontSize: 12),),
                                                    CircleAvatar(
                                                      backgroundColor: Colors.white,
                                                      radius: width / 20,
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
                                                  ],
                                                ),

                                                Text(
                                                  '12 Min',
                                                  style: TextStyle(
                                                      fontSize: 8,color: Colors.grey),
                                                ),
                                                Text(
                                                  'Parveen M',
                                                  style: TextStyle(fontSize: 12),
                                                ),
                                                InkWell(
                                                  child: Neumorphic(
                                                    padding: EdgeInsets.only(right: 5, bottom:7,top: 7, left: 5),
                                                    style: NeumorphicStyle(
                                                      shape: NeumorphicShape.flat,
                                                      boxShape:
                                                      NeumorphicBoxShape.roundRect(BorderRadius.circular(18.0)),
                                                      color: Colors.blue,
                                                    ),
                                                    child: Text(
                                                      'Lets Vibe',
                                                      style: TextStyle(color: Colors.white),
                                                    ),
                                                  ),
                                                  onTap: () {

                                                  },
                                                ),

                                                Text(
                                                  'ParveenMdd fdfdf',
                                                  style: TextStyle(
                                                      fontSize: 12, color: Colors.grey),
                                                ),
                                              ],
                                            ),
                                          );
                                        }),
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(top: 10, bottom: 10),
                                    child: SingleChildScrollView(
                                      scrollDirection: Axis.horizontal,
                                      child: Row(
                                        children: List.generate(3, (index) {
                                          return Padding(
                                            padding: const EdgeInsets.only(
                                                left: 5, right: 15, bottom: 8),
                                            child: Column(
                                              children: [
                                                Column(
                                                  children: [
                                                    Text('3.2',style: TextStyle(fontSize: 12),),
                                                    CircleAvatar(
                                                      backgroundColor: Colors.white,
                                                      radius: width / 20,
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
                                                  ],
                                                ),

                                                Text(
                                                  '12 Min',
                                                  style: TextStyle(
                                                      fontSize: 8,color: Colors.grey),
                                                ),
                                                Text(
                                                  'Parveen M',
                                                  style: TextStyle(fontSize: 12),
                                                ),
                                                InkWell(
                                                  child: Neumorphic(
                                                    padding: EdgeInsets.only(right: 5, bottom:7,top: 7, left: 5),
                                                    style: NeumorphicStyle(
                                                      shape: NeumorphicShape.flat,
                                                      boxShape:
                                                      NeumorphicBoxShape.roundRect(BorderRadius.circular(18.0)),
                                                      color: Colors.blue,
                                                    ),
                                                    child: Text(
                                                      'Lets Vibe',
                                                      style: TextStyle(color: Colors.white),
                                                    ),
                                                  ),
                                                  onTap: () {

                                                  },
                                                ),

                                                Text(
                                                  'ParveenMdd fdfdf',
                                                  style: TextStyle(
                                                      fontSize: 12, color: Colors.grey),
                                                ),
                                              ],
                                            ),
                                          );
                                        }),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              child: Column(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(top: 10),
                                    child: Row(
                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                        children: [
                                          CircleTheme(
                                            image: 'assets/images/Ellipse 2.png',
                                            text: 'MOOD',
                                            width: width / 1.5,
                                          ),
                                          CircleTheme(
                                            image: 'assets/images/Ellipse -2.png',
                                            text: 'OUTER CIRCLE',
                                            width: width / 2.5,
                                          ),
                                          CircleTheme(
                                            image: 'assets/images/Ellipse -1.png',
                                            text: 'UNIVERSE',
                                            width: width / 2.5,
                                          ),
                                        ]),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(top: 10, bottom: 10),
                                    child: SingleChildScrollView(
                                      scrollDirection: Axis.horizontal,
                                      child: Row(
                                        children: List.generate(3, (index) {
                                          return Padding(
                                            padding: const EdgeInsets.only(
                                                left: 5, right: 15, bottom: 8),
                                            child: Column(
                                              children: [
                                                Column(
                                                  children: [
                                                    Text('3.2',style: TextStyle(fontSize: 12),),
                                                    CircleAvatar(
                                                      backgroundColor: Colors.white,
                                                      radius: width / 20,
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
                                                  ],
                                                ),

                                                Text(
                                                  '12 Min',
                                                  style: TextStyle(
                                                      fontSize: 8,color: Colors.grey),
                                                ),
                                                Text(
                                                  'Parveen M',
                                                  style: TextStyle(fontSize: 12),
                                                ),
                                                InkWell(
                                                  child: Neumorphic(
                                                    padding: EdgeInsets.only(right: 5, bottom:7,top: 7, left: 5),
                                                    style: NeumorphicStyle(
                                                      shape: NeumorphicShape.flat,
                                                      boxShape:
                                                      NeumorphicBoxShape.roundRect(BorderRadius.circular(18.0)),
                                                      color: Colors.blue,
                                                    ),
                                                    child: Text(
                                                      'Lets Vibe',
                                                      style: TextStyle(color: Colors.white),
                                                    ),
                                                  ),
                                                  onTap: () {

                                                  },
                                                ),

                                                Text(
                                                  'ParveenMdd fdfdf',
                                                  style: TextStyle(
                                                      fontSize: 12, color: Colors.grey),
                                                ),
                                              ],
                                            ),
                                          );
                                        }),
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(top: 10, bottom: 10),
                                    child: SingleChildScrollView(
                                      scrollDirection: Axis.horizontal,
                                      child: Row(
                                        children: List.generate(3, (index) {
                                          return Padding(
                                            padding: const EdgeInsets.only(
                                                left: 5, right: 15, bottom: 8),
                                            child: Column(
                                              children: [
                                                Column(
                                                  children: [
                                                    Text('3.2',style: TextStyle(fontSize: 12),),
                                                    CircleAvatar(
                                                      backgroundColor: Colors.white,
                                                      radius: width / 20,
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
                                                  ],
                                                ),

                                                Text(
                                                  '12 Min',
                                                  style: TextStyle(
                                                      fontSize: 8,color: Colors.grey),
                                                ),
                                                Text(
                                                  'Parveen M',
                                                  style: TextStyle(fontSize: 12),
                                                ),
                                                InkWell(
                                                  child: Neumorphic(
                                                    padding: EdgeInsets.only(right: 5, bottom:7,top: 7, left: 5),
                                                    style: NeumorphicStyle(
                                                      shape: NeumorphicShape.flat,
                                                      boxShape:
                                                      NeumorphicBoxShape.roundRect(BorderRadius.circular(18.0)),
                                                      color: Colors.blue,
                                                    ),
                                                    child: Text(
                                                      'Lets Vibe',
                                                      style: TextStyle(color: Colors.white),
                                                    ),
                                                  ),
                                                  onTap: () {

                                                  },
                                                ),

                                                Text(
                                                  'ParveenMdd fdfdf',
                                                  style: TextStyle(
                                                      fontSize: 12, color: Colors.grey),
                                                ),
                                              ],
                                            ),
                                          );
                                        }),
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(top: 10, bottom: 10),
                                    child: SingleChildScrollView(
                                      scrollDirection: Axis.horizontal,
                                      child: Row(
                                        children: List.generate(3, (index) {
                                          return Padding(
                                            padding: const EdgeInsets.only(
                                                left: 5, right: 15, bottom: 8),
                                            child: Column(
                                              children: [
                                                Column(
                                                  children: [
                                                    Text('3.2',style: TextStyle(fontSize: 12),),
                                                    CircleAvatar(
                                                      backgroundColor: Colors.white,
                                                      radius: width / 20,
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
                                                  ],
                                                ),

                                                Text(
                                                  '12 Min',
                                                  style: TextStyle(
                                                      fontSize: 8,color: Colors.grey),
                                                ),
                                                Text(
                                                  'Parveen M',
                                                  style: TextStyle(fontSize: 12),
                                                ),
                                                InkWell(
                                                  child: Neumorphic(
                                                    padding: EdgeInsets.only(right: 5, bottom:7,top: 7, left: 5),
                                                    style: NeumorphicStyle(
                                                      shape: NeumorphicShape.flat,
                                                      boxShape:
                                                      NeumorphicBoxShape.roundRect(BorderRadius.circular(18.0)),
                                                      color: Colors.blue,
                                                    ),
                                                    child: Text(
                                                      'Lets Vibe',
                                                      style: TextStyle(color: Colors.white),
                                                    ),
                                                  ),
                                                  onTap: () {

                                                  },
                                                ),

                                                Text(
                                                  'ParveenMdd fdfdf',
                                                  style: TextStyle(
                                                      fontSize: 12, color: Colors.grey),
                                                ),
                                              ],
                                            ),
                                          );
                                        }),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              child: Column(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(top: 10),
                                    child: Row(
                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                        children: [
                                          CircleTheme(
                                            image: 'assets/images/Ellipse 2.png',
                                            text: 'MOOD',
                                            width: width / 1.5,
                                          ),
                                          CircleTheme(
                                            image: 'assets/images/Ellipse -2.png',
                                            text: 'OUTER CIRCLE',
                                            width: width / 2.5,
                                          ),
                                          CircleTheme(
                                            image: 'assets/images/Ellipse -1.png',
                                            text: 'UNIVERSE',
                                            width: width / 2.5,
                                          ),
                                        ]),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(top: 10, bottom: 10),
                                    child: SingleChildScrollView(
                                      scrollDirection: Axis.horizontal,
                                      child: Row(
                                        children: List.generate(3, (index) {
                                          return Padding(
                                            padding: const EdgeInsets.only(
                                                left: 5, right: 15, bottom: 8),
                                            child: Column(
                                              children: [
                                                Column(
                                                  children: [
                                                    Text('3.2',style: TextStyle(fontSize: 12),),
                                                    CircleAvatar(
                                                      backgroundColor: Colors.white,
                                                      radius: width / 20,
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
                                                  ],
                                                ),

                                                Text(
                                                  '12 Min',
                                                  style: TextStyle(
                                                      fontSize: 8,color: Colors.grey),
                                                ),
                                                Text(
                                                  'Parveen M',
                                                  style: TextStyle(fontSize: 12),
                                                ),
                                                InkWell(
                                                  child: Neumorphic(
                                                    padding: EdgeInsets.only(right: 5, bottom:7,top: 7, left: 5),
                                                    style: NeumorphicStyle(
                                                      shape: NeumorphicShape.flat,
                                                      boxShape:
                                                      NeumorphicBoxShape.roundRect(BorderRadius.circular(18.0)),
                                                      color: Colors.blue,
                                                    ),
                                                    child: Text(
                                                      'Lets Vibe',
                                                      style: TextStyle(color: Colors.white),
                                                    ),
                                                  ),
                                                  onTap: () {

                                                  },
                                                ),

                                                Text(
                                                  'ParveenMdd fdfdf',
                                                  style: TextStyle(
                                                      fontSize: 12, color: Colors.grey),
                                                ),
                                              ],
                                            ),
                                          );
                                        }),
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(top: 10, bottom: 10),
                                    child: SingleChildScrollView(
                                      scrollDirection: Axis.horizontal,
                                      child: Row(
                                        children: List.generate(3, (index) {
                                          return Padding(
                                            padding: const EdgeInsets.only(
                                                left: 5, right: 15, bottom: 8),
                                            child: Column(
                                              children: [
                                                Column(
                                                  children: [
                                                    Text('3.2',style: TextStyle(fontSize: 12),),
                                                    CircleAvatar(
                                                      backgroundColor: Colors.white,
                                                      radius: width / 20,
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
                                                  ],
                                                ),

                                                Text(
                                                  '12 Min',
                                                  style: TextStyle(
                                                      fontSize: 8,color: Colors.grey),
                                                ),
                                                Text(
                                                  'Parveen M',
                                                  style: TextStyle(fontSize: 12),
                                                ),
                                                InkWell(
                                                  child: Neumorphic(
                                                    padding: EdgeInsets.only(right: 5, bottom:7,top: 7, left: 5),
                                                    style: NeumorphicStyle(
                                                      shape: NeumorphicShape.flat,
                                                      boxShape:
                                                      NeumorphicBoxShape.roundRect(BorderRadius.circular(18.0)),
                                                      color: Colors.blue,
                                                    ),
                                                    child: Text(
                                                      'Lets Vibe',
                                                      style: TextStyle(color: Colors.white),
                                                    ),
                                                  ),
                                                  onTap: () {

                                                  },
                                                ),

                                                Text(
                                                  'ParveenMdd fdfdf',
                                                  style: TextStyle(
                                                      fontSize: 12, color: Colors.grey),
                                                ),
                                              ],
                                            ),
                                          );
                                        }),
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(top: 10, bottom: 10),
                                    child: SingleChildScrollView(
                                      scrollDirection: Axis.horizontal,
                                      child: Row(
                                        children: List.generate(3, (index) {
                                          return Padding(
                                            padding: const EdgeInsets.only(
                                                left: 5, right: 15, bottom: 8),
                                            child: Column(
                                              children: [
                                                Column(
                                                  children: [
                                                    Text('3.2',style: TextStyle(fontSize: 12),),
                                                    CircleAvatar(
                                                      backgroundColor: Colors.white,
                                                      radius: width / 20,
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
                                                  ],
                                                ),

                                                Text(
                                                  '12 Min',
                                                  style: TextStyle(
                                                      fontSize: 8,color: Colors.grey),
                                                ),
                                                Text(
                                                  'Parveen M',
                                                  style: TextStyle(fontSize: 12),
                                                ),
                                                InkWell(
                                                  child: Neumorphic(
                                                    padding: EdgeInsets.only(right: 5, bottom:7,top: 7, left: 5),
                                                    style: NeumorphicStyle(
                                                      shape: NeumorphicShape.flat,
                                                      boxShape:
                                                      NeumorphicBoxShape.roundRect(BorderRadius.circular(18.0)),
                                                      color: Colors.blue,
                                                    ),
                                                    child: Text(
                                                      'Lets Vibe',
                                                      style: TextStyle(color: Colors.white),
                                                    ),
                                                  ),
                                                  onTap: () {

                                                  },
                                                ),

                                                Text(
                                                  'ParveenMdd fdfdf',
                                                  style: TextStyle(
                                                      fontSize: 12, color: Colors.grey),
                                                ),
                                              ],
                                            ),
                                          );
                                        }),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              child: Column(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(top: 10),
                                    child: Row(
                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                        children: [
                                          CircleTheme(
                                            image: 'assets/images/Ellipse 2.png',
                                            text: 'MOOD',
                                            width: width / 1.5,
                                          ),
                                          CircleTheme(
                                            image: 'assets/images/Ellipse -2.png',
                                            text: 'OUTER CIRCLE',
                                            width: width / 2.5,
                                          ),
                                          CircleTheme(
                                            image: 'assets/images/Ellipse -1.png',
                                            text: 'UNIVERSE',
                                            width: width / 2.5,
                                          ),
                                        ]),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(top: 10, bottom: 10),
                                    child: SingleChildScrollView(
                                      scrollDirection: Axis.horizontal,
                                      child: Row(
                                        children: List.generate(3, (index) {
                                          return Padding(
                                            padding: const EdgeInsets.only(
                                                left: 5, right: 15, bottom: 8),
                                            child: Column(
                                              children: [
                                                Column(
                                                  children: [
                                                    Text('3.2',style: TextStyle(fontSize: 12),),
                                                    CircleAvatar(
                                                      backgroundColor: Colors.white,
                                                      radius: width / 20,
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
                                                  ],
                                                ),

                                                Text(
                                                  '12 Min',
                                                  style: TextStyle(
                                                      fontSize: 8,color: Colors.grey),
                                                ),
                                                Text(
                                                  'Parveen M',
                                                  style: TextStyle(fontSize: 12),
                                                ),
                                                InkWell(
                                                  child: Neumorphic(
                                                    padding: EdgeInsets.only(right: 5, bottom:7,top: 7, left: 5),
                                                    style: NeumorphicStyle(
                                                      shape: NeumorphicShape.flat,
                                                      boxShape:
                                                      NeumorphicBoxShape.roundRect(BorderRadius.circular(18.0)),
                                                      color: Colors.blue,
                                                    ),
                                                    child: Text(
                                                      'Lets Vibe',
                                                      style: TextStyle(color: Colors.white),
                                                    ),
                                                  ),
                                                  onTap: () {

                                                  },
                                                ),

                                                Text(
                                                  'ParveenMdd fdfdf',
                                                  style: TextStyle(
                                                      fontSize: 12, color: Colors.grey),
                                                ),
                                              ],
                                            ),
                                          );
                                        }),
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(top: 10, bottom: 10),
                                    child: SingleChildScrollView(
                                      scrollDirection: Axis.horizontal,
                                      child: Row(
                                        children: List.generate(3, (index) {
                                          return Padding(
                                            padding: const EdgeInsets.only(
                                                left: 5, right: 15, bottom: 8),
                                            child: Column(
                                              children: [
                                                Column(
                                                  children: [
                                                    Text('3.2',style: TextStyle(fontSize: 12),),
                                                    CircleAvatar(
                                                      backgroundColor: Colors.white,
                                                      radius: width / 20,
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
                                                  ],
                                                ),

                                                Text(
                                                  '12 Min',
                                                  style: TextStyle(
                                                      fontSize: 8,color: Colors.grey),
                                                ),
                                                Text(
                                                  'Parveen M',
                                                  style: TextStyle(fontSize: 12),
                                                ),
                                                InkWell(
                                                  child: Neumorphic(
                                                    padding: EdgeInsets.only(right: 5, bottom:7,top: 7, left: 5),
                                                    style: NeumorphicStyle(
                                                      shape: NeumorphicShape.flat,
                                                      boxShape:
                                                      NeumorphicBoxShape.roundRect(BorderRadius.circular(18.0)),
                                                      color: Colors.blue,
                                                    ),
                                                    child: Text(
                                                      'Lets Vibe',
                                                      style: TextStyle(color: Colors.white),
                                                    ),
                                                  ),
                                                  onTap: () {

                                                  },
                                                ),

                                                Text(
                                                  'ParveenMdd fdfdf',
                                                  style: TextStyle(
                                                      fontSize: 12, color: Colors.grey),
                                                ),
                                              ],
                                            ),
                                          );
                                        }),
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(top: 10, bottom: 10),
                                    child: SingleChildScrollView(
                                      scrollDirection: Axis.horizontal,
                                      child: Row(
                                        children: List.generate(3, (index) {
                                          return Padding(
                                            padding: const EdgeInsets.only(
                                                left: 5, right: 15, bottom: 8),
                                            child: Column(
                                              children: [
                                                Column(
                                                  children: [
                                                    Text('3.2',style: TextStyle(fontSize: 12),),
                                                    CircleAvatar(
                                                      backgroundColor: Colors.white,
                                                      radius: width / 20,
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
                                                  ],
                                                ),

                                                Text(
                                                  '12 Min',
                                                  style: TextStyle(
                                                      fontSize: 8,color: Colors.grey),
                                                ),
                                                Text(
                                                  'Parveen M',
                                                  style: TextStyle(fontSize: 12),
                                                ),
                                                InkWell(
                                                  child: Neumorphic(
                                                    padding: EdgeInsets.only(right: 5, bottom:7,top: 7, left: 5),
                                                    style: NeumorphicStyle(
                                                      shape: NeumorphicShape.flat,
                                                      boxShape:
                                                      NeumorphicBoxShape.roundRect(BorderRadius.circular(18.0)),
                                                      color: Colors.blue,
                                                    ),
                                                    child: Text(
                                                      'Lets Vibe',
                                                      style: TextStyle(color: Colors.white),
                                                    ),
                                                  ),
                                                  onTap: () {

                                                  },
                                                ),

                                                Text(
                                                  'ParveenMdd fdfdf',
                                                  style: TextStyle(
                                                      fontSize: 12, color: Colors.grey),
                                                ),
                                              ],
                                            ),
                                          );
                                        }),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
// Widget _getPage(Tab tab){
//   switch(tab.text){
//     // case 'Overview': return OverView();
//     // case 'Orders': return Workouts();
//   }
// }
}

class MainHomeCategoryWidget extends StatelessWidget {
  String image;
  Function onTap;

  MainHomeCategoryWidget({this.onTap, this.image});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      child: Card(
        color: Colors.white70,
        shape:
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(12.0)),
        child: Container(
          width: 70,
          height: 50,
          child: Image.asset(image),
        ),
      ),
      onTap: onTap,
    );
  }
}
