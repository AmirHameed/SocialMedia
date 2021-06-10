import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_xlider/flutter_xlider.dart';

// ignore: must_be_immutable
class FSlider extends StatelessWidget{
  double _lowerValue = 50;
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return    Row(
      children: [
        Expanded(
          flex: 1,
          child: Text(
            'Sexy',
            style: TextStyle(
                color: Colors.black,
                fontSize: 14,
                fontWeight: FontWeight.w500),
            textAlign: TextAlign.center,
          ),
        ),
        Expanded(
          flex: 5,
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
                ],
                ),
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
            handlerWidth: 100,
            handler: FlutterSliderHandler(
              // decoration: BoxDecoration(),
              decoration: BoxDecoration(
                color: Colors.transparent
              ),
              child: Row(
                children: [
                  Image.asset('assets/images/leftBrackets.png',height: 20,color: Colors.grey,),
                  Image.asset(
                      'assets/images/NoPath - Copy (28).png',height: 23,),
                  Image.asset('assets/images/rightBrackets.png',height: 20,color: Colors.grey,),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }

}