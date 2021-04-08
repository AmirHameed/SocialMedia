import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:get/get.dart';
import 'package:social_media/utility/widget/chat_screen_active.dart';
import 'package:social_media/utility/widget/chat_screen_widget.dart';

class MessagesScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: SingleChildScrollView(
        child: Column(
          children: [
            ChatScreenWidget(text: '4.5',image: 'assets/images/main_home_image.png',title: 'Amanda',subTitle: 'Security Alert',date: '17 Aug',icon: Icons.check,color: Colors.grey,onTap: (){Get.toNamed('/messages');},),
            ChatScreenWidget(text: '4.5',image: 'assets/images/main_home_image.png',title: 'Brain Donelly',subTitle: 'Security Alert',date: '17 Aug',icon: Icons.check,color: Colors.green,onTap: (){Get.toNamed('/messages');}),
            ChatScreenActive(text: '4.5',image: 'assets/images/main_home_image.png',title: 'Amanda Diana',subTitle: 'Security Alert',date: '17 Aug',count: '2',onTap: (){Get.toNamed('/messages');}),
            ChatScreenWidget(text: '4.5',image: 'assets/images/main_home_image.png',title: 'Amanda',subTitle: 'Security Alert',date: '17 Aug',icon: Icons.check,color: Colors.grey,onTap: (){Get.toNamed('/messages');}),
            ChatScreenWidget(text: '4.5',image: 'assets/images/main_home_image.png',title: 'Brain Donelly',subTitle: 'Security Alert',date: '17 Aug',icon: Icons.check,color: Colors.green,onTap: (){Get.toNamed('/messages');}),
            ChatScreenWidget(text: '4.5',image: 'assets/images/main_home_image.png',title: 'Amanda',subTitle: 'Security Alert',date: '17 Aug',icon: Icons.check,color: Colors.grey,onTap: (){Get.toNamed('/messages');}),
            ChatScreenWidget(text: '4.5',image: 'assets/images/main_home_image.png',title: 'Brain Donelly',subTitle: 'Security Alert',date: '17 Aug',icon: Icons.check,color: Colors.green,onTap: (){Get.toNamed('/messages');}),
          ],
        ),
      ),
    );
  }
}


