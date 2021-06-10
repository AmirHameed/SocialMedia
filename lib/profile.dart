import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:flutter_xlider/flutter_xlider.dart';
import 'package:get/get.dart';
import 'package:social_media/utility/constants.dart';
import 'package:social_media/utility/widget/bottomNavBar.dart';
import 'package:social_media/utility/widget/profile_navBar.dart';
import 'package:social_media/views/review_screens/group.dart';

import 'utility/widget/slider.dart';

class ProfileScreen extends StatefulWidget {
  @override
  _ProfileScreenState createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> with SingleTickerProviderStateMixin  {
  double screenSize;
  double screenRatio;
  AppBar appBar;
  List<Tab> tabList = List();
  TabController tabController;
  double _lowerValue = 50;
bool diary = false;
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
      resizeToAvoidBottomInset: false,
      bottomNavigationBar: ProfileNavBar(),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 10,bottom: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Column(
                      children: [
                        Text('(2.1 M Vibes)',style: TextStyle(fontSize: 8),),
                        Text('4.2',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 24),),
                      ],
                    ),
                    Image.asset('assets/images/Group 1346.png'),
                    Image.asset('assets/images/Group 1347.png'),
                    Image.asset('assets/images/Group 1348.png'),
                    Image.asset('assets/images/Group 1349.png'),
                    Column(
                      children: [
                        Text('Vibes'),
                        Text('Match'),
                        Text('70%',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16),),
                      ],
                    ),
                  ],
                ),
              ),
              Container(
                width: width,
                height: height,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(36),
                    topRight: Radius.circular(36),
                  ),
                  color: Colors.white,
                ),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 15,left: 3,right: 5),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Column(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(bottom: 18),
                                child: CircleAvatar(
                                  child: Image.asset('assets/images/main_home_image.png',),
                                  radius: 35,
                                  backgroundColor: Colors.grey[200],
                                ),
                              ),
                              Row(
                                children: [
                                  Icon(Icons.work,color: Colors.grey,size: 15,),
                                  Text(' CEO,Ooumph',style: TextStyle(fontSize: 10,),),
                                ],
                              ),
                              Row(
                                children: [
                                  Icon(Icons.home,color: Colors.grey,size: 15,),
                                  Text('Lucknow,India',style: TextStyle(fontSize: 10),),
                                ],
                              ),
                            ],
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text('Praveen Mishra',style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
                                  Text('@praveenmishra880',style: TextStyle(color: Colors.grey),),
                                  Padding(
                                    padding: const EdgeInsets.only(top: 10,bottom: 40),
                                    child: Text('Do it with little ooumph'),
                                  ),
                                ],
                              ),
                              // Container(height: 70,),
                            ],
                          ),
                          // Container(width: 30,),
                          Column(
                            children: [
                              RaisedButton(
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(18.0),
                                ),
                                color: Colors.white,
                                child: Text("Connect As",style: TextStyle(color: Color(0xff00A2FF)),),
                                onPressed: (){},
                              ),
                              Container(height: 70,),
                            ],
                          ),

                        ],
                      ),
                    ),
                    // Row(
                    //   children: [
                    //     Column(
                    //       children: [
                    //         Row(
                    //           children: [
                    //             Icon(Icons.work,color: Colors.grey,size: 15,),
                    //             Text(' CEO,Ooumph',style: TextStyle(fontSize: 10,),),
                    //           ],
                    //         ),
                    //         Row(
                    //           children: [
                    //             Icon(Icons.home,color: Colors.grey,size: 15,),
                    //             Text('Lucknow,India',style: TextStyle(fontSize: 10),),
                    //           ],
                    //         ),
                    //       ],
                    //     ),
                    //
                    //   ],
                    // ),
                    Padding(
                      padding: const EdgeInsets.only(left: 170),
                      child: Row(
                        children: [
                          Text("Vibers: 0                      ",style: TextStyle(fontSize: 10,fontStyle: FontStyle.italic),),
                          Text("Possis: 0",style: TextStyle(fontSize: 10,fontStyle: FontStyle.italic),),
                        ],
                      ),
                    ),
                    Container(
                      height: height * 0.1,
                      width: width * 0.7,
                      // color: Colors.green,
                      child:Stack(
                        children: [
                          Align(
                            alignment: Alignment.topRight,
                            child: Column(
                              children: [
                                Card(
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.only(
                                      topRight: Radius.circular(36.0),
                                      bottomRight: Radius.circular(36.0),
                                    ),
                                  ),
                                  child: Container(
                                    height: 40,
                                    width: 90,
                                    // decoration: BoxDecoration(
                                    //   borderRadius: BorderRadius.only(
                                    //     topRight: Radius.circular(36.0),
                                    //     bottomRight: Radius.circular(36.0),
                                    //   ),
                                    //   color: Colors.white,
                                    // ),
                                    child: Center(child: Text("2.3k",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.grey),)),
                                  ),
                                ),
                                Text("Universe",style: TextStyle(fontWeight: FontWeight.w400,color: Colors.grey),),
                              ],
                            ),
                          ),
                          Positioned(
                            top: 0,
                            right: 30,
                            bottom: 0,
                            left: 80,
                            child:  Column(
                              children: [
                                Card(
                                  child: Container(
                                    height: 40,
                                    width: 70,
                                    child: Center(child: Text("2.3k",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.black54),)),
                                  ),
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.only(
                                      topRight: Radius.circular(36.0),
                                      bottomRight: Radius.circular(36.0),
                                    ),
                                  ),
                                ),
                                Text("Outer",style: TextStyle(fontWeight: FontWeight.w400,color: Colors.black54),),
                              ],
                            ),
                          ),
                          Positioned(
                            top: 0,
                            right: 50,
                            bottom: 0,
                            left: -20,
                            child:  Column(
                              children: [
                                Card(
                                  child: Container(
                                    height: 40,
                                    width: 70,
                                    child: Center(child: Text("15",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.black54),)),
                                  ),
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(36.0)                               ),
                                ),
                                Text("Inner",style: TextStyle(fontWeight: FontWeight.w400,color: Colors.black54),),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    FlutterSlider(
                      jump: true,
                      handlerHeight: 32.0,
                      trackBar: FlutterSliderTrackBar(
                        activeTrackBar: BoxDecoration(
                          gradient: SweepGradient(colors: [
                            Colors.pink,
                            Colors.blue,
                            Colors.green,
                            Colors.yellow,
                            Colors.purple
                          ], stops: [
                            0.8,
                            0.96,
                            0.74,
                            0.22,
                            0.85
                          ], startAngle: 0.5, endAngle: 1),
                        ),
                        inactiveTrackBar: BoxDecoration(
                          gradient: SweepGradient(colors: [
                            Colors.pink,
                            Colors.blue,
                            Colors.green,
                            Colors.yellow,
                            Colors.purple
                          ],
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
                      handlerWidth: 100,
                      handler: FlutterSliderHandler(
                        // decoration: BoxDecoration(),
                        decoration: BoxDecoration(
                            color: Colors.transparent
                        ),
                        child: Row(
                          children: [
                            Image.asset('assets/images/leftBrackets.png',height: 20,color: Colors.grey,),
                            Image.asset(
                              'assets/images/NoPath - Copy (28).png',height: 23,),
                            Image.asset('assets/images/rightBrackets.png',height: 20,color: Colors.grey,),
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 30),
                      child: SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Row(
                          children: [
                            InkWell(
                              child: Text('+',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 24),),
                              onTap: (){},
                            ),
                            Row(
                              children: List.generate(5, (index) {
                                return Container(
                                  margin: EdgeInsets.only(right: 2),
                                  //padding: EdgeInsets.symmetric(horizontal: 6),
                                  width: width/4,
                                  height: height/20,
                                  child: Neumorphic(
                                    style: NeumorphicStyle(
                                      shape: NeumorphicShape.concave,
                                      depth: 5,
                                      boxShape:
                                      NeumorphicBoxShape.roundRect(BorderRadius.circular(16)),
                                      lightSource: LightSource.topLeft,
                                      color:  Color(0xFFFFFFFF),),
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      children: [
                                        CircleAvatar(
                                          radius: width/21,
                                          backgroundColor: Colors.transparent,
                                          child: ClipOval(
                                              child: Image.asset(
                                                'assets/images/Ellipse 311.png',
                                                width: width/10,
                                                fit: BoxFit.cover,
                                              )),
                                        ),
                                        Text(
                                          'Lovely   ',
                                          style: TextStyle(
                                            color: Colors.black,
                                            fontSize: width/35,
                                          ),
                                          textAlign: TextAlign.center,
                                        ),


                                      ],
                                    ),
                                  ),
                                );
                              }),
                            ),
                          ],
                        ),
                      ),
                    ),
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: [
                          MainHomeCategoryWidget(onTap: (){},image: 'assets/images/Group 1277.png',),
                          MainHomeCategoryWidget(onTap: (){},image: 'assets/images/Group 3823.png',),
                          MainHomeCategoryWidget(onTap: (){},image: 'assets/images/Group 3824.png',),
                          MainHomeCategoryWidget(onTap: (){},image: 'assets/images/Group 563.png',),
                          InkWell(
                            child: Card(
                              color: Colors.black54,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(12.0)
                              ),
                              child: Container(
                                width: 100,
                                height: 80,
                                child: Padding(
                                  padding: const EdgeInsets.only(top: 10),
                                  child: Column(
                                    children: [
                                      Icon(Icons.menu_book_sharp,color: Colors.white,),
                                      Text("Diary",style: TextStyle(color: Colors.white),)
                                    ],
                                  ),
                                ),
                              ),
                            ),
                            onTap: (){
                              setState(() {
                                diary = true;
                              });
                            },
                          )
                        ],
                      ),
                    ),
                    // Container(
                    //   color: Colors.white,
                    //   child: Stack(
                    //     children: <Widget>[
                    //       new Container(
                    //         height: 300,
                    //         width: screenSize,
                    //         decoration:new BoxDecoration(
                    //           image: new DecorationImage(
                    //             image: new AssetImage("images/app_image.jpg"),
                    //             fit: BoxFit.cover,
                    //           ),
                    //         ),
                    //       ),
                    //       Scaffold(
                    //         backgroundColor: Colors.transparent,
                    //         appBar: appBar,
                    //         body:
                    //         Stack(
                    //           children: <Widget>[
                    //             new Positioned(
                    //               child: Column(
                    //                 children: <Widget>[
                    //                   Center(
                    //                     child: Container(
                    //                       child: CircleAvatar(
                    //                         backgroundImage:
                    //                         NetworkImage('http://res.cloudinary.com/'),
                    //                         backgroundColor: Colors.green,
                    //                         radius: 20,
                    //                       ),
                    //                     ),
                    //                   ),
                    //                   SingleChildScrollView(
                    //                     child: Container(
                    //                       color: Colors.white,
                    //                       child: Column(
                    //                         mainAxisAlignment: MainAxisAlignment.center,
                    //                         children: <Widget>[
                    //                           new Text('* * * * *',textAlign: TextAlign.center,style: TextStyle(fontSize: 18.0,color: Colors.pink),),
                    //                           new Text('CAPTAIN',textAlign: TextAlign.center,style: TextStyle(fontSize: 18.0)),
                    //                         ],
                    //                         crossAxisAlignment: CrossAxisAlignment.center,
                    //                       ),
                    //                     ),
                    //                   ),
                    //                 ],
                    //               ),
                    //               width: screenSize,
                    //               top: 170,
                    //             ),
                    //             new Positioned(
                    //               width: screenSize,
                    //               top: 310,
                    //               child: Padding(
                    //                 padding: const EdgeInsets.all(12.0),
                    //                 child: new Column(
                    //                   children: <Widget>[
                    //                     new Container(
                    //                       decoration: new BoxDecoration(color: Theme.of(context).primaryColor),
                    //                       child: new TabBar(
                    //                           controller: _tabController,
                    //                           indicatorColor: Colors.pink,
                    //                           indicatorSize: TabBarIndicatorSize.tab,
                    //                           tabs: tabList
                    //                       ),
                    //                     ),
                    //                     new Container(
                    //                       height: 20.0,
                    //                       child: new TabBarView(
                    //                         controller: _tabController,
                    //                         children: tabList.map((Tab tab){
                    //                           _getPage(tab);
                    //                         }).toList(),
                    //                       ),
                    //                     )
                    //                   ],
                    //                 ),
                    //               ),
                    //             )
                    //           ],
                    //         ),
                    //       ),
                    //     ],
                    //   ),
                    // )
                    // new Container(
                    //   decoration: new BoxDecoration(color: Theme.of(context).primaryColor),
                    //   child: new TabBar(
                    //     controller: _controller,
                    //     tabs: [
                    //       new Tab(
                    //         icon: const Icon(Icons.home),
                    //         text: 'Address',
                    //       ),
                    //       new Tab(
                    //         icon: const Icon(Icons.my_location),
                    //         text: 'Location',
                    //       ),
                    //     ],
                    //   ),
                    // ),
                    // new Container(
                    //   height: 80.0,
                    //   child: new TabBarView(
                    //     controller: _controller,
                    //     children: <Widget>[
                    //       new Card(
                    //         child: new ListTile(
                    //           leading: const Icon(Icons.home),
                    //           title: new TextField(
                    //             decoration: const InputDecoration(hintText: 'Search for address...'),
                    //           ),
                    //         ),
                    //       ),
                    //       new Card(
                    //         child: new ListTile(
                    //           leading: const Icon(Icons.location_on),
                    //           title: new Text('Latitude: 48.09342\nLongitude: 11.23403'),
                    //           trailing: new IconButton(icon: const Icon(Icons.my_location), onPressed: () {}),
                    //         ),
                    //       ),
                    //     ],
                    //   ),
                    // ),
                    TabBar(
                      controller: tabController,
                      indicatorColor: Colors.pink,
                      tabs: [
                        Tab(
                          child: Image.asset('assets/images/truth_tab.png'),
                        ),
                        Tab(
                          child: Image.asset('assets/images/fun.png'),
                        ),
                        Tab(
                          child: Image.asset('assets/images/debate.png'),
                        ),
                        Tab(
                          child: Image.asset('assets/images/required.png'),
                        ),
                      ],

                    ),
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 5),
                            child: Image.asset('assets/images/search.png'),
                          ),
                          RaisedButton(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(18.0),
                            ),
                            color: Colors.white,
                            child: Row(
                              children: [
                                Image.asset('assets/images/main_home_image.png',height: 30,),
                                Text('Achievements',style: TextStyle(color: Colors.grey[400]),),
                              ],
                            ),
                            onPressed: (){},
                          ),
                          RaisedButton(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(18.0),
                            ),
                            color: Colors.white,
                            child: Row(
                              children: [
                                Image.asset('assets/images/main_home_image.png',height: 30,),
                                Text('Awards',style: TextStyle(color: Colors.grey[400]),),
                              ],
                            ),
                            onPressed: (){},
                          ),
                        ],
                      ),
                    ),
                    Container(
                      height: 120,
                      child: TabBarView(
                        controller: tabController,
                        children: [
                          SingleChildScrollView(
                            scrollDirection: Axis.horizontal,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                HomeTabWidget(text: '  Text',),
                                Padding(
                                  padding: const EdgeInsets.only(left: 5,right: 5),
                                  child: HomeTabWidget(text: '  Text',),
                                ),
                                HomeTabWidget(text: '  Text',),
                                Padding(
                                  padding: const EdgeInsets.only(left: 5,right: 5),
                                  child: HomeTabWidget(text: '  Text',),
                                ),
                                HomeTabWidget(text: '  Text',),

                              ],
                            ),
                          ),
                          SingleChildScrollView(
                            scrollDirection: Axis.horizontal,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                HomeTabWidget(text: '  Text',),
                                Padding(
                                  padding: const EdgeInsets.only(left: 5,right: 5),
                                  child: HomeTabWidget(text: '  Text',),
                                ),
                                HomeTabWidget(text: '  Text',),
                                Padding(
                                  padding: const EdgeInsets.only(left: 5,right: 5),
                                  child: HomeTabWidget(text: '  Text',),
                                ),
                                HomeTabWidget(text: '  Text',),

                              ],
                            ),
                          ),
                          SingleChildScrollView(
                            scrollDirection: Axis.horizontal,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                HomeTabWidget(text: '  Text',),
                                Padding(
                                  padding: const EdgeInsets.only(left: 5,right: 5),
                                  child: HomeTabWidget(text: '  Text',),
                                ),
                                HomeTabWidget(text: '  Text',),
                                Padding(
                                  padding: const EdgeInsets.only(left: 5,right: 5),
                                  child: HomeTabWidget(text: '  Text',),
                                ),
                                HomeTabWidget(text: '  Text',),

                              ],
                            ),
                          ),
                          SingleChildScrollView(
                            scrollDirection: Axis.horizontal,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                HomeTabWidget(text: '  Text',),
                                Padding(
                                  padding: const EdgeInsets.only(left: 5,right: 5),
                                  child: HomeTabWidget(text: '  Text',),
                                ),
                                HomeTabWidget(text: '  Text',),
                                Padding(
                                  padding: const EdgeInsets.only(left: 5,right: 5),
                                  child: HomeTabWidget(text: '  Text',),
                                ),
                                HomeTabWidget(text: '  Text',),

                              ],
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
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

class HomeTabWidget extends StatelessWidget {
  String text;
  HomeTabWidget({this.text});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      width: 100,
      decoration: BoxDecoration(
        color: Colors.green,
        borderRadius: BorderRadius.circular(6.0),
        image: DecorationImage(
          image: AssetImage('assets/images/adam-whitlock.png'),
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Align(
            alignment: Alignment.topRight,
            child: Text("3.2  "),),
          Row(
            children: [
              Text(text,style: TextStyle(fontWeight: FontWeight.bold),),
              Icon(Icons.edit_outlined,size: 15,),
            ],
          ),
          SizedBox(height: 30,),
          Text("  Sub title"),
        ],
      ),
    );
  }
}

class MainHomeCategoryWidget extends StatelessWidget {
  String image;
  Function onTap;
  MainHomeCategoryWidget({this.onTap,this.image});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      child: Card(
        color: Colors.white70,
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12.0)
        ),
        child: Container(
          width: 100,
          height: 80,
          child: Image.asset(image),
        ),
      ),
      onTap: onTap,
    );
  }
}
