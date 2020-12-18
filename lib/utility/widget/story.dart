import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
class Story extends StatelessWidget {
  String text,image;
  Story({this.text,this.image});
  @override
  Widget build(BuildContext context) {

    return  Column(
      children: [
        Text('3.2',style: TextStyle(color: Colors.black,fontWeight: FontWeight.w600,fontSize: 12),),
        Container(
          alignment: Alignment.center,
          height: 60,
          width: 60,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topRight,
              end: Alignment.bottomLeft,
              stops: [0.1, 0.5, 0.7, 0.9,0.11, 0.13],
              colors: [
                Colors.green[200],
                Colors.blue[200],
                Colors.purple[200],
                Colors.yellow[200],
                Colors.deepOrange[200],
                Colors.pink[200],

              ],
            ),
            shape:BoxShape.circle,
          ),
          child: Center(
            child: ClipOval(
                child: Image.asset(image,  height: 54,
                  width: 54,
                  fit: BoxFit.cover,)
            ),
          ),
        ),
        Text(text,style: TextStyle(color: Colors.black,fontWeight: FontWeight.w600,fontSize: 12),),
      ],
    );
  }
}
