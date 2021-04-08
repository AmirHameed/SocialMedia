import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ChatScreenActive extends StatelessWidget {
  String text,title,subTitle,date,image,count;
  Function onTap;
  ChatScreenActive({this.image,this.text,this.title,this.count,this.date,this.subTitle,this.onTap});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Card(
        elevation: 7,
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(36.0)
        ),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 10),
                child: Text(text,style: TextStyle(fontWeight: FontWeight.bold,fontSize: 12),),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      CircleAvatar(
                        child: Image.asset(image,),
                        radius: 20,
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
                        Text(date,style: TextStyle(color: Colors.grey,fontSize: 12),),
                        Padding(
                          padding: const EdgeInsets.only(top: 5),
                          child: CircleAvatar(
                              radius: 8,
                              backgroundColor: Colors.black,
                              child: Text(count,style: TextStyle(color: Colors.white,fontSize: 12),)),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
