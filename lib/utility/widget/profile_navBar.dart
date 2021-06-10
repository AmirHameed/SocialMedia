import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:get/get.dart';
import 'package:social_media/views/auth/login_screen.dart';

class ProfileNavBar extends StatelessWidget {
  //final SliderController sliderController = Get.put(SliderController());
  int currentIndex = 0;
  void incrementTab(index) {
    currentIndex = index;
  }
  void _settingModalBottomSheet(context){
    showModalBottomSheet(
      context: context,
      backgroundColor: Colors.transparent,
      barrierColor: Colors.transparent,
      builder: (context) {
        return Container(
          margin: EdgeInsets.all(8),
          child: ClipRRect(
            borderRadius: BorderRadius.all(Radius.circular(20)),
            child: BackdropFilter(
              filter: ImageFilter.blur(
                sigmaX: 20.0,
                sigmaY: 20.0,
              ),
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.white12,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20.0),
                    topRight: Radius.circular(20.0),
                  ),
                  border: Border.all(
                    color: Colors.black26,
                    width: 0.5,
                  ),
                ),
                child: Column(
                  children: [
                    Center(
                      child: FractionallySizedBox(
                        widthFactor: 0.25,
                        child: Container(
                          margin: const EdgeInsets.symmetric(
                            vertical: 8,
                          ),
                          height: 4,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(20.0),
                              topRight: Radius.circular(20.0),
                            ),
                            border: Border.all(
                              color: Colors.black12,
                              width: 0.5,
                            ),
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      child: Container(
                        alignment: Alignment.center,
                        child: Column(
                          children: [
                            Container(
                              height: 80,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                ModalWidget(onTap: (){},color: Colors.black,icon: Icons.people_alt_outlined,text: 'Achievement',),
                                ModalWidget(onTap: (){},color: Colors.blue,icon: Icons.people_alt_outlined,text: 'Educational',),
                                ModalWidget(onTap: (){},color: Colors.blue,icon: Icons.people_alt_outlined,text: 'Experience',),
                              ],
                            ),
                            Container(
                              height: 30,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                ModalWidget(onTap: (){},color: Colors.blue,icon: Icons.people_alt_outlined,text: 'Experience',),
                                ModalWidget(onTap: (){},color: Colors.blue,icon: Icons.people_alt_outlined,text: 'Notes',),
                                ModalWidget(onTap: (){Get.to(LoginScreen(),transition: Transition.noTransition);},color: Colors.blue,icon: Icons.people_alt_outlined,text: 'Logout',),
                              ],
                            ),
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
      },
    );
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
                  // Get.offNamed('/homeView');
                },
                icon:  Image.asset(
                  'assets/images/home (1).png',
                  height: 20,
                ),
              ),
              label: ''),
          BottomNavigationBarItem(
              icon: IconButton(
                onPressed: () {
                  // Get.toNamed('/readingPost');
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
                  // Get.toNamed('/post_screen');
                  _settingModalBottomSheet(context);
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

class ModalWidget extends StatelessWidget {
IconData icon;
Color color;
String text;
Function onTap;
ModalWidget({this.icon,this.color,this.text,this.onTap});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      child: Column(
        children: [
          CircleAvatar(
            backgroundColor:color,
            radius: 30,
            child: Icon(icon,color: Colors.white,),
          ),
          Text(text),
        ],
      ),
      onTap: onTap,
    );
  }
}
