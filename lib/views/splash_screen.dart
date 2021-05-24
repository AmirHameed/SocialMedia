import 'package:flutter/material.dart';
import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:social_media/views/review_screens/onBoarding_screen.dart';

class SplashScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return AnimatedSplashScreen(
      splash: 'assets/images/splash.png',
      splashIconSize: 400,
      nextScreen: OnBoardPage(),
      duration: 0,
      splashTransition: SplashTransition.scaleTransition,
      animationDuration: Duration(milliseconds: 800),
    );
  }
}
