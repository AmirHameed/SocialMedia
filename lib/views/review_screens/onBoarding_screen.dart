import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:introduction_screen/introduction_screen.dart';
import 'package:social_media/utility/constants.dart';
import 'package:social_media/views/auth/login_screen.dart';
import '../botton_buttons.dart';
import '../explaination.dart';

final List<ExplanationData> data = [

  ExplanationData(
      description:
      "Another beautiful body text for this example onboarding",
      title: "Members Only",
      localImageSrc: "assets/images/onboarding1.png",
      backgroundColor: primaryWhite
  ),
  ExplanationData(
      description:
      "Another beautiful body text for this example onboarding",
      title: "Members Only",
      localImageSrc: "assets/images/onboarding2.png",
      backgroundColor: primaryWhite
  ),
  ExplanationData(
      description:
      "Another beautiful body text for this example onboarding",
      title: "Members Only",
      localImageSrc: "assets/images/onboarding3.png",
      backgroundColor: primaryWhite
  ),
  ExplanationData(
      description:
      "Another beautiful body text for this example onboarding",
      title: "Members Only",
      localImageSrc: "assets/images/onboarding2.png",
      backgroundColor: primaryWhite
  ),
  ExplanationData(
      description:
      "Another beautiful body text for this example onboarding",
      title: "Members Only",
      localImageSrc: "assets/images/onboarding3.png",
      backgroundColor: primaryWhite
  ),
];
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
      onSkip: (){

      }, // You can override onSkip callback
      showSkipButton: true,
      skipFlex: 0,
      nextFlex: 0,
      skip:  Expanded(child: Image.asset('assets/images/skip.png',width: width/4)),
      next: Expanded(child: Image.asset('assets/images/next.png',width: width/4)),
      // showNextButton: true,
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

class OnBoardPage extends StatefulWidget {
  @override
  _OnBoardPageState createState() => _OnBoardPageState();
}

class _OnBoardPageState extends State<OnBoardPage> {
  final _controller = PageController();

  int _currentIndex = 0;

  // OpenPainter _painter = OpenPainter(3, 1);

  @override
  Widget build(BuildContext context) {
    return Container(
        color: data[_currentIndex].backgroundColor,
        child: SafeArea(
            child: Container(
              padding: EdgeInsets.all(16),
              color: data[_currentIndex].backgroundColor,
              alignment: Alignment.center,
              child: Column(children: [
                Expanded(
                  child: Column(
                    children: [
                      Expanded(
                          child: Container(
                              alignment: Alignment.center,
                              child: PageView(
                                  scrollDirection: Axis.horizontal,
                                  controller: _controller,
                                  onPageChanged: (value) {
                                    // _painter.changeIndex(value);
                                    setState(() {
                                      _currentIndex = value;
                                    });
                                    // notifyListeners();
                                  },
                                  children: data
                                      .map((e) => ExplanationPage(data: e))
                                      .toList())),
                          flex: 4),
                      Expanded(
                          flex: 1,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                  margin: const EdgeInsets.symmetric(vertical: 24),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: List.generate(data.length,
                                            (index) => createCircle(index: index)),
                                  )),
                              BottomButtons(
                                currentIndex: _currentIndex,
                                dataLength: data.length,
                                controller: _controller,
                              )
                            ],
                          ))
                    ],
                  ),
                )
              ]),
            )));
  }

  createCircle({int index}) {
    return AnimatedContainer(
        duration: Duration(milliseconds: 100),
        margin: EdgeInsets.only(right: 4),
        height: 5,
        width: _currentIndex == index ? 15 : 5,
        decoration: BoxDecoration(
            color: Colors.black, borderRadius: BorderRadius.circular(8)));
  }
}
