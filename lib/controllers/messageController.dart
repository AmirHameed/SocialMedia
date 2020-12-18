
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:social_media/utility/widget/chatMessage.dart';

class MessageController extends GetxController {

   TextEditingController t1 = new TextEditingController();
   List<ChatMessage> messages = <ChatMessage>[].obs;

    void handleSubmitted(String text){
      t1.clear();
      ChatMessage message = ChatMessage(
         text: text,
      );
      messages.insert(0, message);
   }
}