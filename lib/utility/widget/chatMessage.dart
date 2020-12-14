import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';

const String _name = "Usama Laeeq";

class ChatMessage extends StatelessWidget {
  final String text;

  const ChatMessage({Key key, this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    double l = MediaQuery.of(context).size.longestSide;
    Orientation orien = MediaQuery.of(context).orientation;
    bool screen = orien == Orientation.portrait ? true : false;
    return Column(
      children: [
        Container(
          margin: const EdgeInsets.all(8),
          child: Neumorphic(
            style: NeumorphicStyle(
                shape: NeumorphicShape.concave,
                boxShape:
                NeumorphicBoxShape.roundRect(BorderRadius.circular(8)),
                depth: 12,
                lightSource: LightSource.topLeft,
                ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(top: 5,left: 5,right: 5),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(_name,style: TextStyle(color: Colors.orange,fontWeight: FontWeight.bold),),
                      InkWell(
                        child: Icon(Icons.arrow_circle_up_rounded,size: 15,),
                      ),
                    ],
                  ),
                ),

                Container(
//                 width: width/text.length,
                  // margin: EdgeInsets.only(
                  //     top: 8.0, bottom: 8.0, left: 80.0, right: 10),
                  padding: EdgeInsets.all(10),
//              height: screen ? width * 0.09 : height * 0.2,
//                width: screen ? width * 0.6 : height * 0.75,

                  margin: EdgeInsets.only(top: 5.0),
                  child: Expanded(
                    child: Text(
                      text,
//                     maxLines: 1,
                      // softWrap: true,
                      // overflow: TextOverflow.clip,
                      style: TextStyle(
                        color: Colors.black,
                      ),
                    ),
                  ),
                ),

              ],
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(right: 10),
          child: Align(
            alignment: Alignment.bottomRight,
            child: InkWell(
              child: Text('Send Vibe',style: TextStyle(color: Colors.blue,fontWeight: FontWeight.bold,fontSize: 12),),
            ),
          ),
        ),
      ],
    );
  }
}