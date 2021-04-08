import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ChatScreenWidget extends StatelessWidget {
  String text,title,subTitle,date,image;
  Color color;
  IconData icon;
  Function onTap;
  ChatScreenWidget({this.image,this.text,this.title,this.color,this.date,this.subTitle,this.icon,this.onTap});
  // assets/images/main_home_image.png
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 10),
            child: Text(text),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  CircleAvatar(
                    child: Image.asset(image,),
                    radius: 25,
                    backgroundColor: Colors.grey[200],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(title,style: TextStyle(fontWeight: FontWeight.bold),),
                      Text(subTitle,style: TextStyle(color: Colors.grey),),
                    ],
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(right: 10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(date,style: TextStyle(color: Colors.grey),),
                    Icon(icon,color:color),
                  ],
                ),
              ),
            ],
          ),
          Divider(),
        ],
      ),
    );
  }
}
