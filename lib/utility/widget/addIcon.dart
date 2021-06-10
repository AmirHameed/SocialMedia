import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';

class AddIcon extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return   InkWell(
      child: Neumorphic(
        style: NeumorphicStyle(
          color: Color(0xFFFFFFFF),
          boxShape: NeumorphicBoxShape.circle(),
        ),
        padding: const EdgeInsets.all(10.0),
        child: Text("+",style: TextStyle(color: Colors.black54),),
      ),
      onTap: (){},
    );
  }
}
class CrossIcon extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return   InkWell(
      child: Neumorphic(
        style: NeumorphicStyle(
          color: Color(0xFFFFFFFF),
          boxShape: NeumorphicBoxShape.circle(),
        ),
        padding: const EdgeInsets.all(10.0),
        child: Text("x",style: TextStyle(color: Colors.black54,fontWeight: FontWeight.bold),),
      ),
      onTap: (){},
    );
  }
}
class TickIcon extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return   InkWell(
      child: Neumorphic(
        style: NeumorphicStyle(
          color: Color(0xFFFFFFFF),
          boxShape: NeumorphicBoxShape.circle(),
        ),
        padding: const EdgeInsets.all(8.0),
        child: Icon(Icons.check,size: 15,),
      ),
      onTap: (){},
    );
  }
}
class EditIcon extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return   InkWell(
      child: Neumorphic(
        style: NeumorphicStyle(
          color: Color(0xFFFFFFFF),
          boxShape: NeumorphicBoxShape.circle(),
        ),
        padding: const EdgeInsets.all(8.0),
        child: Icon(Icons.edit,size: 15,),
      ),
      onTap: (){},
    );
  }
}