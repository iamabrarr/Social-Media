import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class SignUpController extends GetxController {
  GlobalKey<FormState> formKey = GlobalKey<FormState>();
  TextEditingController username = TextEditingController();
  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();
  TextEditingController confirmPassword = TextEditingController();
  String validateUsername(String value) {
    if (!GetUtils.isUsername(value)) {
      return "Enter Valid username";
    }
    if (value == null) {
      return "Please Enter Username";
    } else {
      return null;
    }
  }

  String validateEmail(String value) {
    if (!GetUtils.isEmail(value)) {
      return "Enter Valid Email";
    }
    if (value == null) {
      return "Please Enter Email Address";
    } else {
      return null;
    }
  }

  String validatePassword(String value) {
    if (value == null) {
      return "Please Enter Password";
    }
    if (value.length <= 4) {
      return "Password must be of atleast 6 characters";
    } else {
      return null;
    }
  }

  String validateConfirmPassword(String value) {
    if (value == null) {
      return "Please re-enter Password";
    }
    // if (validatePassword(value) != value) {
    //   return "Password not matched";
    // }
    else {
      return null;
    }
  }

  void onSignUp() {
    final isvalid = formKey.currentState.validate();
    if (!isvalid) {
      return Get.snackbar("Something went wrong", "Please fill all the blanks",
          barBlur: 1000);
    } else {
      Get.defaultDialog(
          title: "Account Created",
          middleText: "Now Go to the Sign In page to Sign In");
    }
  }
}
