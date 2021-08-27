import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:scoialmedia/Controllers/SignInControllers.dart';
import 'package:scoialmedia/Views/SignUpScreen/SignUp.dart';

class SignIn extends StatefulWidget {
  const SignIn({Key key}) : super(key: key);
  @override
  _SignInState createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  bool shows = true;
  @override
  Widget build(BuildContext context) {
    final validateController = Get.put(SignInController());
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: SingleChildScrollView(
        child: Stack(
          children: [
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
                  padding: EdgeInsets.only(top: size.height * 0.07),
                  child: Container(
                    height: 120,
                    width: 120,
                    child: Image.asset('assets/Icons/social-media.png'),
                  ),
                ),
              ],
            ),
            Positioned(
                bottom: 0,
                child: Container(
                  height: size.height * 0.75,
                  width: size.width,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(30),
                        topRight: Radius.circular(30)),
                    color: Colors.white,
                  ),
                  child: Form(
                    key: validateController.formkey,
                    child: Column(
                      children: [
                        SizedBox(
                          height: 40,
                        ),
                        Text(
                          'Sign In',
                          style: TextStyle(
                              fontSize: 20,
                              color: Colors.black,
                              fontWeight: FontWeight.w500),
                        ),
                        SizedBox(height: 60),
                        Container(
                          width: 300,
                          child: Text(
                            'Username',
                            style: TextStyle(color: Colors.grey[600]),
                          ),
                        ),
                        Container(
                          width: 300,
                          height: 60,
                          child: TextFormField(
                            controller: validateController.username,
                            keyboardType: TextInputType.text,
                            decoration: InputDecoration(
                                suffixIcon: Icon(
                              Icons.person_outline,
                              color: Colors.purple[700],
                            )),
                            validator: (value) {
                              return validateController.validateUsername(value);
                            },
                          ),
                        ),
                        SizedBox(height: 40),
                        Container(
                          width: 300,
                          child: Text(
                            'Password',
                            style: TextStyle(color: Colors.grey[600]),
                          ),
                        ),
                        Container(
                          width: 300,
                          height: 60,
                          child: TextFormField(
                            controller: validateController.password,
                            keyboardType: TextInputType.text,
                            obscureText: shows,
                            decoration: InputDecoration(
                                suffixIcon: IconButton(
                              icon: Icon(
                                shows ? Icons.lock_outline : Icons.lock_open,
                                color: Colors.purple[700],
                              ),
                              onPressed: () {
                                setState(() {
                                  shows = !shows;
                                });
                              },
                            )),
                            validator: (value) {
                              return validateController.validatePassword(value);
                            },
                          ),
                        ),
                        SizedBox(height: 20),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Padding(
                              padding:
                                  EdgeInsets.only(right: size.width * 0.08),
                              child: GestureDetector(
                                  onTap: () {
                                    Get.defaultDialog(
                                      title: "Forget Password",
                                      textConfirm: "Confirm",
                                      textCancel: "Cancel",
                                      confirmTextColor: Colors.white,
                                    );
                                  },
                                  child: Text('Forget Password?',
                                      style: TextStyle(
                                        color: Colors.purple[700],
                                      ))),
                            ),
                          ],
                        ),
                        SizedBox(height: 80),
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
                                  padding:
                                      EdgeInsets.only(top: size.height * 0.015),
                                  child: Text(
                                    'Sign in'.toUpperCase(),
                                    style: TextStyle(
                                        fontSize: 20,
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold),
                                    textAlign: TextAlign.center,
                                  ),
                                )),
                            onPressed: () {
                              return validateController.onSignIn();
                            }),
                        Spacer(),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text("Don't have an account? "),
                            GestureDetector(
                                onTap: () {
                                  Get.to(SignUp());
                                },
                                child: Container(
                                  child: Text(
                                    'Sign Up',
                                    style:
                                        TextStyle(fontWeight: FontWeight.bold),
                                  ),
                                ))
                          ],
                        ),
                        SizedBox(height: 40)
                      ],
                    ),
                  ),
                ))
          ],
        ),
      ),
    );
  }
}
