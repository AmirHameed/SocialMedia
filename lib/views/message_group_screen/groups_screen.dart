import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:social_media/utility/widget/chat_screen_active.dart';
import 'package:social_media/utility/widget/chat_screen_widget.dart';

class GroupsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: SingleChildScrollView(
        child: Column(
          children: [
            ChatScreenWidget(text: '4.5',image: 'assets/images/main_home_image.png',title: 'Group 1',subTitle: 'Security Alert',date: '17 Aug',icon: Icons.check,color: Colors.grey,onTap: (){Get.toNamed('/messages');},),
            ChatScreenWidget(text: '4.5',image: 'assets/images/main_home_image.png',title: 'Group 2',subTitle: 'Security Alert',date: '17 Aug',icon: Icons.check,color: Colors.green,onTap: (){Get.toNamed('/messages');},),
            ChatScreenWidget(text: '4.5',image: 'assets/images/main_home_image.png',title: 'Group 4',subTitle: 'Security Alert',date: '17 Aug',icon: Icons.check,color: Colors.grey,onTap: (){Get.toNamed('/messages');},),
            ChatScreenWidget(text: '4.5',image: 'assets/images/main_home_image.png',title: 'Group 5',subTitle: 'Security Alert',date: '17 Aug',icon: Icons.check,color: Colors.green,onTap: (){Get.toNamed('/messages');},),
            ChatScreenActive(text: '4.5',image: 'assets/images/main_home_image.png',title: 'Group 3',subTitle: 'Security Alert',date: '17 Aug',count: '2',onTap: (){Get.toNamed('/messages');},),
            ChatScreenWidget(text: '4.5',image: 'assets/images/main_home_image.png',title: 'Group 6',subTitle: 'Security Alert',date: '17 Aug',icon: Icons.check,color: Colors.grey,onTap: (){Get.toNamed('/messages');},),
            ChatScreenWidget(text: '4.5',image: 'assets/images/main_home_image.png',title: 'Group 7',subTitle: 'Security Alert',date: '17 Aug',icon: Icons.check,color: Colors.green,onTap: (){Get.toNamed('/messages');},),
          ],
        ),
      ),
    );
  }
}
