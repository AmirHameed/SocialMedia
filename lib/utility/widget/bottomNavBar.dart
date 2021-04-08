import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:get/get.dart';
import 'package:social_media/controllers/sliderController.dart';
import 'package:social_media/views/homeView.dart';
import 'package:social_media/views/liveImage.dart';
import 'package:social_media/views/readingPost.dart';

class NavBar extends StatelessWidget {
  //final SliderController sliderController = Get.put(SliderController());
  int currentIndex = 0;
  void incrementTab(index) {
    currentIndex = index;
  }

  @override
  Widget build(BuildContext context) {
      double width = MediaQuery.of(context).size.width;
      double height = MediaQuery.of(context).size.height;
    return BottomNavigationBar(
        backgroundColor: Color(0xFFFFFFFF),
        currentIndex: currentIndex,
        selectedFontSize: 4,
        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(
              icon: IconButton(
                onPressed: () {
                  Get.offNamed('/homeView');
                },
                icon: Image.asset(
                  'assets/images/home (1).png',
                ),
              ),
              label: ''),
          BottomNavigationBarItem(
              icon: IconButton(
                onPressed: () {
                  Get.toNamed('/searchScreen');
                  // Navigator.push(context, MaterialPageRoute(builder: (context) => ReadingView()));
                },
                icon: Image.asset(
                  'assets/images/search-24px.png',
                ),
              ),
              label: ''),
          BottomNavigationBarItem(
              icon: NeumorphicButton(
                onPressed: () {
                 Get.toNamed('/post_screen');
                },
                style: NeumorphicStyle(
                  shape: NeumorphicShape.concave,
                  boxShape: NeumorphicBoxShape.circle(),
                  color: Color(0xFFFFFFFF),
                ),
                child: Image.asset(
                  'assets/images/Group 2133.png',
                  height: height/28,
                  width: width/18,
                ),
              ),
              label: ''),
          BottomNavigationBarItem(
              icon: IconButton(
                onPressed: () {
                  // Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => MyDonations()));
                  Get.toNamed('notificationsMessages');
                },
                icon: Image.asset(
                  'assets/images/Group 2134.png',
                ),
                iconSize: width/12,
              ),
              label: ''),
          BottomNavigationBarItem(

              icon:   InkWell(
                onTap: (){
                    Get.toNamed('/profile');

                },
                child: Container(
                  margin: EdgeInsets.only(right: 2),
                  //padding: EdgeInsets.symmetric(horizontal: 6),
                  width: width/5,
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
                        Padding(
                          padding: const EdgeInsets.only(left: 5),
                          child: Text(
                            'Repo \n 999',
                            style: TextStyle(
                              color: Colors.orange,
                              fontSize: width/35,
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ),
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

                      ],
                    ),
                  ),
                ),
              ),
              label: ''),
        ]);
  }
}
