import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:flutter_xlider/flutter_xlider.dart';
import 'package:get/get.dart';
import 'package:social_media/controllers/videoController.dart';
import 'package:video_player/video_player.dart';

class LiveImage extends StatelessWidget {
  final VideoController videoController = Get.put(VideoController());
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      // backgroundColor: NeumorphicTheme.baseColor(context),
      body: SafeArea(
        child: Stack(
          children: <Widget>[
            // TODO 7: Add a SizedBox to contain our video.
            SizedBox.expand(
              child: FutureBuilder(
                future: videoController.initializeVideoPlayerFuture,
                builder: (context, snapshot) {
                  if (snapshot.connectionState == ConnectionState.done) {
                    // If the VideoPlayerController has finished initialization, use
                    // the data it provides to limit the aspect ratio of the VideoPlayer.
                    return AspectRatio(
                      aspectRatio: videoController.controller.value.aspectRatio,
                      // Use the VideoPlayer widget to display the video.
                      child: VideoPlayer(videoController.controller),
                    );
                  } else {
                    // If the VideoPlayerController is still initializing, show a
                    // loading spinner.
                    return Center(child: CircularProgressIndicator());
                  }
                },
              ),
            ),
            LoginWidget()
          ],
        ),
      ),
      floatingActionButton: Center(
        child: FloatingActionButton(
          onPressed: () {
            if (videoController.controller.value.isPlaying) {
              videoController.controller.pause();
            } else {
              videoController.controller.play();
            }
          },
          backgroundColor: Colors.grey[300],
          // Display the correct icon depending on the state of the player.
          child: Icon(
            videoController.controller.value.isPlaying
                ? Icons.pause
                : Icons.play_arrow,
            color: Colors.grey,
          ),
        ),
      ),
    );
  }
}

