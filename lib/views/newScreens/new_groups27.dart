import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:get/get.dart';
import 'package:social_media/utility/constants.dart';

class NewGroup extends StatelessWidget {
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
              'Add Participants',
              style: TextStyle(fontSize: 12, color: Colors.black),
            ),
          ],
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(top: 20, right: 10, bottom: 10),
            child: InkWell(
              child: Neumorphic(
                padding: EdgeInsets.only(right: 15, top: 4, left: 15),
                style: NeumorphicStyle(
                  shape: NeumorphicShape.flat,
                  boxShape:
                      NeumorphicBoxShape.roundRect(BorderRadius.circular(18.0)),
                  color: Color(0xffDDDDDD),
                ),
                child: Text(
                  'Next',
                  style: TextStyle(color: Colors.blue),
                ),
              ),
              onTap: () {
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
            padding: const EdgeInsets.only(left: 10, right: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 30),
                  child: Container(
                    height: 40,
                    child: Neumorphic(
                      style: NeumorphicStyle(
                          lightSource: LightSource.topLeft,
                          shape: NeumorphicShape.concave,
                          boxShape: NeumorphicBoxShape.roundRect(
                              BorderRadius.circular(22)),
                          color: Color(0xffDDDDDD)),
                      child: Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 10),
                            child: Icon(
                              Icons.search,
                              color: Colors.grey,
                            ),
                          ),
                          Expanded(
                            child: TextField(
                              cursorColor: Colors.grey,
                              decoration: InputDecoration(
                                  isDense: true,
                                  hintText: "Search",
                                  hintStyle: TextStyle(color: Colors.grey),
                                  border: InputBorder.none,
                                  contentPadding: const EdgeInsets.symmetric(
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
                                'Inner Circle',
                                style: TextStyle(
                                    color: Colors.grey[500], fontSize: 12),
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
                    scrollDirection: Axis.vertical,
                    child: Column(
                      children: List.generate(10, (index) {
                        return Padding(
                          padding: const EdgeInsets.only(
                              left: 5, right: 15, bottom: 8),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                children: [
                                  Column(
                                    children: [
                                      Text('3.2'),
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
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Column(
                                    children: [
                                      Text(
                                        'Amanta',
                                        style: TextStyle(fontSize: 16),
                                      ),
                                      Text(
                                        'Best Friend',
                                        style: TextStyle(
                                            fontSize: 10,
                                            fontStyle: FontStyle.italic),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                              Text(
                                '245 Vibes',
                                style: TextStyle(
                                    fontSize: 14, color: Colors.grey[400]),
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
        ),
      ),
    );
  }
}
