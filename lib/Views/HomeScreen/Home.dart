import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:fluttericon/typicons_icons.dart';
import 'package:get/get.dart';
import 'package:scoialmedia/Views/Drawer/Drawer.dart';
import 'package:scoialmedia/models/users.dart';
import '../AddNewContentScreen/body/AddNewContent.dart';
import 'components/UserStories.dart';
import 'components/PostCard.dart';

class Body extends StatefulWidget {
  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      drawer: MainDrawer(),
      appBar: buildAppBar(),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Container(
                  height: 70,
                  width: 110,
                  child: Padding(
                    padding: const EdgeInsets.only(left: 20.0, top: 20),
                    child:
                        AnimatedTextKit(totalRepeatCount: 10, animatedTexts: [
                      TyperAnimatedText("Hello!",
                          textStyle:
                              TextStyle(color: Colors.grey, fontSize: 20)),
                      TyperAnimatedText("Abrar",
                          textStyle: TextStyle(
                              fontWeight: FontWeight.w500,
                              color: Colors.purple[700],
                              fontSize: 25)),
                    ]),
                  ),
                ),
                Spacer(),
                Padding(
                  padding: const EdgeInsets.only(right: 20.0),
                  child: Container(
                    height: 40,
                    width: 130,
                    child: OutlineButton(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15),
                        ),
                        child: Text(
                          'Add content  +',
                          style: TextStyle(
                              color: Colors.purple[700],
                              fontWeight: FontWeight.bold),
                        ),
                        onPressed: () {
                          Get.to(AddNewContent());
                        }),
                  ),
                )
              ],
            ),
            SizedBox(height: 10),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  SizedBox(
                    width: 5,
                  ),
                  ...List.generate(
                      details.length,
                      (index) => UsersStory(
                            user: details[index],
                            index: index,
                          )),
                  SizedBox(
                    width: 10,
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 15,
            ),
            ListView.builder(
              physics: NeverScrollableScrollPhysics(),
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
      ),
    );
  }
}

AppBar buildAppBar() {
  return AppBar(
    brightness: Brightness.dark,
    iconTheme: IconThemeData(color: Colors.purple[800]),
    elevation: 0,
    backgroundColor: Colors.transparent,
    actions: [
      IconButton(icon: Icon(Typicons.direction_outline), onPressed: () {}),
    ],
  );
}
