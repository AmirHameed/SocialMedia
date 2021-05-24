import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:get/get.dart';
import 'package:social_media/utility/routes.dart';
import 'package:social_media/views/homeView.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
        textTheme: TextTheme(
          headline1: TextStyle(
              fontSize: 28.0, fontWeight: FontWeight.w700),
          bodyText1: TextStyle(
              fontSize: 18.0, color: Colors.black, fontWeight: FontWeight.w300),
          bodyText2: TextStyle(
              fontSize: 19.0),
          subtitle2: TextStyle(
              fontSize: 12.0),
          button: TextStyle(
              fontSize: 15, color: Colors.black87, fontWeight: FontWeight.w700),
        ),
        // This makes the visual density adapt to the platform that you run
        // the app on. For desktop platforms, the controls will be smaller and
        // closer together (more dense) than on mobile platforms.
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      debugShowCheckedModeBanner: false,
      title: 'Social Media',
      getPages: Routers.route,
      initialRoute: '/splash_screen',
    );
  }
}
