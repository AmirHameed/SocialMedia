import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:social_media/utility/widget/chatMessage.dart';

class Messages extends StatefulWidget {
  @override
  _MessagesState createState() => _MessagesState();
}

class _MessagesState extends State<Messages> {
  final TextEditingController _t1 = new TextEditingController();
  final List<ChatMessage> _messages = <ChatMessage>[];
  void _handleSubmitted(String text){
    _t1.clear();
    ChatMessage message = ChatMessage(
      text: text,
    );
    setState(() {
      _messages.insert(0, message);
    });
  }
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
                        controller: _t1,
                        onSubmitted: _handleSubmitted,
                      ),
                    ),
                    IconButton(
                      icon: Icon(
                        Icons.attach_file_outlined,
                        color: Colors.grey,
                      ),
                      onPressed: ()=> _handleSubmitted(_t1.text),
                    ),
                    IconButton(
                      icon: Icon(
                        Icons.mic_none_outlined,
                        color: Colors.grey,
                      ),
                      onPressed: ()=> _handleSubmitted(_t1.text),
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
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(60),
        child: AppBar(
          backgroundColor: NeumorphicTheme.baseColor(context),
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
                            color: Colors.grey[200]),
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
                        fontSize: 14,
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
                          backgroundColor: Colors.grey[300],
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
            child: ListView.builder(
              padding: EdgeInsets.all(8.0),
              reverse: true,
              itemBuilder: (_,int index)=>_messages[index],
              itemCount: _messages.length,
            ),
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
