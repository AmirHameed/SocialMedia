import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:social_media/utility/constants.dart';
import 'package:social_media/views/review_screens/group.dart';

class MainHomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Row(
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
              Container(
                width: width,
                height: height,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(12),
                    topRight: Radius.circular(12),
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
                    Container(
                      child: Row(
                        children: [

                        ],
                      ),
                    ),
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
