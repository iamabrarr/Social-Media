import 'dart:async';
import 'package:flutter/material.dart';
import 'package:fluttericon/typicons_icons.dart';
import 'package:scoialmedia/Views/BottomNavigationBar/BottomNavigationBar.dart';

class StoryView extends StatefulWidget {
  final String showUser;
  StoryView({@required this.showUser, Key key}) : super(key: key);
  @override
  _StoryViewState createState() => _StoryViewState();
}

class _StoryViewState extends State<StoryView> {
  void initState() {
    super.initState();
    Timer(Duration(seconds: 2), () {
      Navigator.pop(context);
      Navigator.push(context, MaterialPageRoute(builder: (context) => Home()));
    });
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.black,
      body: SingleChildScrollView(
          child: SizedBox(
        height: size.height,
        child: Center(
          child: Column(
            children: [
              Container(
                height: size.height * 0.90,
                width: size.width,
                child: Image.asset(widget.showUser),
              ),
              Spacer(),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Container(
                  height: size.height * 0.06,
                  width: size.width * 0.95,
                  decoration: BoxDecoration(
                    border: Border.all(width: 1, color: Colors.grey[700]),
                    borderRadius: BorderRadius.circular(30),
                    color: Colors.transparent,
                  ),
                  child: Padding(
                    padding: EdgeInsets.only(left: 20.0),
                    child: TextField(
                      decoration: InputDecoration(
                          hintText: 'Send message',
                          hintStyle: TextStyle(color: Colors.grey[700]),
                          border: InputBorder.none,
                          suffixIcon: IconButton(
                            icon: Icon(
                              Typicons.direction_outline,
                              color: Colors.grey[700],
                            ),
                            onPressed: () {},
                          )),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
            ],
          ),
        ),
      )),
    );
  }
}
