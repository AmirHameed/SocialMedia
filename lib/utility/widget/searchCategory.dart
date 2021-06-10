import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:social_media/views/newScreens/search_sacreen41.dart';

class SearchCategory extends StatelessWidget {
  const SearchCategory({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          MainHomeCategoryWidget(
            onTap: () {},
            image: 'assets/images/people.png',
          ),
          MainHomeCategoryWidget(
            onTap: () {
              Get.offNamed('/connectScreen');
            },
            image: 'assets/images/content.png',
          ),
          MainHomeCategoryWidget(
            onTap: () {
              Get.offNamed('/communityScreen');
            },
            image: 'assets/images/comm.png',
          ),
          MainHomeCategoryWidget(
            onTap: () {
              Get.offNamed('/productScreeen');
            },
            image: 'assets/images/Group 563.png',
          ),
        ],
      ),
    );
  }
}
