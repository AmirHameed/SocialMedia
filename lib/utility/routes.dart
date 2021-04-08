import 'package:get/get.dart';
import 'package:social_media/views/article.dart';
import 'package:social_media/views/auth/login_screen.dart';
import 'package:social_media/views/gallery_screen.dart';
import 'package:social_media/views/homeView.dart';
import 'package:social_media/views/initiative/cause.dart';
import 'package:social_media/views/initiative/event.dart';
import 'package:social_media/views/job.dart';
import 'package:social_media/views/liveImage.dart';
import 'package:social_media/views/main_home.dart';
import 'package:social_media/views/messages.dart';
import 'package:social_media/views/newScreens/community_sacreen64.dart';
import 'package:social_media/views/newScreens/connect_sacreen54.dart';
import 'package:social_media/views/newScreens/group_messahe31.dart';
import 'package:social_media/views/newScreens/new_groups27.dart';
import 'package:social_media/views/newScreens/search_sacreen41.dart';
import 'package:social_media/views/new_group_screen.dart';
import 'package:social_media/views/next_screen.dart';
import 'package:social_media/views/notificationsMessages.dart';
import 'package:social_media/views/poll.dart';
import 'package:social_media/views/post_screen.dart';
import 'package:social_media/views/readingPost.dart';
import 'package:social_media/views/review_screens/group.dart';
import 'package:social_media/views/review_screens/onBoarding_screen.dart';
import 'package:social_media/views/review_screens/product_screen.dart';
import 'package:social_media/views/review_screens/service_review_screen.dart';
import 'package:social_media/views/review_screens/videos_screen.dart';
import 'package:social_media/views/seeMore.dart';
import 'package:social_media/views/sell_screen.dart';
import 'package:social_media/views/service_screen.dart';
import 'package:social_media/views/share_screen.dart';
import 'package:social_media/views/splash_screen.dart';
import 'package:social_media/views/text_screen.dart';
import 'package:social_media/views/truth.dart';

class Routers {
  static final route = [
    GetPage(
      name: '/homeView',
      page: () => Home(),
    ),
     GetPage(
      name: '/newGroup27',
      page: () => NewGroup(),
    ),
    GetPage(
      name: '/notificationsMessages',
      page: () => NotificationsMessages(),
    ),
    GetPage(
      name: '/post_screen',
      page: () => PostScreen(),
    ),
    GetPage(
      name: '/login_screen',
      page: () => LoginScreen(),
    ),
    GetPage(
      name: '/gallery_screen',
      page: () => GalleryScreen(),
    ),
    GetPage(
      name: '/videos_screen',
      page: () => VideoScreen(),
    ),
    GetPage(
      name: '/next_screen',
      page: () => NextScreen(),
    ),
    GetPage(
      name: '/job',
      page: () => JobScreen(),
    ),
    GetPage(
      name: '/share_screen',
      page: () => ShareScreen(),
    ),
    GetPage(
      name: '/new_group_screen',
      page: () => AddGroupScreen(),
    ),
    GetPage(
      name: '/poll',
      page: () => PollScreen(),
    ),
    //
    GetPage(
      name: '/cause',
      page: () => CauseScreen(),
    ),
    GetPage(
      name: '/event',
      page: () => EventScreen(),
    ),
    //
    GetPage(
      name: '/service_review_screen',
      page: () => ServiceReviewScreen(),
    ),
     GetPage(
      name: '/searchScreen',
      page: () => SearchScreen(),
    ),

    GetPage(
      name: '/connectScreen',
      page: () => ConnectScreen(),
    ),
    GetPage(
      name: '/communityScreen',
      page: () => CommunityScreen(),
    ),
    GetPage(
      name: '/productScreen',
      page: () => ProductScreen(),
    ),
    GetPage(
      name: '/group',
      page: () => GroupScreen(),
    ),
     GetPage(
      name: '/groupMessage',
      page: () => GroupMessages(),
    ),
    GetPage(
      name: '/truth',
      page: () => TruthScreen(),
    ),
    GetPage(
      name: '/product_screen',
      page: () => ProductScreen(),
    ),
    GetPage(
      name: '/service_screen',
      page: () => ServiceScreen(),
    ),
    GetPage(
      name: '/onBoarding_screen',
      page: () => OnBoardingPage(),
    ),
    GetPage(
      name: '/sell_screen',
      page: () => SellScreen(),
    ),
    GetPage(
      name: '/splash_screen',
      page: () => SplashScreen(),
    ),
    //// hr@intellisoftsolutions.com
    GetPage(
      name: '/text_screen',
      page: () => QuestionScreen(),
    ),
    GetPage(
      name: '/article',
      page: () => Article(),
    ),
    GetPage(
      name: '/main_home',
      page: () => MainHomeScreen(),
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