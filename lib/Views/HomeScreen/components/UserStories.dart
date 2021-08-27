import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:scoialmedia/models/users.dart';
import 'StoryViewScreen.dart';
class UsersStory extends StatelessWidget {
  final Users user;
  final int index;
  const UsersStory({
    Key key,
    this.user,
    this.index,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return GestureDetector(
      onTap: () {
        Get.to(StoryView(
          showUser: user.story,
        ));
      },
      child: Container(
        height: size.height * 0.23,
        width: size.width * 0.40,
        child: Padding(
          padding: EdgeInsets.only(left: size.width * 0.03),
          child: Stack(children: [
            Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(20)),
                  image: DecorationImage(
                      fit: BoxFit.cover,
                      image: AssetImage(
                        user.story,
                      ))),
            ),
            Positioned(
              left: 5,
              bottom: 20,
              child: Container(
                padding: EdgeInsets.all(2),
                height: 45,
                width: 45,
                decoration: BoxDecoration(
                    border: Border.all(width: 2, color: Colors.purple[400]),
                    shape: BoxShape.circle,
                    boxShadow: [
                      BoxShadow(
                        offset: Offset(0, 10),
                        blurRadius: 30,
                        color: Colors.grey,
                      )
                    ]),
                child: ClipOval(
                  child: Image.asset(
                    user.image,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
            Positioned(
              bottom: 2,
              left: 2,
              child: Row(
                children: [
                  SizedBox(
                    width: 10,
                  ),
                  Container(
                    child: Text(
                      user.name,
                      style: TextStyle(
                          color: Colors.white, fontWeight: FontWeight.bold),
                    ),
                  ),
                  SizedBox(
                    width: 30,
                  ),
                  Text(
                    user.storytime,
                    style: TextStyle(
                        color: Colors.grey, fontWeight: FontWeight.w400),
                  ),
                ],
              ),
            ),
          ]),
        ),
      ),
    );
  }
}
