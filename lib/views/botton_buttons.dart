import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:get/get.dart';
import 'package:social_media/utility/constants.dart';

import 'auth/login_screen.dart';

class BottomButtons extends StatelessWidget {
  final int currentIndex;
  final int dataLength;
  final PageController controller;

  const BottomButtons(
      {Key key, this.currentIndex, this.dataLength, this.controller})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.end,
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: currentIndex == dataLength - 1
          ? [
              Expanded(
                child: ConstrainedBox(
                    constraints: new BoxConstraints(
                      maxHeight: 70.0,
                    ),
                    child: FlatButton(
                        onPressed: () {
                          Get.to(LoginScreen(),
                              transition: Transition.noTransition);
                        },
                        color: Colors.transparent,
                        height: MediaQuery.of(context).size.height * 0.1,
                        materialTapTargetSize:
                            MaterialTapTargetSize.shrinkWrap, // add this
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(100),
                            side: BorderSide.none),
                        child: Container(
                            child: Align(
                          alignment: Alignment.bottomRight,
                          child: Text(
                            "Done",
                            style: Theme.of(context).textTheme.button,
                          ),
                        )))),
              )
            ]
          : [
              Neumorphic(
                style: NeumorphicStyle(
                    shape: NeumorphicShape.concave,
                    boxShape:
                        NeumorphicBoxShape.roundRect(BorderRadius.circular(48)),
                    depth: 12,
                    // lightSource: LightSource.topLeft,
                    color: Color(0xFFFFFFFF)),
                child: NeumorphicButton(
                  onPressed: () {
                    controller.previousPage(
                        duration: Duration(milliseconds: 200),
                        curve: Curves.easeInOut);
                  },
                  style: NeumorphicStyle(
                    color: Color(0xFFFFFFFF),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(
                        left: 15, right: 15, top: 1, bottom: 1),
                    child: Text(
                      'Previous',
                      style: TextStyle(
                          color: Colors.grey,
                          fontSize: 12,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
              ),
              //   Container(
              //     height : 40,
              //     width : 80,
              //     decoration: BoxDecoration(
              //       color : Colors.grey[400],
              //       borderRadius: BorderRadius.circular(36),
              //     ),
              //      child: Center(
              //        child: Text(
              //   "Previous",
              //   style: Theme.of(context).textTheme.subtitle2,
              // ),
              //      ),
              //   ),
              // FlatButton(
              //   minWidth: 0.0,
              //   onPressed: () {
              //     controller.previousPage(
              //         duration: Duration(milliseconds: 200),
              //         curve: Curves.easeInOut);
              //   },
              //   child: Text(
              //     "Previous",
              //     style: Theme.of(context).textTheme.bodyText2,
              //   ),
              // ),
              // Row(
              //   children: [
              //     FlatButton(
              //       padding: EdgeInsets.zero,
              //       minWidth: 0.0,
              //       onPressed: () {
              //         controller.nextPage(
              //             duration: Duration(milliseconds: 200),
              //             curve: Curves.easeInOut);
              //       },
              //       child: Text(
              //         "Next",
              //         style: Theme.of(context).textTheme.bodyText1,
              //       ),
              //     ),
              //     Container(
              //         alignment: Alignment.center,
              //         child: Icon(
              //           Icons.arrow_right_alt,
              //           color: Colors.white,
              //         ))
              //   ],
              // )

              Neumorphic(
                style: NeumorphicStyle(
                    shape: NeumorphicShape.concave,
                    border: NeumorphicBorder(color: Colors.pinkAccent),
                    boxShape:
                        NeumorphicBoxShape.roundRect(BorderRadius.circular(48)),
                    depth: 12,
                    // lightSource: LightSource.topLeft,
                    color: Color(0xFFFFFFFF)),
                child: NeumorphicButton(
                  onPressed: () {
                    controller.nextPage(
                        duration: Duration(milliseconds: 200),
                        curve: Curves.easeInOut);
                  },
                  style: NeumorphicStyle(
                    color: Color(0xFFFFFFFF),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(
                        left: 15, right: 15, top: 1, bottom: 1),
                    child: Text(
                      '   Next  ',
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 12,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
              ),
            ],
    );
  }
}
