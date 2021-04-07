import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:introduction_screen/introduction_screen.dart';
import 'package:social_media/utility/constants.dart';
import 'package:social_media/utility/widget/gradient_button.dart';
import 'package:social_media/views/auth/login_screen.dart';
import 'my_choice_screen.dart';

class OnBoardingPage extends StatelessWidget {

  final introKey = GlobalKey<IntroductionScreenState>();

  void _onIntroEnd(context) {
    Navigator.of(context).push(
      MaterialPageRoute(builder: (_) => LoginScreen()),
    );
  }

  Widget _buildImage(String assetName) {
    return Align(
      child: Image.asset(assetName, width: 350.0),
      alignment: Alignment.bottomCenter,
    );
  }

  @override
  Widget build(BuildContext context) {
    const bodyStyle = TextStyle(fontSize: 19.0);
    const pageDecoration = const PageDecoration(
      titleTextStyle: TextStyle(fontSize: 28.0, fontWeight: FontWeight.w700),
      bodyTextStyle: bodyStyle,
      descriptionPadding: EdgeInsets.fromLTRB(16.0, 0.0, 16.0, 16.0),
      pageColor: primaryWhite,
      imagePadding: EdgeInsets.zero,
    );

    return IntroductionScreen(
      key: introKey,
      pages: [
        PageViewModel(
          title: "Members Only",
          body: "Another beautiful body text for this example onboarding",

          image: _buildImage('assets/images/onboarding1.png'),
          decoration: pageDecoration,
        ),
        PageViewModel(
          title: "Members Only",
          body: "Another beautiful body text for this example onboarding",

          image: _buildImage('assets/images/onboarding2.png'),
          decoration: pageDecoration,
        ),
        PageViewModel(
          title: "Members Only",
          body: "Another beautiful body text for this example onboarding",

          image: _buildImage('assets/images/onboarding3.png'),
          decoration: pageDecoration,
        ),
        PageViewModel(
          title: "Members Only",
          body: "Another beautiful body text for this example onboarding",
          image: _buildImage('assets/images/onboarding2.png'),
          decoration: pageDecoration,
        ),
        PageViewModel(
          title: "Members Only",
          body: "Another beautiful body text for this example onboarding",
          image: _buildImage('assets/images/onboarding3.png'),
          decoration: pageDecoration,
        ),
      ],
      onDone: () => _onIntroEnd(context),
      //onSkip: () => _onIntroEnd(context), // You can override onSkip callback
      showSkipButton: true,
      skipFlex: 0,
      nextFlex: 0,
      skip:  Expanded(child: Image.asset('assets/images/skip.png',width: width/4)),
      next: Expanded(child: Image.asset('assets/images/next.png',width: width/4)),
      done: const Text('Done', style: TextStyle(fontWeight: FontWeight.w600)),
      dotsDecorator: const DotsDecorator(
        size: Size(3.0, 3.0),
        color: Color(0xFFBDBDBD),
        activeSize: Size(7.0, 8.0),
        activeShape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(25.0)),
        ),
      ),
    );
  }
}