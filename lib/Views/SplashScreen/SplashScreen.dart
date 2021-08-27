import 'dart:async';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:scoialmedia/Views/BottomNavigationBar/BottomNavigationBar.dart';
import 'package:scoialmedia/Views/SignInScreen/SignIn.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key key}) : super(key: key);

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  void initState() {
    super.initState();
    Timer(Duration(seconds: 3), () {
      // Get.off(Home());
      Get.off(SignIn());
    });
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Stack(
        children: [
          Container(
            height: size.height,
            width: size.width,
            color: Colors.white,
          ),
          Container(
            height: size.height * 0.70,
            width: size.width,
            decoration: BoxDecoration(
                color: Colors.purple[700],
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(60),
                    bottomRight: Radius.circular(60))),
          ),
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  height: 100,
                  width: 100,
                  child: Image.asset('assets/Icons/social-media.png'),
                ),
                SizedBox(
                  height: 60,
                ),
                CircularProgressIndicator(
                    valueColor: AlwaysStoppedAnimation<Color>(Colors.white)),
                SizedBox(
                  height: 50,
                ),
                Text(
                  'Social app'.toUpperCase(),
                  style: TextStyle(
                      fontSize: 50,
                      fontWeight: FontWeight.w700,
                      color: Colors.white),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
