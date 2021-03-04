import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:get/get.dart';
import 'package:social_media/utility/constants.dart';

class ShareScreen extends StatefulWidget {
  @override
  _ShareScreenState createState() => _ShareScreenState();
}

class _ShareScreenState extends State<ShareScreen> {
  bool button = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey[300],
        leading: IconButton(icon: Icon(Icons.arrow_back,color: Colors.black,),onPressed: (){
          Navigator.pop(context);
        },),
        title:
        button == false?
        Text("Sent to",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),)
            :
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("New Group",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),),
            Text('Add participants',style: TextStyle(fontSize: 12,color: Colors.black),),
          ],
        ),

        actions: [
          Padding(
            padding: const EdgeInsets.only(top: 20,right: 10),
            child: InkWell(
              child: Text('Next',style: TextStyle(color: Colors.blue),
              ),
              onTap: (){
                Get.offAndToNamed('/new_group_screen');
              },
            ),
          ),
        ],
      ),
      backgroundColor: Colors.grey[300],
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.only(left: 10,right: 10),
            child: Column(
              children: [
                button == false ?
                Padding(
                  padding: const EdgeInsets.only(top: 10,bottom: 10),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Image.asset('assets/images/person_image.png'),
                      Flexible(
                        child: Neumorphic(
                          style: NeumorphicStyle(
                            shape: NeumorphicShape.concave,
                            boxShape: NeumorphicBoxShape.roundRect(BorderRadius.circular(18.0)),
                            color: Color(0xFFFFFFFF),
                          ),
                          child:
                          Expanded(
                            child: TextField(
                              // maxLines: 4,
                              cursorColor: Colors.grey,
                              decoration: InputDecoration(
                                  hintText: "Write a message",
                                  border: InputBorder.none,
                                  contentPadding: const EdgeInsets.symmetric(horizontal: 10,vertical: 20)
                              ),
                              // controller: questionText,
                              // onSubmitted: messageController.handleSubmitted,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ):
                    Container(),
                Padding(
                  padding: const EdgeInsets.only(top: 10),
                  child: SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Column(
                          children: [
                            CircleAvatar(
                              backgroundColor: Colors.white,
                              radius: width/17,
                              child: CircleAvatar(
                                // radius: 21,
                                // backgroundColor: Colors.white,
                                child: ClipOval(
                                    child: Image.asset(
                                      'assets/images/Ellipse -1.png',
                                      width: width/5,
                                      // fit: BoxFit.cover,
                                    )),
                              ),
                            ),
                            Text('Inner Circle',style: TextStyle(color: Colors.grey),)
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 20,right: 20),
                          child: Column(
                            children: [
                              CircleAvatar(
                                backgroundColor: Colors.white,
                                radius: width/17,
                                child: CircleAvatar(
                                  // radius: 21,
                                  // backgroundColor: Colors.white,
                                  child: ClipOval(
                                      child: Image.asset(
                                        'assets/images/Ellipse -1.png',
                                        width: width/5,
                                        // fit: BoxFit.cover,
                                      )),
                                ),
                              ),
                              button == false ?
                              Text('Outer Circle',style: TextStyle(color: Colors.grey),)
                                  :
                              Text('Outer Circle',style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),),
                            ],
                          ),
                        ),
                        Column(
                          children: [
                            CircleAvatar(
                              backgroundColor: Colors.white,
                              radius: width/17,
                              child: CircleAvatar(
                                // radius: 21,
                                // backgroundColor: Colors.white,
                                child: ClipOval(
                                    child: Image.asset(
                                      'assets/images/Ellipse -1.png',
                                      width: width/5,
                                      // fit: BoxFit.cover,
                                    )),
                              ),
                            ),
                            Text('Universe',style: TextStyle(color: Colors.grey),)
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 20,right: 20),
                          child: Column(
                            children: [
                              CircleAvatar(
                                backgroundColor: Colors.white,
                                radius: width/17,
                                child: CircleAvatar(
                                  // radius: 21,
                                  // backgroundColor: Colors.white,
                                  child: ClipOval(
                                      child: Image.asset(
                                        'assets/images/Ellipse -1.png',
                                        width: width/5,
                                        // fit: BoxFit.cover,
                                      )),
                                ),
                              ),
                              Text('Friends',style: TextStyle(color: Colors.grey),)
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 10,bottom: 10),
                  child: Neumorphic(
                    style: NeumorphicStyle(
                      shape: NeumorphicShape.concave,
                      boxShape: NeumorphicBoxShape.roundRect(BorderRadius.circular(18.0)),
                      color: Color(0xFFFFFFFF),
                    ),
                    child:
                    Expanded(
                      child: TextField(
                        // maxLines: 4,
                        cursorColor: Colors.grey,

                        decoration: InputDecoration(
                            hintText: "Search for people to include/ exclude",
                            hintStyle: TextStyle(color: Colors.grey),
                            border: InputBorder.none,
                            prefixIcon: Icon(Icons.search),
                            contentPadding: const EdgeInsets.symmetric(horizontal: 10,vertical: 20)
                        ),
                        // controller: questionText,
                        // onSubmitted: messageController.handleSubmitted,
                      ),
                    ),
                  ),
                ),
                button == false ?
                InkWell(
                  onTap: (){
                    // setState(() {
                    //   button = true;
                    // });
                  },
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    // crossAxisAlignment: CrossAxisAlignment.start,/**/
                    children: [
                      Row(
                        children: [
                          Column(
                            children: [
                              Text('3.2'),
                              CircleAvatar(
                                backgroundColor: Colors.white,
                                radius: width/17,
                                child: CircleAvatar(
                                  // radius: 21,
                                  // backgroundColor: Colors.white,
                                  child: ClipOval(
                                      child: Image.asset(
                                        'assets/images/Ellipse -1.png',
                                        width: width/5,
                                        // fit: BoxFit.cover,
                                      )),
                                ),
                              ),
                            ],
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 5,top:8),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text('Add to my STORY',style: TextStyle(fontSize: 18,color: Colors.blue),),
                                // Text('Best Friend',style: TextStyle(color: Colors.grey,fontStyle: FontStyle.italic)),
                              ],
                            ),
                          ),
                        ],
                      ),
                      Text('245 vibes',style: TextStyle(color: Colors.grey),),
                    ],
                  ),
                ):
                    Container(),
                button == false ?
                Column(
                  children: List.generate(10, (index) {
                    return   Padding(
                      padding: const EdgeInsets.only(top: 5,bottom: 0),
                      child: InkWell(
                        onTap: (){
                          setState(() {
                            button = true;
                          });
                        },
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          // crossAxisAlignment: CrossAxisAlignment.start,/**/
                          children: [
                            Row(
                              children: [
                                Column(
                                  children: [
                                    Text('3.2'),
                                    CircleAvatar(
                                      backgroundColor: Colors.white,
                                      radius: width/17,
                                      child: CircleAvatar(
                                        // radius: 21,
                                        // backgroundColor: Colors.white,
                                        child: ClipOval(
                                            child: Image.asset(
                                              'assets/images/Ellipse -1.png',
                                              width: width/5,
                                              // fit: BoxFit.cover,
                                            )),
                                      ),
                                    ),
                                  ],
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 5,top:8),
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text('Amanda Rio',style: TextStyle(fontSize: 16),),
                                      Text('Best Friend',style: TextStyle(color: Colors.grey,fontStyle: FontStyle.italic)),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                            Text('245 vibes',style: TextStyle(color: Colors.grey),),
                          ],
                        ),
                      ),
                    );
                  }),
                ):
                    Container(),
                Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 5,bottom: 0),
                      child: InkWell(
                        onTap: (){
                          setState(() {
                            button = true;
                          });
                        },
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          // crossAxisAlignment: CrossAxisAlignment.start,/**/
                          children: [
                            Row(
                              children: [
                                Column(
                                  children: [
                                    Text('3.2'),
                                    CircleAvatar(
                                      backgroundColor: Colors.white,
                                      radius: width/17,
                                      child: CircleAvatar(
                                        // radius: 21,
                                        // backgroundColor: Colors.white,
                                        child: ClipOval(
                                            child: Image.asset(
                                              'assets/images/Ellipse -1.png',
                                              width: width/5,
                                              // fit: BoxFit.cover,
                                            )),
                                      ),
                                    ),
                                  ],
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 5,top:8),
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text('Amanda Rio',style: TextStyle(fontSize: 16),),
                                      Text('Best Friend',style: TextStyle(color: Colors.grey,fontStyle: FontStyle.italic)),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                            Text('245 vibes',style: TextStyle(color: Colors.grey),),
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 5,bottom: 0),
                      child: InkWell(
                        onTap: (){
                          setState(() {
                            button = true;
                          });
                        },
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          // crossAxisAlignment: CrossAxisAlignment.start,/**/
                          children: [
                            Row(
                              children: [
                                Column(
                                  children: [
                                    Text('3.2'),
                                    CircleAvatar(
                                      backgroundColor: Colors.white,
                                      radius: width/17,
                                      child: CircleAvatar(
                                        // radius: 21,
                                        // backgroundColor: Colors.white,
                                        child: ClipOval(
                                            child: Image.asset(
                                              'assets/images/Ellipse -1.png',
                                              width: width/5,
                                              // fit: BoxFit.cover,
                                            )),
                                      ),
                                    ),
                                  ],
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 5,top:8),
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text('Amanda Rio',style: TextStyle(fontSize: 16),),
                                      Text('Best Friend',style: TextStyle(color: Colors.grey,fontStyle: FontStyle.italic)),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                            Text('245 vibes',style: TextStyle(color: Colors.grey),),
                          ],
                        ),
                      ),
                    ),
                    button == true ?
                    Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 5,bottom: 0),
                          child: InkWell(
                            onTap: (){
                              setState(() {
                                button = true;
                              });
                            },
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              // crossAxisAlignment: CrossAxisAlignment.start,/**/
                              children: [
                                Row(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(top: 5,right: 10),
                                      child: CircleAvatar(
                                        radius: 12,
                                        backgroundColor: Colors.green,
                                        child: Icon(Icons.check,color: Colors.white,),
                                      ),
                                    ),
                                    Column(
                                      children: [
                                        Text('3.2'),
                                        CircleAvatar(
                                          backgroundColor: Colors.white,
                                          radius: width/17,
                                          child: CircleAvatar(
                                            // radius: 21,
                                            // backgroundColor: Colors.white,
                                            child: ClipOval(
                                                child: Image.asset(
                                                  'assets/images/Ellipse -1.png',
                                                  width: width/5,
                                                  // fit: BoxFit.cover,
                                                )),
                                          ),
                                        ),
                                      ],
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(left: 5,top:8),
                                      child: Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          Text('Amanda Rio',style: TextStyle(fontSize: 16),),
                                          Text('Best Friend',style: TextStyle(color: Colors.grey,fontStyle: FontStyle.italic)),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                                Text('245 vibes',style: TextStyle(color: Colors.grey),),
                              ],
                            ),
                          ),
                        ),
                        Column(
                          children: List.generate(5, (index) {
                            return  Padding(
                              padding: const EdgeInsets.only(top: 5,bottom: 0),
                              child: InkWell(
                                onTap: (){
                                  setState(() {
                                    button = true;
                                  });
                                },
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  // crossAxisAlignment: CrossAxisAlignment.start,/**/
                                  children: [
                                    Row(
                                      children: [
                                        Column(
                                          children: [
                                            Text('3.2'),
                                            CircleAvatar(
                                              backgroundColor: Colors.white,
                                              radius: width/17,
                                              child: CircleAvatar(
                                                // radius: 21,
                                                // backgroundColor: Colors.white,
                                                child: ClipOval(
                                                    child: Image.asset(
                                                      'assets/images/Ellipse -1.png',
                                                      width: width/5,
                                                      // fit: BoxFit.cover,
                                                    )),
                                              ),
                                            ),
                                          ],
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.only(left: 5,top:8),
                                          child: Column(
                                            crossAxisAlignment: CrossAxisAlignment.start,
                                            children: [
                                              Text('Amanda Rio',style: TextStyle(fontSize: 16),),
                                              Text('Best Friend',style: TextStyle(color: Colors.grey,fontStyle: FontStyle.italic)),
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                    Text('245 vibes',style: TextStyle(color: Colors.grey),),
                                  ],
                                ),
                              ),
                            );
                          })
                        ),
                      ],
                    ):
                    Padding(
                      padding: const EdgeInsets.only(top: 5,bottom: 0),
                      child: InkWell(
                        onTap: (){
                          setState(() {
                            button = true;
                          });
                        },
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          // crossAxisAlignment: CrossAxisAlignment.start,/**/
                          children: [
                            Row(
                              children: [
                                Column(
                                  children: [
                                    Text('3.2'),
                                    CircleAvatar(
                                      backgroundColor: Colors.white,
                                      radius: width/17,
                                      child: CircleAvatar(
                                        // radius: 21,
                                        // backgroundColor: Colors.white,
                                        child: ClipOval(
                                            child: Image.asset(
                                              'assets/images/Ellipse -1.png',
                                              width: width/5,
                                              // fit: BoxFit.cover,
                                            )),
                                      ),
                                    ),
                                  ],
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 5,top:8),
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text('Amanda Rio',style: TextStyle(fontSize: 16),),
                                      Text('Best Friend',style: TextStyle(color: Colors.grey,fontStyle: FontStyle.italic)),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                            Text('245 vibes',style: TextStyle(color: Colors.grey),),
                          ],
                        ),
                      ),
                    ),
                  ]
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
