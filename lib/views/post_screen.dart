import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:get/get.dart';
import 'package:social_media/utility/constants.dart';
import 'package:social_media/utility/widget/bottomNavBar.dart';
import 'package:social_media/views/sell_screen.dart';
import 'package:social_media/views/text_screen.dart';
import 'package:social_media/views/truth.dart';

import 'gallery_screen.dart';

class PostScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: NavBar(),
      body: BottomNavWidget(),
    );
  }
}

class PostScreenButton extends StatelessWidget {
 String text;
 Function onTap;
 PostScreenButton({this.text,this.onTap});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      child: Text(text,style: TextStyle(color: Colors.grey),),
      onTap: onTap,
    );
  }
}
