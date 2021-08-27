import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:scoialmedia/Views/BottomNavigationBar/BottomNavigationBar.dart';

class SignInController extends GetxController {
  final GlobalKey<FormState> formkey = GlobalKey<FormState>();
  TextEditingController username = TextEditingController();
  TextEditingController password = TextEditingController();
  String _user = 'admin';
  String _pass = '12345';
  var shows = false.obs;
  void onClose() {
    username.dispose();
    password.dispose();
  }

  String validateUsername(String value) {
    if (!GetUtils.isUsername(value)) {
      return "Enter your username";
    }
    if (value == null) {
      return "Enter your username";
    }
    if (value != _user) {
      return "Incorrect username";
    } else {
      return null;
    }
  }

  // validateIcon() {
  //   shows = ! shows;
  // }

  String validatePassword(String value) {
    // if (value.length <= 6) {
    //   return "Password must be of 6 characters";
    // }
    if (value == null) {
      return "Please Enter Password";
    }
    if (value != _pass) {
      return "Incorrect Password";
    } else {
      return null;
    }
  }

  void onSignIn() {
    final isvalid = formkey.currentState.validate();
    if (!isvalid) {
      return;
    } else {
      Get.to(Home());
    }
    formkey.currentState.save();
  }
}
