import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:flutter_xlider/flutter_xlider.dart';


class ClassSlider extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        //
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  double _lowerValue = 50;
  double _upperValue = 180;
  var valueHolder = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Column(
        children: <Widget>[
          /*Fixed Values*/
          FlutterSlider(
            jump: true,
            handlerHeight: 32.0,
            trackBar: FlutterSliderTrackBar(
              activeTrackBar:  BoxDecoration(
                gradient: SweepGradient(
                    colors: [
                      Colors.pink,
                      Colors.blue,
                      Colors.green,
                      Colors.yellow,
                      Colors.purple
                    ],
                    stops: [0.8, 0.96, 0.74, 0.22, 0.85],
                    startAngle: 0.5,
                    endAngle: 1
                ),
              ),
              inactiveTrackBar:  BoxDecoration(
                gradient: SweepGradient(
                    colors: [
                      Colors.pink,
                      Colors.blue,
                      Colors.green,
                      Colors.yellow,
                      Colors.purple
                    ],
                    stops: [0.8, 0.96, 0.74, 0.22, 0.85],
                    startAngle: 0.5,
                    endAngle: 1
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
              setState(() {});
            },
            handler: FlutterSliderHandler(
              // decoration: BoxDecoration(),

              child: Row(
                children: [
                  // Image.asset('assets/images/leftBrackets.png'),
                  Image.asset('assets/images/NoPath - Copy (28).png'),
                  // Image.asset('assets/images/rightBrackets.png'),
                ],
              ),
            ),
          ),

        ],
      ),
    );
  }

}