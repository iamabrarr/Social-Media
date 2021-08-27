import 'package:flutter/material.dart';
import 'package:scoialmedia/models/message_model.dart';

import 'components/ChatMembers.dart';

class ChatScreen extends StatefulWidget {
  const ChatScreen({Key key}) : super(key: key);

  @override
  _ChatScreenState createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
        appBar: AppBar(
          brightness: Brightness.dark,
          backgroundColor: Colors.purple[700],
          centerTitle: true,
          title: Text('Inbox'),
        ),
        body: Column(
          children: [
            ListView.builder(
              itemCount: chats.length,
              shrinkWrap: true,
              itemBuilder: (BuildContext context, int index) {
                return ChatMembers(
                  msg: chats[index],
                  size: size,
                  index: index,
                );
              },
            ),
            SizedBox(
              height: 40,
            ),
          ],
        ));
  }
}
