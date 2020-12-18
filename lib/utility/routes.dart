import 'package:get/get.dart';
import 'package:social_media/views/homeView.dart';
import 'package:social_media/views/liveImage.dart';
import 'package:social_media/views/messages.dart';
import 'package:social_media/views/notificationsMessages.dart';
import 'package:social_media/views/readingPost.dart';
import 'package:social_media/views/seeMore.dart';

class Routers {
  static final route = [
    GetPage(
      name: '/homeView',
      page: () => Home(),
    ),
    GetPage(
      name: '/notificationsMessages',
      page: () => NotificationsMessages(),
    ),
    GetPage(
      name: '/liveImage',
      page: () => LiveImage(),
    ),
    GetPage(
      name: '/messages',
      page: () => Messages(),
    ),
    GetPage(
      name: '/seeMore',
      page: () => SeeMore(),
    ),
    GetPage(
      name: '/readingPost',
      page: () => ReadingView(),
    ),
  ];
}