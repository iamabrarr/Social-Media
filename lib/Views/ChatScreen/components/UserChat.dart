import 'package:flutter/material.dart';
import 'package:scoialmedia/models/message_model.dart';

class userchats extends StatelessWidget {
  const userchats({
    Key key,
    this.chat,
  }) : super(key: key);
  final Message chat;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment:
          chat.sender ? CrossAxisAlignment.start : CrossAxisAlignment.end,
      children: [
        Padding(
          padding: chat.sender
              ? EdgeInsets.only(left: 10.0, right: 40)
              : EdgeInsets.only(left: 60.0, right: 10),
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(40),
              color: chat.sender ? Colors.grey[300] : Colors.purple[700],
            ),
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 15),
              child: Text(
                chat.text,
                style:
                    TextStyle(color: chat.sender ? Colors.black : Colors.white),
              ),
            ),
          ),
        ),
        SizedBox(
          height: 3,
        ),
        Padding(
          padding: EdgeInsets.only(left: 15, right: 15),
          child: Text(
            chat.time,
            style: TextStyle(fontSize: 10),
          ),
        ),
      ],
    );
  }
}
