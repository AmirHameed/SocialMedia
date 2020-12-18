import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:get/get.dart';
import 'package:social_media/controllers/messageController.dart';
import 'package:social_media/utility/widget/chatMessage.dart';

class Messages extends StatelessWidget {
  final MessageController messageController = Get.put(MessageController());
  Widget _textComposerWidget(){
    return IconTheme(
      data: IconThemeData(
          color: Colors.white
      ),
      child: Row(
        children: <Widget>[
          Flexible(
            child: Container(
              child: Neumorphic(
                style: NeumorphicStyle(
                  shape: NeumorphicShape.concave,
                  boxShape: NeumorphicBoxShape.roundRect(BorderRadius.circular(18.0)),
                  color: Color(0xFFFFFFFF),
                ),
                child: Row(
                  children: [
                    Icon(Icons.emoji_emotions_outlined,color: Colors.grey,),
                    Expanded(
                      child: TextField(
                        cursorColor: Colors.grey,
                        decoration: InputDecoration(
                          hintText: "Type a message",
                          border: InputBorder.none,
                          contentPadding: const EdgeInsets.symmetric(horizontal: 10,vertical: 20)
                        ),
                        controller: messageController.t1,
                        onSubmitted: messageController.handleSubmitted,
                      ),
                    ),
                    IconButton(
                      icon: Icon(
                        Icons.attach_file_outlined,
                        color: Colors.grey,
                      ),
                      onPressed: ()=> messageController.handleSubmitted(messageController.t1.text),
                    ),
                    IconButton(
                      icon: Icon(
                        Icons.mic_none_outlined,
                        color: Colors.grey,
                      ),
                      onPressed: ()=> messageController.handleSubmitted(messageController.t1.text),
                    ),
                  ],
                ),
              ),
            ),
          ),
       
        ],
      ),
    );
  }
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(60),
        child: AppBar(
          backgroundColor:  Color(0xFFFFFFFF),
          automaticallyImplyLeading: false,

          title: Row(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Image.asset(
                        'assets/images/leftBrackets.png',
                        height: 20,
                      ),
                      Neumorphic(
                        style: NeumorphicStyle(
                            shape: NeumorphicShape.convex,
                            boxShape: NeumorphicBoxShape.roundRect(
                                BorderRadius.circular(50)),
                            lightSource: LightSource.topLeft,
                          color: Color(0xFFFFFFFF),),
                        child: Container(
                          padding: const EdgeInsets.all(12),
                          child: Text(
                            '3.2',
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                      Image.asset(
                        'assets/images/rightBrackets.png',
                        height: 20,
                      ),
                    ],
                  ),
                  Text(
                    '246 vibes',
                    style: TextStyle(color: Colors.black, fontSize: 12),
                  )
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(left: 10,),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Court',
                      style: TextStyle(color: Colors.black),
                    ),
                    Text(
                      'Marbury(41); Madison(25)',
                      style: TextStyle(
                        color: Colors.grey,
                        fontSize: width/32,
                        fontStyle: FontStyle.italic,
                      ),
                    ),
                  ],
                ),
              ),


            ],
          ),
          actions: [
            Container(
              height: 50,
              width: 50,
              child: Neumorphic(
                style: NeumorphicStyle(
                    shape: NeumorphicShape.convex,
                    boxShape: NeumorphicBoxShape.circle(),
                    color: Colors.white),
                child: Padding(
                  padding: const EdgeInsets.only(top: 10),
                  child: Column(
                    children: [
                      CircleAvatar(
                          backgroundColor: Colors.grey[200],
                          radius: 18.0,
                          child: Text(
                            'End',
                            style: TextStyle(
                                fontWeight: FontWeight.bold, color: Colors.red,fontSize: 12),
                          )),
                    ],
                  ),
                ),
              ),
            ),

            IconButton(
              icon: Icon(Icons.menu,color: Colors.black,),
              onPressed: (){},
            ),
          ],
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Flexible(
            child: Obx(()=>ListView.builder(
              padding: EdgeInsets.all(8.0),
              reverse: true,
              itemBuilder: (_,int index)=>messageController.messages[index],
              itemCount: messageController.messages.length,
            ),
            )
          ),
          Divider(height: 1.0,),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: _textComposerWidget(),
          )
        ],
      ),
    );
  }
}
