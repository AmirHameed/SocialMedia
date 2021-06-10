import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:get/get.dart';

import 'package:social_media/utility/constants.dart';
import 'package:social_media/utility/widget/bottomNavBar.dart';
import 'package:social_media/utility/widget/chipsWidget.dart';
import 'package:social_media/utility/widget/circle_theme.dart';
import 'package:social_media/utility/widget/searchCategory.dart';
import 'package:social_media/utility/widget/searchWidget.dart';

class ProductScreenn extends StatefulWidget {
  @override
  _ProductScreennState createState() => _ProductScreennState();
}

class _ProductScreennState extends State<ProductScreenn>
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

  List<String> imageList = [
    'https://media.istockphoto.com/photos/woman-kayaking-in-fjord-in-norway-picture-id1059380230?b=1&k=6&m=1059380230&s=170667a&w=0&h=kA_A_XrhZJjw2bo5jIJ7089-VktFK0h0I4OWDqaac0c=',
    'https://cdn.pixabay.com/photo/2017/02/12/10/29/christmas-2059698_960_720.jpg',
    'https://cdn.pixabay.com/photo/2020/01/29/17/09/snowboard-4803050_960_720.jpg',
    'https://cdn.pixabay.com/photo/2020/02/06/20/01/university-library-4825366_960_720.jpg',
    'https://cdn.pixabay.com/photo/2020/11/22/17/28/cat-5767334_960_720.jpg',
    'https://cdn.pixabay.com/photo/2020/12/13/16/22/snow-5828736_960_720.jpg',
    'https://cdn.pixabay.com/photo/2020/12/09/09/27/women-5816861_960_720.jpg',
  ];
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
                                'assets/images/shop.png',
                                height: height / 6,
                                width: width / 6,
                              ),
                            ),
                            Tab(
                              child: Image.asset(
                                'assets/images/funn.png',
                                height: height / 6,
                                width: width / 6,
                              ),
                            ),
                            Tab(
                              child: Image.asset('assets/images/apps.png',
                                  height: height / 6, width: width / 6),
                            ),
                            Tab(
                              child: Image.asset('assets/images/other.png',
                                  height: height / 6, width: width / 6),
                            ),
                          ],
                        ),
                        Expanded(
                          child: TabBarView(
                            controller: tabController,
                            children: [
                              Column(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        top: 10, bottom: 10),
                                    child: ChipWidget(),
                                  ),
                                  Container(
                                    height: height / 1.5,
                                    width: width,
                                    child: StaggeredGridView.countBuilder(
                                        crossAxisCount: 2,
                                        crossAxisSpacing: 5,
                                        mainAxisSpacing: 5,
                                        itemCount: imageList.length,
                                        itemBuilder: (context, index) {
                                          return Container(
                                            decoration: BoxDecoration(
                                              borderRadius:
                                                  new BorderRadius.all(
                                                      Radius.circular(15)),
                                              image: DecorationImage(
                                                fit: BoxFit.fill,
                                                image: NetworkImage(
                                                  imageList[index],
                                                ),
                                              ),
                                            ),
                                            child: Padding(
                                              padding: const EdgeInsets.only(
                                                  left: 10,
                                                  top: 10,
                                                  right: 10,
                                                  bottom: 5),
                                              child: Column(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.end,
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                children: [
                                                  Neumorphic(
                                                    padding: EdgeInsets.only(
                                                        right: 4,
                                                        bottom: 4,
                                                        top: 4,
                                                        left: 4),
                                                    style: NeumorphicStyle(
                                                      color:
                                                          Colors.grey.shade900,
                                                      shape:
                                                          NeumorphicShape.flat,
                                                      boxShape:
                                                          NeumorphicBoxShape
                                                              .circle(),
                                                    ),
                                                    child: Text(
                                                      '3.2',
                                                      style: TextStyle(
                                                          color: Colors.white,
                                                          fontSize: 10),
                                                    ),
                                                  ),
                                                  Align(
                                                      alignment:
                                                          Alignment.bottomLeft,
                                                      child: Text(
                                                        'Rs 899',
                                                        style: TextStyle(
                                                            color: Colors
                                                                .deepOrange,
                                                            fontSize: 18,
                                                            fontWeight:
                                                                FontWeight
                                                                    .bold),
                                                        overflow: TextOverflow
                                                            .ellipsis,
                                                      )),
                                                ],
                                              ),
                                            ),
                                          );
                                        },
                                        staggeredTileBuilder: (index) {
                                          return StaggeredTile.count(
                                              1, index.isEven ? 1.2 : 1.8);
                                        }),
                                  ),
                                ],
                              ),
                              Column(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        top: 10, bottom: 10),
                                    child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          CircleTheme(
                                            image:
                                                'assets/images/Ellipse 2.png',
                                            text: 'MOOD',
                                            width: width / 1.5,
                                          ),
                                          CircleTheme(
                                            image:
                                                'assets/images/Ellipse -2.png',
                                            text: 'OUTER CIRCLE',
                                            width: width / 2.5,
                                          ),
                                          CircleTheme(
                                            image:
                                                'assets/images/Ellipse -1.png',
                                            text: 'UNIVERSE',
                                            width: width / 2.5,
                                          ),
                                        ]),
                                  ),
                                  Container(
                                    height: height / 1.5,
                                    width: width,
                                    child: StaggeredGridView.countBuilder(
                                        crossAxisCount: 2,
                                        crossAxisSpacing: 5,
                                        mainAxisSpacing: 5,
                                        itemCount: imageList.length,
                                        itemBuilder: (context, index) {
                                          return Container(
                                            decoration: BoxDecoration(
                                              borderRadius:
                                                  new BorderRadius.all(
                                                      Radius.circular(15)),
                                              image: DecorationImage(
                                                fit: BoxFit.fill,
                                                image: NetworkImage(
                                                  imageList[index],
                                                ),
                                              ),
                                            ),
                                            child: Padding(
                                              padding: const EdgeInsets.only(
                                                  left: 10,
                                                  top: 10,
                                                  right: 10,
                                                  bottom: 5),
                                              child: Column(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.end,
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                children: [
                                                  Neumorphic(
                                                    padding: EdgeInsets.only(
                                                        right: 4,
                                                        bottom: 4,
                                                        top: 4,
                                                        left: 4),
                                                    style: NeumorphicStyle(
                                                      color:
                                                          Colors.grey.shade900,
                                                      shape:
                                                          NeumorphicShape.flat,
                                                      boxShape:
                                                          NeumorphicBoxShape
                                                              .circle(),
                                                    ),
                                                    child: Text(
                                                      '3.2',
                                                      style: TextStyle(
                                                          color: Colors.white,
                                                          fontSize: 10),
                                                    ),
                                                  ),
                                                  Text(
                                                    'What an Event You Dessss',
                                                    style: TextStyle(
                                                      color: Colors.white,
                                                      fontSize: 18,
                                                    ),
                                                    overflow:
                                                        TextOverflow.ellipsis,
                                                  ),
                                                ],
                                              ),
                                            ),
                                          );
                                        },
                                        staggeredTileBuilder: (index) {
                                          return StaggeredTile.count(
                                              1, index.isEven ? 1.2 : 1.8);
                                        }),
                                  ),
                                ],
                              ),
                              Column(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        top: 10, bottom: 10),
                                    child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          CircleTheme(
                                            image:
                                                'assets/images/Ellipse 2.png',
                                            text: 'MOOD',
                                            width: width / 1.5,
                                          ),
                                          CircleTheme(
                                            image:
                                                'assets/images/Ellipse -2.png',
                                            text: 'OUTER CIRCLE',
                                            width: width / 2.5,
                                          ),
                                          CircleTheme(
                                            image:
                                                'assets/images/Ellipse -1.png',
                                            text: 'UNIVERSE',
                                            width: width / 2.5,
                                          ),
                                        ]),
                                  ),
                                  Container(
                                    height: height / 1.5,
                                    width: width,
                                    child: StaggeredGridView.countBuilder(
                                        crossAxisCount: 2,
                                        crossAxisSpacing: 5,
                                        mainAxisSpacing: 5,
                                        itemCount: imageList.length,
                                        itemBuilder: (context, index) {
                                          return Container(
                                            decoration: BoxDecoration(
                                              borderRadius:
                                                  new BorderRadius.all(
                                                      Radius.circular(15)),
                                              image: DecorationImage(
                                                fit: BoxFit.fill,
                                                image: NetworkImage(
                                                  imageList[index],
                                                ),
                                              ),
                                            ),
                                            child: Padding(
                                              padding: const EdgeInsets.only(
                                                  left: 10,
                                                  top: 10,
                                                  right: 10,
                                                  bottom: 5),
                                              child: Column(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.end,
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                children: [
                                                  Neumorphic(
                                                    padding: EdgeInsets.only(
                                                        right: 4,
                                                        bottom: 4,
                                                        top: 4,
                                                        left: 4),
                                                    style: NeumorphicStyle(
                                                      color:
                                                          Colors.grey.shade900,
                                                      shape:
                                                          NeumorphicShape.flat,
                                                      boxShape:
                                                          NeumorphicBoxShape
                                                              .circle(),
                                                    ),
                                                    child: Text(
                                                      '3.2',
                                                      style: TextStyle(
                                                          color: Colors.white,
                                                          fontSize: 10),
                                                    ),
                                                  ),
                                                  Text(
                                                    'What an Event You Dessss',
                                                    style: TextStyle(
                                                      color: Colors.white,
                                                      fontSize: 18,
                                                    ),
                                                    overflow:
                                                        TextOverflow.ellipsis,
                                                  ),
                                                ],
                                              ),
                                            ),
                                          );
                                        },
                                        staggeredTileBuilder: (index) {
                                          return StaggeredTile.count(
                                              1, index.isEven ? 1.2 : 1.8);
                                        }),
                                  ),
                                ],
                              ),
                              Column(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        top: 10, bottom: 10),
                                    child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          CircleTheme(
                                            image:
                                                'assets/images/Ellipse 2.png',
                                            text: 'MOOD',
                                            width: width / 1.5,
                                          ),
                                          CircleTheme(
                                            image:
                                                'assets/images/Ellipse -2.png',
                                            text: 'OUTER CIRCLE',
                                            width: width / 2.5,
                                          ),
                                          CircleTheme(
                                            image:
                                                'assets/images/Ellipse -1.png',
                                            text: 'UNIVERSE',
                                            width: width / 2.5,
                                          ),
                                        ]),
                                  ),
                                  Container(
                                    height: height / 1.5,
                                    width: width,
                                    child: StaggeredGridView.countBuilder(
                                        crossAxisCount: 2,
                                        crossAxisSpacing: 5,
                                        mainAxisSpacing: 5,
                                        itemCount: imageList.length,
                                        itemBuilder: (context, index) {
                                          return Container(
                                            decoration: BoxDecoration(
                                              borderRadius:
                                                  new BorderRadius.all(
                                                      Radius.circular(15)),
                                              image: DecorationImage(
                                                fit: BoxFit.fill,
                                                image: NetworkImage(
                                                  imageList[index],
                                                ),
                                              ),
                                            ),
                                            child: Padding(
                                              padding: const EdgeInsets.only(
                                                  left: 10,
                                                  top: 10,
                                                  right: 10,
                                                  bottom: 5),
                                              child: Column(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.end,
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                children: [
                                                  Neumorphic(
                                                    padding: EdgeInsets.only(
                                                        right: 4,
                                                        bottom: 4,
                                                        top: 4,
                                                        left: 4),
                                                    style: NeumorphicStyle(
                                                      color:
                                                          Colors.grey.shade900,
                                                      shape:
                                                          NeumorphicShape.flat,
                                                      boxShape:
                                                          NeumorphicBoxShape
                                                              .circle(),
                                                    ),
                                                    child: Text(
                                                      '3.2',
                                                      style: TextStyle(
                                                          color: Colors.white,
                                                          fontSize: 10),
                                                    ),
                                                  ),
                                                  Text(
                                                    'What an Event You Dessss',
                                                    style: TextStyle(
                                                      color: Colors.white,
                                                      fontSize: 18,
                                                    ),
                                                    overflow:
                                                        TextOverflow.ellipsis,
                                                  ),
                                                ],
                                              ),
                                            ),
                                          );
                                        },
                                        staggeredTileBuilder: (index) {
                                          return StaggeredTile.count(
                                              1, index.isEven ? 1.2 : 1.8);
                                        }),
                                  ),
                                ],
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
