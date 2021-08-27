import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:scoialmedia/Views/CommentScreen/components/LikeAndReplyButton.dart';
import 'package:scoialmedia/Views/HomeScreen/components/PostCard.dart';
import 'package:scoialmedia/models/users.dart';
class CommentsScreen extends StatefulWidget {
  const CommentsScreen({Key key}) : super(key: key);
  @override
  _CommentsScreenState createState() => _CommentsScreenState();
}

class _CommentsScreenState extends State<CommentsScreen> {
  bool shows = false;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text(
          'back',
          style: TextStyle(color: Colors.black, fontWeight: FontWeight.w300),
        ),
        leading: IconButton(
            icon: Icon(
              Icons.arrow_back,
              color: Colors.black,
            ),
            onPressed: () {
              Get.back();
            }),
        elevation: 0,
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
                height: size.height * 0.40,
                width: size.width * 0.99,
                child: Column(children: [
                  PostCard(users: user1, size: size),
                ])),
            SizedBox(
              height: 10,
            ),
            Row(
              children: [
                SizedBox(
                  width: 25,
                ),
                Stack(
                  children: [
                    Container(
                      height: size.height * 0.10,
                      width: size.width * 0.87,
                      decoration: BoxDecoration(
                          color: Colors.grey[300],
                          borderRadius: BorderRadius.only(
                              topRight: Radius.circular(20),
                              bottomLeft: Radius.circular(20),
                              bottomRight: Radius.circular(20))),
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(
                            left: 8,
                          ),
                          child: Container(
                            height: 35,
                            width: 35,
                            child: ClipOval(
                              child: Image.asset(
                                user4.image,
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left: 8.0),
                              child: Text(
                                user4.name,
                                style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.w600),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 8.0),
                              child: Text(
                                user4.posttime,
                                style: TextStyle(fontWeight: FontWeight.w300),
                              ),
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 8.0),
                              child: Text(
                                "you set a high bar with this one",
                                style: TextStyle(fontWeight: FontWeight.w400),
                              ),
                            )
                          ],
                        )
                      ],
                    )
                  ],
                ),
              ],
            ),
            LikeAndRepleButton(),
            Row(
              children: [
                SizedBox(
                  width: 70,
                ),
                Stack(
                  children: [
                    Container(
                      height: size.height * 0.10,
                      width: size.width * 0.73,
                      decoration: BoxDecoration(
                          color: Colors.grey[300],
                          borderRadius: BorderRadius.only(
                              topRight: Radius.circular(20),
                              bottomLeft: Radius.circular(20),
                              bottomRight: Radius.circular(20))),
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(
                            left: 8,
                          ),
                          child: Container(
                            height: 35,
                            width: 35,
                            child: ClipOval(
                              child: Image.asset(
                                user1.image,
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left: 8.0),
                              child: Text(
                                user1.name,
                                style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.w600),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 8.0),
                              child: Text(
                                user4.posttime,
                                style: TextStyle(fontWeight: FontWeight.w300),
                              ),
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 8.0),
                              child: Row(
                                children: [
                                  Text(
                                    "Thanks ",
                                    style:
                                        TextStyle(fontWeight: FontWeight.w400),
                                  ),
                                  Text(
                                    "@" + user4.name,
                                    style:
                                        TextStyle(fontWeight: FontWeight.w700),
                                  ),
                                ],
                              ),
                            )
                          ],
                        )
                      ],
                    )
                  ],
                ),
              ],
            ),
            Row(
              children: [
                SizedBox(width: 40),
                LikeAndRepleButton(),
              ],
            ),
            Row(
              children: [
                SizedBox(
                  width: 25,
                ),
                Stack(
                  children: [
                    Container(
                      height: size.height * 0.12,
                      width: size.width * 0.87,
                      decoration: BoxDecoration(
                          color: Colors.grey[300],
                          borderRadius: BorderRadius.only(
                              topRight: Radius.circular(20),
                              bottomLeft: Radius.circular(20),
                              bottomRight: Radius.circular(20))),
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(
                            left: 8,
                          ),
                          child: Container(
                            height: 35,
                            width: 35,
                            child: ClipOval(
                              child: Image.asset(
                                user3.image,
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left: 8.0),
                              child: Text(
                                user3.name,
                                style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.w600),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 8.0),
                              child: Text(
                                user4.posttime,
                                style: TextStyle(fontWeight: FontWeight.w300),
                              ),
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 8.0),
                              child: Text(
                                "You are so creative - I always love\ngetting your presprective on things",
                                style: TextStyle(fontWeight: FontWeight.w400),
                              ),
                            )
                          ],
                        )
                      ],
                    )
                  ],
                ),
              ],
            ),
            LikeAndRepleButton(),
          ],
        ),
      ),
    );
  }
}
