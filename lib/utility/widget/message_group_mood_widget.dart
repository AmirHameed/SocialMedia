import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MessageGroupMood extends StatelessWidget {
 String text,image;
 Function onTap;
 MessageGroupMood({this.text,this.onTap,this.image});

  @override
  Widget build(BuildContext context) {
    return RaisedButton(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(18.0),
      ),
      color: Colors.white,
      child: Row(
        children: [
          Image.asset(image,height: 30,),
          Text(text,style: TextStyle(color: Colors.grey[400]),),
        ],
      ),
      onPressed: onTap,
    );
  }
}
