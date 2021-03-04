import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:social_media/utility/constants.dart';

class CommentsWidget extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
   return   Row(children: [
     Expanded(
       flex: 1,
       child: IconButton(
         icon: Icon(
           Icons.add,
           size: 35,
           color: Colors.grey,
         ),
         onPressed: (){

         },
       ),
     ),
     Expanded(
       flex: 7,
       child: SingleChildScrollView(
         scrollDirection: Axis.horizontal,
         child: Row(
           children: List.generate(6, (index) {
             return Container(
               margin: EdgeInsets.symmetric(
                   vertical: 6, horizontal: 2),
               color: Colors.transparent,
               width: width / 4,
               height: height / 20,
               child: Neumorphic(
                 padding: EdgeInsets.only(right: 6),
                 margin: EdgeInsets.symmetric(horizontal: 2),
                 style: NeumorphicStyle(
                     shape: NeumorphicShape.concave,
                     depth: 2,
                     boxShape: NeumorphicBoxShape.roundRect(
                         BorderRadius.circular(24)),
                     lightSource: LightSource.topLeft,
                     color: Colors.white),
                 child: Row(
                   mainAxisAlignment: MainAxisAlignment.start,
                   children: [
                     CircleAvatar(
                       radius: 15,
                       backgroundColor: Colors.transparent,
                       child: ClipOval(
                           child: Image.asset(
                             'assets/images/Ellipse -2.png',
                             width: 40,
                             height: 45,
                             fit: BoxFit.cover,
                           )),
                     ),
                     Text(
                       '  Sexy',
                       style: TextStyle(
                           color: Colors.black,
                           fontSize: 14,
                           fontWeight: FontWeight.w500),
                       textAlign: TextAlign.center,
                     ),
                   ],
                 ),
               ),
             );
           }),
         ),
       ),
     ),
   ]);
  }

}