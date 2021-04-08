import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:social_media/utility/widget/chat_screen_active.dart';
import 'package:social_media/utility/widget/chat_screen_widget.dart';

class CallsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: SingleChildScrollView(
        child: Column(
          children: [
            ChatScreenWidget(text: '4.5',image: 'assets/images/main_home_image.png',title: 'Amanda',subTitle: 'Security Alert',date: '17 Aug',icon: Icons.call,color: Colors.grey,onTap: (){Get.toNamed('/messages');},),
            ChatScreenWidget(text: '4.5',image: 'assets/images/main_home_image.png',title: 'Brain Donelly',subTitle: 'Security Alert',date: '17 Aug',icon: Icons.call_missed_outgoing,color: Colors.green,onTap: (){Get.toNamed('/messages');},),
            ChatScreenWidget(text: '4.5',image: 'assets/images/main_home_image.png',title: 'Amanda',subTitle: 'Security Alert',date: '17 Aug',icon: Icons.call_end,color: Colors.grey,onTap: (){Get.toNamed('/messages');},),
            ChatScreenActive(text: '4.5',image: 'assets/images/main_home_image.png',title: 'Amanda Diana',subTitle: 'Security Alert',date: '17 Aug',count: '2',onTap: (){Get.toNamed('/messages');},),
            ChatScreenWidget(text: '4.5',image: 'assets/images/main_home_image.png',title: 'Brain Donelly',subTitle: 'Security Alert',date: '17 Aug',icon: Icons.call_missed,color: Colors.green,onTap: (){Get.toNamed('/messages');},),
            ChatScreenWidget(text: '4.5',image: 'assets/images/main_home_image.png',title: 'Amanda',subTitle: 'Security Alert',date: '17 Aug',icon: Icons.call_merge,color: Colors.grey,onTap: (){Get.toNamed('/messages');},),
            ChatScreenWidget(text: '4.5',image: 'assets/images/main_home_image.png',title: 'Brain Donelly',subTitle: 'Security Alert',date: '17 Aug',icon: Icons.call_received_rounded,color: Colors.green,onTap: (){Get.toNamed('/messages');},),
          ],
        ),
      ),
    );
  }
}
