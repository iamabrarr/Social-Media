import 'package:flutter/material.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:scoialmedia/Views/SplashScreen/SplashScreen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home: SplashScreen(),
    );
  }
}
