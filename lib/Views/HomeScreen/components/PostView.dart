import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:scoialmedia/models/users.dart';

class PostView extends StatelessWidget {
  final String showpost;
  const PostView({Key key, this.showpost}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.white,
          leading: IconButton(
            icon: Icon(
              Icons.arrow_back,
              color: Colors.black,
            ),
            onPressed: () {
              Get.back();
            },
          ),
        ),
        body: SingleChildScrollView(
            child: SizedBox(
                height: size.height,
                child: Center(
                    child: Column(children: [
                  Container(
                    height: size.height * 0.8,
                    width: size.width,
                    child: Image.asset(showpost),
                  ),
                ])))));
  }
}
