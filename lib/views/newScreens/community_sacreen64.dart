import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:get/get.dart';

import 'package:social_media/utility/constants.dart';
import 'package:social_media/utility/widget/bottomNavBar.dart';
import 'package:social_media/utility/widget/chipsWidget.dart';
import 'package:social_media/utility/widget/circle_theme.dart';
import 'package:social_media/utility/widget/searchBody.dart';
import 'package:social_media/utility/widget/searchCategory.dart';
import 'package:social_media/utility/widget/searchWidget.dart';

class CommunityScreen extends StatefulWidget {
  @override
  _CommunityScreenState createState() => _CommunityScreenState();
}

class _CommunityScreenState extends State<CommunityScreen>
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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      bottomNavigationBar: NavBar(),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.only(top: 10),
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
                        SearchWidget(),
                        SizedBox(
                          height: 8,
                        ),
                        SearchCategory(),
                        TabBar(
                          controller: tabController,
                          isScrollable: true,
                          unselectedLabelColor: Colors.grey,
                          labelColor: Colors.blue,
                          indicatorColor: Colors.blue,
                          tabs: [
                            Tab(
                              child: Image.asset(
                                'assets/images/personal.png',
                                height: height / 6,
                                width: width / 6,
                              ),
                            ),
                            Tab(
                              child: Image.asset(
                                'assets/images/interest.png',
                                height: height / 6,
                                width: width / 6,
                              ),
                            ),
                            Tab(
                              child: Image.asset('assets/images/official.png',
                                  height: height / 6, width: width / 6),
                            ),
                            Tab(
                              child: Image.asset('assets/images/bussiness.png',
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
                                      child: ChipWidget(),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(
                                          top: 10, bottom: 10),
                                      child: SingleChildScrollView(
                                        scrollDirection: Axis.horizontal,
                                        child: Row(
                                          children: List.generate(3, (index) {
                                            return Padding(
                                              padding: const EdgeInsets.only(
                                                  left: 5,
                                                  right: 15,
                                                  bottom: 8),
                                              child: SearchBodyWidget(),
                                            );
                                          }),
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(
                                          top: 10, bottom: 10),
                                      child: SingleChildScrollView(
                                        scrollDirection: Axis.horizontal,
                                        child: Row(
                                          children: List.generate(3, (index) {
                                            return Padding(
                                              padding: const EdgeInsets.only(
                                                  left: 5,
                                                  right: 15,
                                                  bottom: 8),
                                              child: SearchBodyWidget(),
                                            );
                                          }),
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(
                                          top: 10, bottom: 10),
                                      child: SingleChildScrollView(
                                        scrollDirection: Axis.horizontal,
                                        child: Row(
                                          children: List.generate(3, (index) {
                                            return Padding(
                                              padding: const EdgeInsets.only(
                                                  left: 5,
                                                  right: 15,
                                                  bottom: 8),
                                              child: SearchBodyWidget(),
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
                                      padding: const EdgeInsets.only(
                                          top: 10, bottom: 10),
                                      child: ChipWidget(),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(
                                          top: 10, bottom: 10),
                                      child: SingleChildScrollView(
                                        scrollDirection: Axis.horizontal,
                                        child: Row(
                                          children: List.generate(3, (index) {
                                            return Padding(
                                              padding: const EdgeInsets.only(
                                                  left: 5,
                                                  right: 15,
                                                  bottom: 8),
                                              child: SearchBodyWidget(),
                                            );
                                          }),
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(
                                          top: 10, bottom: 10),
                                      child: SingleChildScrollView(
                                        scrollDirection: Axis.horizontal,
                                        child: Row(
                                          children: List.generate(3, (index) {
                                            return Padding(
                                              padding: const EdgeInsets.only(
                                                  left: 5,
                                                  right: 15,
                                                  bottom: 8),
                                              child: SearchBodyWidget(),
                                            );
                                          }),
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(
                                          top: 10, bottom: 10),
                                      child: SingleChildScrollView(
                                        scrollDirection: Axis.horizontal,
                                        child: Row(
                                          children: List.generate(3, (index) {
                                            return Padding(
                                              padding: const EdgeInsets.only(
                                                  left: 5,
                                                  right: 15,
                                                  bottom: 8),
                                              child: SearchBodyWidget(),
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
                                        padding: const EdgeInsets.only(
                                            top: 10, bottom: 10),
                                        child: ChipWidget()),
                                    Padding(
                                      padding: const EdgeInsets.only(
                                          top: 10, bottom: 10),
                                      child: SingleChildScrollView(
                                        scrollDirection: Axis.horizontal,
                                        child: Row(
                                          children: List.generate(3, (index) {
                                            return Padding(
                                              padding: const EdgeInsets.only(
                                                  left: 5,
                                                  right: 15,
                                                  bottom: 8),
                                              child: SearchBodyWidget(),
                                            );
                                          }),
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(
                                          top: 10, bottom: 10),
                                      child: SingleChildScrollView(
                                        scrollDirection: Axis.horizontal,
                                        child: Row(
                                          children: List.generate(3, (index) {
                                            return Padding(
                                              padding: const EdgeInsets.only(
                                                  left: 5,
                                                  right: 15,
                                                  bottom: 8),
                                              child: SearchBodyWidget(),
                                            );
                                          }),
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(
                                          top: 10, bottom: 10),
                                      child: SingleChildScrollView(
                                        scrollDirection: Axis.horizontal,
                                        child: Row(
                                          children: List.generate(3, (index) {
                                            return Padding(
                                              padding: const EdgeInsets.only(
                                                  left: 5,
                                                  right: 15,
                                                  bottom: 8),
                                              child: SearchBodyWidget(),
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
                                      padding: const EdgeInsets.only(
                                          top: 10, bottom: 10),
                                      child: ChipWidget(),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(
                                          top: 10, bottom: 10),
                                      child: SingleChildScrollView(
                                        scrollDirection: Axis.horizontal,
                                        child: Row(
                                          children: List.generate(3, (index) {
                                            return Padding(
                                              padding: const EdgeInsets.only(
                                                  left: 5,
                                                  right: 15,
                                                  bottom: 8),
                                              child: SearchBodyWidget(),
                                            );
                                          }),
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(
                                          top: 10, bottom: 10),
                                      child: SingleChildScrollView(
                                        scrollDirection: Axis.horizontal,
                                        child: Row(
                                          children: List.generate(3, (index) {
                                            return Padding(
                                              padding: const EdgeInsets.only(
                                                  left: 5,
                                                  right: 15,
                                                  bottom: 8),
                                              child: SearchBodyWidget(),
                                            );
                                          }),
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(
                                          top: 10, bottom: 10),
                                      child: SingleChildScrollView(
                                        scrollDirection: Axis.horizontal,
                                        child: Row(
                                          children: List.generate(3, (index) {
                                            return Padding(
                                              padding: const EdgeInsets.only(
                                                  left: 5,
                                                  right: 15,
                                                  bottom: 8),
                                              child: SearchBodyWidget(),
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
