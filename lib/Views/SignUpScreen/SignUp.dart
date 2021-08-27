import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:scoialmedia/Controllers/SignUpController.dart';
import 'package:scoialmedia/Views/BottomNavigationBar/BottomNavigationBar.dart';

class SignUp extends StatefulWidget {
  const SignUp({Key key}) : super(key: key);
  @override
  _SignUpState createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  bool shows = false;
  @override
  Widget build(BuildContext context) {
    final validateController = Get.put(SignUpController());
    Size size = MediaQuery.of(context).size;
    return SizedBox(
      height: size.height,
      child: SafeArea(
        child: Scaffold(
            body: SingleChildScrollView(
          child: Stack(children: [
            Container(
              height: size.height,
              width: size.width,
              decoration: BoxDecoration(
                color: Colors.purple[700],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: EdgeInsets.only(top: size.height * 0.02),
                  child: Container(
                    height: 100,
                    width: 100,
                    child: Image.asset('assets/Icons/social-media.png'),
                  ),
                ),
              ],
            ),
            Positioned(
                bottom: 0,
                child: Container(
                    height: size.height * 0.80,
                    width: size.width,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(30),
                            topRight: Radius.circular(30))),
                    child: Form(
                      key: validateController.formKey,
                      child: Column(
                        children: [
                          SizedBox(height: 40),
                          Text(
                            'Sign Up',
                            style: TextStyle(
                                fontSize: 20,
                                color: Colors.black,
                                fontWeight: FontWeight.w500),
                          ),
                          SizedBox(height: 40),
                          Container(
                              width: 300,
                              child: Text(
                                'Username',
                                style: TextStyle(color: Colors.grey[700]),
                              )),
                          Container(
                            width: 300,
                            height: 60,
                            child: TextFormField(
                              controller: validateController.username,
                              onChanged: (value) {},
                              decoration: InputDecoration(
                                  suffixIcon: Icon(
                                Icons.person_outline,
                                color: Colors.purple[700],
                              )),
                              validator: (String value) {
                                return validateController
                                    .validateUsername(value);
                              },
                            ),
                          ),
                          SizedBox(height: 20),
                          Container(
                              width: 300,
                              child: Text(
                                'Email Adrress',
                                style: TextStyle(color: Colors.grey[700]),
                              )),
                          Container(
                            width: 300,
                            height: 60,
                            child: TextFormField(
                              controller: validateController.email,
                              onChanged: (value) {},
                              decoration: InputDecoration(
                                  suffixIcon: Icon(
                                Icons.email_outlined,
                                color: Colors.purple[700],
                              )),
                              validator: (String value) {
                                return validateController.validateEmail(value);
                              },
                            ),
                          ),
                          SizedBox(height: 20),
                          Container(
                              width: 300,
                              child: Text(
                                'Password',
                                style: TextStyle(color: Colors.grey[700]),
                              )),
                          Container(
                            width: 300,
                            height: 60,
                            child: TextFormField(
                              controller: validateController.password,
                              obscureText: shows,
                              onChanged: (value) {},
                              decoration: InputDecoration(
                                  suffixIcon: IconButton(
                                icon: Icon(
                                  shows ? Icons.lock_open : Icons.lock_outline,
                                  color: Colors.purple[700],
                                ),
                                onPressed: () {
                                  setState(() {
                                    shows = !shows;
                                  });
                                },
                              )),
                              validator: (String value) {
                                return validateController
                                    .validatePassword(value);
                              },
                            ),
                          ),
                          SizedBox(height: 20),
                          Container(
                              width: 300,
                              child: Text(
                                'Confirm Password',
                                style: TextStyle(color: Colors.grey[700]),
                              )),
                          Container(
                            width: 300,
                            height: 60,
                            child: TextFormField(
                              controller: validateController.confirmPassword,
                              obscureText: shows,
                              onChanged: (value) {},
                              decoration: InputDecoration(
                                  suffixIcon: IconButton(
                                icon: Icon(
                                  shows ? Icons.lock_open : Icons.lock_outline,
                                  color: Colors.purple[700],
                                ),
                                onPressed: () {
                                  setState(() {
                                    shows = !shows;
                                  });
                                },
                              )),
                              validator: (String value) {
                                return validateController
                                    .validateConfirmPassword(value);
                              },
                            ),
                          ),
                          SizedBox(height: 30),
                          RawMaterialButton(
                              child: Container(
                                  height: 50,
                                  width: 200,
                                  decoration: BoxDecoration(
                                      color: Colors.purple[700],
                                      borderRadius: BorderRadius.circular(30),
                                      boxShadow: [
                                        BoxShadow(
                                          offset: Offset(0, 2),
                                          blurRadius: 15,
                                          color: Colors.purple[300],
                                        )
                                      ]),
                                  child: Padding(
                                    padding: EdgeInsets.only(
                                        top: size.height * 0.015),
                                    child: Text(
                                      'Sign up'.toUpperCase(),
                                      style: TextStyle(
                                          fontSize: 20,
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold),
                                      textAlign: TextAlign.center,
                                    ),
                                  )),
                              onPressed: () {
                                return validateController.onSignUp();
                              }),
                          Spacer(),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text("Already have an account?"),
                              GestureDetector(
                                  onTap: () {
                                    Navigator.pop(context);
                                  },
                                  child: Container(
                                    child: Text(
                                      'Sign In',
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ))
                            ],
                          ),
                          SizedBox(height: 40),
                        ],
                      ),
                    )))
          ]),
        )),
      ),
    );
  }
}
