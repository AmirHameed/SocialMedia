import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:social_media/utility/widget/gradient_button.dart';

import 'image.dart';

class SearchBodyWidget extends StatelessWidget {
  const SearchBodyWidget({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Column(
          children: [
            Text(
              '3.2',
              style: TextStyle(fontSize: 12),
            ),
            ImageWidget(),
          ],
        ),
        Text(
          '12 Min',
          style: TextStyle(fontSize: 8, color: Colors.grey),
        ),
        Text(
          'Parveen M',
          style: TextStyle(fontSize: 12),
        ),
        Container(
          padding: const EdgeInsets.all(5),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12.0),
            gradient: LinearGradient(
              colors: [Colors.lightBlue, Colors.purple, Colors.lightBlue],
              begin: Alignment.bottomLeft,
              end: Alignment.bottomRight,
            ),
          ),
          child: InkWell(
            child: Text(
              'Lets Vibe',
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 10,
                  fontWeight: FontWeight.bold),
            ),
            onTap: () {},
          ),
        ),
        Text(
          'ParveenMdd fdfdf',
          style: TextStyle(fontSize: 12, color: Colors.grey),
        ),
      ],
    );
  }
}
