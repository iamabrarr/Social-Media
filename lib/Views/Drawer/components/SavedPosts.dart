import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:scoialmedia/Views/HomeScreen/components/PostCard.dart';
import 'package:scoialmedia/models/users.dart';
class SavedPost extends StatelessWidget {
  const SavedPost({Key key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
        appBar: AppBar(
            backgroundColor: Colors.white,
            elevation: 0,
            leading: IconButton(
                onPressed: () {
                  Get.back();
                },
                icon: Icon(
                  Icons.arrow_back,
                  color: Colors.black,
                ))),
        body: SingleChildScrollView(
          child: SafeArea(
              child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.0),
            child: Column(
              children: [
                ListView.builder(
                  itemCount: details.length,
                  shrinkWrap: true,
                  itemBuilder: (BuildContext context, int index) {
                    return PostCard(
                      users: details[index],
                      size: size,
                      index: index,
                    );
                  },
                )
              ],
            ),
          )),
        ));
  }
}