class LoginWidget extends StatelessWidget {
  double _lowerValue = 50;
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
          decoration: BoxDecoration(
            color: const Color(0xFFA1887F).withOpacity(0.5),
          ),
          child: Column(
            children: [
              Row(
                // crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(top: 3),
                            child: Text(
                              '3.2',
                              style: TextStyle(
                                  fontSize: 8,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white),
                            ),
                          ),
                          Row(
                            children: [
                              Image.asset(
                                'assets/images/right2.png',
                                height: 25,
                              ),
                              CircleAvatar(
                                radius: 20,
                                backgroundColor: Colors.transparent,
                                child: ClipOval(
                                  child: Image.asset(
                                    'assets/images/Ellipse 259.png',
                                    height: 60,
                                    width: 60,
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                              Image.asset(
                                'assets/images/Group 2139.png',
                                height: 15,
                              ),
                            ],
                          ),
                        ],
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Elon22> Tesla.Motors",
                            style: TextStyle(
                                fontSize: width / 20,
                                fontWeight: FontWeight.w700,
                                color: Colors.white),
                          ),
                          Text(
                            "12:59 am, Pakistan",
                            style: TextStyle(
                                fontSize: width / 25, color: Colors.white),
                          ),
                        ],
                      ),
                      SizedBox(
                        width: width * 0.17,
                      ),
                      Column(
                        children: [
                          Row(
                            children: [
                              Image.asset(
                                'assets/images/Group 1527.png',
                                height: 10,
                              ),
                              Container(
                                padding: const EdgeInsets.all(8),
                                child: Text(
                                  '3.2',
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white,
                                      fontSize: 12),
                                ),
                              ),
                              Image.asset(
                                'assets/images/Group 2139.png',
                                height: 10,
                              ),
                            ],
                          ),
                          Text(
                            ('246 Vibe'),
                            style: TextStyle(color: Colors.white, fontSize: 12),
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(left: 10),
                child: Row(
                  children: [
                    Expanded(
                        flex: 5,
                        child: Text(
                          'Good work guys! I remember the t...',
                          style: TextStyle(
                            fontSize: 18,
                            color: Colors.white,
                          ),
                          overflow: TextOverflow.ellipsis,
                          maxLines: 1,
                        )),
                    Expanded(
                      flex: 2,
                      child: InkWell(
                          onTap: () {
                            Get.toNamed('/seeMore');
                          },
                          child: Text(
                            'see more',
                            style: TextStyle(
                                fontSize: 18,
                                color: Colors.white,
                                fontWeight: FontWeight.w700),
                          )),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        Container(
          decoration: BoxDecoration(
            color: const Color(0xFFA1887F).withOpacity(0.5),
            //Colors.brown
          ),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 10, bottom: 5),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Image.asset(
                          'assets/images/Group 1527.png',
                          height: 15,
                        ),
                        Neumorphic(
                          padding:
                              EdgeInsets.symmetric(horizontal: 12, vertical: 6),
                          style: NeumorphicStyle(
                            shape: NeumorphicShape.convex,
                            boxShape: NeumorphicBoxShape.roundRect(
                                BorderRadius.circular(50)),
                            depth: 0,
                            lightSource: LightSource.topLeft,
                            color: Colors.grey[500],
                          ),
                          child: Column(
                            children: [
                              Icon(
                                Icons.wifi_protected_setup_outlined,
                                size: 15,
                                color: Colors.white60,
                              ),
                              Text(
                                '156',
                                style: TextStyle(
                                    fontSize: 8, color: Colors.white60),
                              ),
                            ],
                          ),
                        ),
                        Image.asset(
                          'assets/images/Group 2139.png',
                          height: 15,
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Image.asset(
                          'assets/images/Group 1527.png',
                          height: 15,
                        ),
                        Neumorphic(
                          padding:
                              EdgeInsets.symmetric(horizontal: 12, vertical: 6),
                          style: NeumorphicStyle(
                            shape: NeumorphicShape.convex,
                            boxShape: NeumorphicBoxShape.roundRect(
                                BorderRadius.circular(50)),
                            depth: 0,
                            lightSource: LightSource.topLeft,
                            color: Colors.grey[500],
                          ),
                          child: Column(
                            children: [
                              Icon(
                                Icons.remove_red_eye,
                                size: 15,
                                color: Colors.white60,
                              ),
                              Text(
                                '156',
                                style: TextStyle(
                                    fontSize: 8, color: Colors.white60),
                              ),
                            ],
                          ),
                        ),
                        Image.asset(
                          'assets/images/Group 2139.png',
                          height: 15,
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Image.asset(
                          'assets/images/Group 1527.png',
                          height: 15,
                        ),
                        Neumorphic(
                          padding:
                              EdgeInsets.symmetric(horizontal: 12, vertical: 6),
                          style: NeumorphicStyle(
                            shape: NeumorphicShape.convex,
                            boxShape: NeumorphicBoxShape.roundRect(
                                BorderRadius.circular(50)),
                            depth: 0,
                            lightSource: LightSource.topLeft,
                            color: Colors.grey[500],
                          ),
                          child: Column(
                            children: [
                              Icon(Icons.chat_bubble_outlined,
                                  size: 15, color: Colors.white60),
                              Text(
                                '156',
                                style: TextStyle(
                                    fontSize: 8, color: Colors.white60),
                              ),
                            ],
                          ),
                        ),
                        Image.asset(
                          'assets/images/Group 2139.png',
                          height: 15,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 15,top: 10),
                child: Row(
                  children: [
                    Icon(
                      Icons.multitrack_audio_sharp,color: Colors.grey,
                    ),
                    Text("Baby don't hurt me",style: TextStyle(color: Colors.grey,fontSize: 12),)
                  ],
                ),
              ),
              InkWell(
                child: Row(
                  children: [
                    Expanded(
                      flex: 2,
                      child: Text(
                        'View All Vibes',
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 14,
                            fontWeight: FontWeight.w500),
                        textAlign: TextAlign.center,
                      ),
                    ),
                    Expanded(
                      flex: 4,
                      child: FlutterSlider(
                        jump: true,
                        handlerHeight: 32.0,
                        trackBar: FlutterSliderTrackBar(
                          activeTrackBar: BoxDecoration(
                            gradient: SweepGradient(colors: [
                              Colors.pink,
                              Colors.blue,
                              Colors.green,
                              Colors.yellow,
                              Colors.purple
                            ], stops: [
                              0.8,
                              0.96,
                              0.74,
                              0.22,
                              0.85
                            ], startAngle: 0.5, endAngle: 1),
                          ),
                          inactiveTrackBar: BoxDecoration(
                            gradient: SweepGradient(colors: [
                              Colors.pink,
                              Colors.blue,
                              Colors.green,
                              Colors.yellow,
                              Colors.purple
                            ], stops: [
                              0.8,
                              0.96,
                              0.74,
                              0.22,
                              0.85
                            ], startAngle: 0.5, endAngle: 1),
                          ),
                        ),
                        values: [10],
                        fixedValues: [
                          FlutterSliderFixedValue(percent: 0, value: "0"),
                          FlutterSliderFixedValue(percent: 10, value: "1.0"),
                          FlutterSliderFixedValue(percent: 20, value: "1.5"),
                          FlutterSliderFixedValue(percent: 30, value: "2.0"),
                          FlutterSliderFixedValue(percent: 40, value: "2.5"),
                          FlutterSliderFixedValue(percent: 50, value: "3.0"),
                          FlutterSliderFixedValue(percent: 60, value: "3.5"),
                          FlutterSliderFixedValue(percent: 70, value: "4.0"),
                          FlutterSliderFixedValue(percent: 80, value: "4.5"),
                          FlutterSliderFixedValue(percent: 90, value: "4.8"),
                          FlutterSliderFixedValue(percent: 100, value: "5.0"),
                        ],
                        onDragging: (handlerIndex, lowerValue, upperValue) {
                          _lowerValue = lowerValue;
                        },
                        handler: FlutterSliderHandler(
                          // decoration: BoxDecoration(),

                          child: Row(
                            children: [
                              // Image.asset('assets/images/leftBrackets.png'),
                              Image.asset(
                                  'assets/images/NoPath - Copy (28).png'),
                              // Image.asset('assets/images/rightBrackets.png'),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                onTap: () {
                  Get.toNamed('/readingPost');
                },
              ),
              Row(children: [
                Expanded(
                  flex: 2,
                  child: Container(
                    margin: EdgeInsets.symmetric(vertical: 6, horizontal: 2),
                    color: Colors.transparent,
                    width: width / 4,
                    height: height / 20.5,
                    child: Neumorphic(
                      padding: EdgeInsets.only(right: 6),
                      margin: EdgeInsets.symmetric(horizontal: 2),
                      style: NeumorphicStyle(
                          shape: NeumorphicShape.concave,
                          depth: 0,
                          boxShape: NeumorphicBoxShape.roundRect(
                              BorderRadius.circular(24)),
                          lightSource: LightSource.topLeft,
                          color: Colors.grey[500]),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          CircleAvatar(
                            radius: 21,
                            backgroundColor: Colors.grey[500],
                            child: ClipOval(
                                child: Icon(
                              Icons.add,
                              color: Colors.white,
                            )),
                          ),
                          Text(
                            'Custom',
                            style: TextStyle(
                                color: Colors.white60,
                                fontSize: 14,
                                fontWeight: FontWeight.w500),
                            textAlign: TextAlign.center,
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Expanded(
                  flex: 5,
                  child: SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: List.generate(6, (index) {
                        return Container(
                          margin:
                              EdgeInsets.symmetric(vertical: 6, horizontal: 2),
                          color: Colors.transparent,
                          width: width / 4,
                          height: height / 20.5,
                          child: Neumorphic(
                            padding: EdgeInsets.only(right: 6),
                            margin: EdgeInsets.symmetric(horizontal: 2),
                            style: NeumorphicStyle(
                                shape: NeumorphicShape.concave,
                                depth: 0,
                                boxShape: NeumorphicBoxShape.roundRect(
                                    BorderRadius.circular(24)),
                                lightSource: LightSource.topLeft,
                                color: Colors.grey[500]),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                CircleAvatar(
                                  radius: 21,
                                  backgroundColor: Colors.transparent,
                                  child: ClipOval(
                                      child: Image.asset(
                                    'assets/images/Ellipse -2.png',
                                    width: 40,
                                    height: 45,
                                    fit: BoxFit.cover,
                                  )),
                                ),
                                Text(
                                  'Sexy',
                                  style: TextStyle(
                                      color: Colors.white60,
                                      fontSize: 14,
                                      fontWeight: FontWeight.w500),
                                  textAlign: TextAlign.center,
                                ),
                              ],
                            ),
                          ),
                        );
                      }),
                    ),
                  ),
                ),
              ]),
            ],
          ),
        ),
      ],
    );
  }
}
