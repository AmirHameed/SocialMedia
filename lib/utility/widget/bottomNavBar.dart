import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';

class NavBar extends StatefulWidget {
  @override
  _NavBarState createState() => _NavBarState();
}

class _NavBarState extends State<NavBar> {
  int currentIndex = 0;

  void incrementTab(index) {
    setState(() {
      currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
        backgroundColor: NeumorphicTheme.baseColor(context),
        currentIndex: currentIndex,
        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(
              icon: IconButton(
                onPressed: () {},
                icon: Image.asset(
                  'assets/images/home (1).png',
                  height: 25,
                  width: 25,
                ),
              ),
              label: ''),
          BottomNavigationBarItem(
              icon: IconButton(
                onPressed: () {
                  // Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => MyDonations()));
                },
                icon: Image.asset(
                  'assets/images/search-24px.png',
                ),
                iconSize: 35,
              ),
              label: ''),
          BottomNavigationBarItem(
              icon: NeumorphicButton(
                onPressed: () {
                  print("onClick");
                },
                style: NeumorphicStyle(
                  shape: NeumorphicShape.flat,
                  boxShape: NeumorphicBoxShape.circle(),
                ),
                child: Image.asset(
                  'assets/images/Group 2133.png',
                  height: 25,
                  width: 25,
                ),
              ),
              label: ''),
          BottomNavigationBarItem(
              icon: IconButton(
                onPressed: () {
                  // Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => MyDonations()));
                },
                icon: Image.asset(
                  'assets/images/Group 2134.png',
                ),
                iconSize: 35,
              ),
              label: ''),
          BottomNavigationBarItem(
            icon: NeumorphicButton(
              margin: EdgeInsets.only(top: 12),
              onPressed: () {},
              style: NeumorphicStyle(
                shape: NeumorphicShape.flat,
                boxShape:
                    NeumorphicBoxShape.roundRect(BorderRadius.circular(8)),
              ),
              child: Row(
                children: [
                  Text("ksdlsdkls"),
                  // CircleAvatar(
                  //   radius: 30,
                  //   backgroundColor: Colors.transparent,
                  //   child: ClipOval(
                  //     child: Image.asset('assets/images/profileImage.png'),
                  //   ),
                  // ),
                ],
              ),
            ),
              label: ''
          ),
        ]);
  }
}
