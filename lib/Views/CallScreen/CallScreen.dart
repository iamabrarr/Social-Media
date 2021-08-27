import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:scoialmedia/models/message_model.dart';

class CallScreen extends StatelessWidget {
  final String showcallimage;
  final String showcallname;
  final bool showcallonline;
  const CallScreen({
    Key key,
    this.showcallimage,
    this.showcallname,
    this.showcallonline,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Column(
        children: [
          SizedBox(
            height: size.height * 0.30,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                height: 100,
                width: 100,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  image: DecorationImage(
                      image: AssetImage(showcallimage), fit: BoxFit.cover),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 20,
          ),
          Text(
            showcallname,
            style: TextStyle(fontSize: 30, fontWeight: FontWeight.w600),
          ),
          SizedBox(
            height: 20,
          ),
          Text(showcallonline ? 'Ringing...' : 'Calling...'),
          SizedBox(
            height: 50,
          ),
          Container(
            height: 70,
            width: 70,
            decoration:
                BoxDecoration(color: Colors.red, shape: BoxShape.circle),
            child: IconButton(
                onPressed: () {
                  Get.back();
                },
                icon: Icon(
                  Icons.call_end,
                  color: Colors.white,
                )),
          )
        ],
      ),
    );
  }
}
