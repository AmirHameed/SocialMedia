import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:get/get.dart';
import 'package:social_media/controllers/messageController.dart';

class GroupMessages extends StatelessWidget {
  final MessageController messageController = Get.put(MessageController());
  Widget _textComposerWidget() {
    return IconTheme(
      data: IconThemeData(color: Colors.white),
      child: Row(
        children: <Widget>[
          Flexible(
            child: Container(
              height: 50,
              child: Neumorphic(
                margin: EdgeInsets.only(left: 10, right: 10),
                padding: EdgeInsets.only(left: 10),
                style: NeumorphicStyle(
                  shape: NeumorphicShape.concave,
                  boxShape:
                      NeumorphicBoxShape.roundRect(BorderRadius.circular(24.0)),
                  color: Color(0xFFFFFFFF),
                ),
                child: Row(
                  children: [
                    Icon(
                      Icons.emoji_emotions_outlined,
                      color: Colors.grey,
                    ),
                    Expanded(
                      child: TextField(
                        cursorColor: Colors.grey,
                        decoration: InputDecoration(
                            hintText: "Type a message",
                            hintStyle: TextStyle(color: Colors.grey),
                            border: InputBorder.none,
                            contentPadding: const EdgeInsets.symmetric(
                                horizontal: 10, vertical: 0)),
                        controller: messageController.t1,
                        onSubmitted: messageController.handleSubmitted,
                      ),
                    ),
                    IconButton(
                      icon: Icon(
                        Icons.attach_file_outlined,
                        color: Colors.grey,
                      ),
                      onPressed: () => messageController
                          .handleSubmitted(messageController.t1.text),
                    ),
                    IconButton(
                      icon: Icon(
                        Icons.mic_none_outlined,
                        color: Colors.grey,
                      ),
                      onPressed: () => messageController
                          .handleSubmitted(messageController.t1.text),
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
          backgroundColor: Color(0xFFFFFFFF),
          automaticallyImplyLeading: false,
          title: Row(
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
              Padding(
                padding: const EdgeInsets.only(
                  left: 10,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'StripsAndStreams',
                      style:
                          TextStyle(color: Colors.black, fontSize: width / 22),
                    ),
                    Text(
                      'Marbury(41); Madison(25)',
                      style: TextStyle(
                        color: Colors.grey,
                        fontSize: width / 35,
                        fontStyle: FontStyle.italic,
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
          actions: [
            IconButton(
              icon: Icon(
                Icons.search,
                color: Colors.grey,
              ),
              onPressed: () {},
            ),
            IconButton(
              icon: Icon(
                Icons.more_vert,
                color: Colors.black,
              ),
              onPressed: () {},
            ),
          ],
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Flexible(
              child: Obx(
            () => ListView.builder(
              padding: EdgeInsets.all(8.0),
              reverse: true,
              itemBuilder: (_, int index) => messageController.messages[index],
              itemCount: messageController.messages.length,
            ),
          )),
          Divider(
            height: 1.0,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: _textComposerWidget(),
          )
        ],
      ),
    );
  }
}
