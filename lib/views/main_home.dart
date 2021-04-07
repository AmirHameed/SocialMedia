
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';

import 'package:social_media/utility/constants.dart';

class MainHomeScreen extends StatefulWidget {
  @override
  _MainHomeScreenState createState() => _MainHomeScreenState();
}

class _MainHomeScreenState extends State<MainHomeScreen> with SingleTickerProviderStateMixin  {
  double screenSize;
  double screenRatio;
  AppBar appBar;
  List<Tab> tabList = List();
  TabController tabController;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    tabController = TabController(length: 3, vsync: this);
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
                      padding: const EdgeInsets.only(top: 15,left: 15,right: 15),
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
                          Padding(
                            padding: const EdgeInsets.only(left: 5),
                            child: Column(
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
                          ),
                          Container(width: 30,),
                          Column(
                            children: [
                              RaisedButton(
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(18.0),
                                ),
                                color: Colors.white,
                                child: Text("Edit Profile",style: TextStyle(color: Color(0xff00A2FF)),),
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
                                    child: Center(child: Text("0",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.grey),)),
                                  ),
                                ),
                                Text("Universe",style: TextStyle(fontWeight: FontWeight.w400,color: Colors.grey),),
                              ],
                            ),
                          ),
                          Positioned(
                            top: 0,
                            right: 10,
                            bottom: 0,
                            left: 80,
                            child:  Column(
                              children: [
                                Card(
                                  child: Container(
                                    height: 40,
                                    width: 70,
                                    child: Center(child: Text("0",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.black54),)),
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
                            right: 10,
                            bottom: 0,
                            left: -20,
                            child:  Column(
                              children: [
                                Card(
                                  child: Container(
                                    height: 40,
                                    width: 70,
                                    child: Center(child: Text("0",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.black54),)),
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
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: [
                          MainHomeCategoryWidget(onTap: (){},image: 'assets/images/Group 1277.png',),
                          MainHomeCategoryWidget(onTap: (){},image: 'assets/images/Group 3823.png',),
                          MainHomeCategoryWidget(onTap: (){},image: 'assets/images/Group 3824.png',),
                          MainHomeCategoryWidget(onTap: (){},image: 'assets/images/Group 563.png',),
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
                          child: Text('Book Now',style: TextStyle(color: Colors.blue,fontSize: width/33),),
                        ),
                        Tab(
                          child: Text('Washed History',style: TextStyle(color: Colors.green,fontSize: width/33),),
                        ),
                        Tab(
                          child: Text('Reviews & Ratings',style: TextStyle(color: Colors.yellow,fontSize: width/33),),
                        ),
                      ],

                    ),
                    Expanded(
                      child: TabBarView(
                        controller: tabController,
                        children: [
                          Text(""),
                          Text(""),
                          Text(""),
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
