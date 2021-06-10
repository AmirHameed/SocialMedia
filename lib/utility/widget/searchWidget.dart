import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';

class SearchWidget extends StatelessWidget {
  const SearchWidget({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 10, right: 20),
      child: Container(
        height: 30,
        child: Neumorphic(
          style: NeumorphicStyle(
              depth: -30,
              lightSource: LightSource.topLeft,
              shape: NeumorphicShape.flat,
              boxShape: NeumorphicBoxShape.roundRect(BorderRadius.circular(22)),
              color: Colors.white70),
          child: Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 10),
                child: Icon(
                  Icons.search,
                  color: Colors.grey[400],
                ),
              ),
              Expanded(
                child: TextField(
                  cursorColor: Colors.grey,
                  decoration: InputDecoration(
                      isDense: true,
                      hintText: "Search",
                      hintStyle: TextStyle(color: Colors.grey[500]),
                      border: InputBorder.none,
                      contentPadding: const EdgeInsets.symmetric(
                          horizontal: 10, vertical: 0)),
                  // controller: questionText,
                  // onSubmitted: messageController.handleSubmitted,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
