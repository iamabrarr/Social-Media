import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:scoialmedia/models/message_model.dart';

import 'Chat.dart';

class ChatMembers extends StatelessWidget {
  const ChatMembers({
    Key key,
    @required this.size,
    this.msg,
    this.index,
  }) : super(key: key);
  final int index;
  final Size size;
  final Message msg;
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: GestureDetector(
        onTap: () {
          Get.to(Chat(
            showchatimage: chats[index].image,
            showchatname: chats[index].name,
            showchatstory: chats[index].story,
          ));
        },
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 10,
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 7, left: 10),
                  child: Container(
                    padding: EdgeInsets.all(2),
                    height: 60,
                    width: 60,
                    decoration: BoxDecoration(
                        border: Border.all(
                            width: 2,
                            color: msg.story
                                ? Colors.purple[400]
                                : Colors.transparent),
                        shape: BoxShape.circle,
                        boxShadow: [
                          BoxShadow(
                            offset: Offset(0, 0),
                            blurRadius: 20,
                            color: Colors.grey[400],
                          )
                        ]),
                    child: CircleAvatar(
                      backgroundImage: AssetImage(
                        msg.image,
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Padding(
                          padding: EdgeInsets.only(top: 10),
                          child: Text(
                            msg.name,
                            style: TextStyle(fontWeight: FontWeight.w700),
                          ),
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Padding(
                          padding: EdgeInsets.only(top: 10),
                          child: Container(
                            height: 7,
                            width: 7,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: msg.unread ? Colors.blue : Colors.white,
                            ),
                          ),
                        )
                      ],
                    ),
                    SizedBox(height: 5),
                    Container(
                        height: 32,
                        width: size.width * 0.75,
                        child: Text(
                          msg.text,
                          style: TextStyle(
                              fontWeight: msg.unread
                                  ? FontWeight.w500
                                  : FontWeight.w300),
                        )),
                  ],
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
