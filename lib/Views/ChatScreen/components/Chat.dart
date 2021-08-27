import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:scoialmedia/Views/ChatScreen/components/UserChat.dart';
import 'package:scoialmedia/Views/CallScreen/CallScreen.dart';
import 'package:scoialmedia/models/message_model.dart';

class Chat extends StatefulWidget {
  final String showchatimage;
  final bool showchatstory;
  final String showchatname;
  final int index;
  Chat({
    Key key,
    this.showchatimage,
    this.showchatstory,
    this.showchatname,
    this.index,
  }) : super(key: key);
  @override
  _ChatState createState() => _ChatState();
}

class _ChatState extends State<Chat> {
  TextEditingController chattext = TextEditingController();
  List<Widget> chatwidget = List();
  var index;
  @override
  Widget build(BuildContext context) {
    // String DateFormatedd = DateFormat('kk:mm:ss \n EEE d MMM').format(now);
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      bottomSheet: Padding(
        padding: EdgeInsets.only(
          left: 10,
          right: 10,
          bottom: 10,
        ),
        child: Container(
          height: size.height * 0.06,
          width: size.width * 0.95,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30),
            color: Colors.grey[300],
          ),
          child: Padding(
            padding: EdgeInsets.only(left: 20.0),
            child: TextField(
              controller: chattext,
              decoration: InputDecoration(
                  hintText: 'Message...',
                  hintStyle: TextStyle(
                      fontWeight: FontWeight.w300, color: Colors.grey[600]),
                  border: InputBorder.none,
                  suffixIcon: IconButton(
                    icon: Icon(
                      Icons.send,
                      color: Colors.purple[700],
                    ),
                    onPressed: () {
                      setState(() {
                        chatwidget.add(chatcontainer());
                      });
                    },
                  )),
            ),
          ),
        ),
      ),
      body: SafeArea(
          child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 5,
            ),
            Row(
              children: [
                IconButton(
                  icon: Icon(Icons.arrow_back),
                  onPressed: () {
                    Get.back();
                  },
                ),
                Container(
                  padding: EdgeInsets.all(2),
                  height: 40,
                  width: 40,
                  decoration: BoxDecoration(
                      border: Border.all(
                          width: 2,
                          color: widget.showchatstory
                              ? Colors.purple[400]
                              : Colors.transparent),
                      shape: BoxShape.circle,
                      boxShadow: [
                        BoxShadow(
                          blurRadius: 10,
                          spreadRadius: 0.5,
                          color: Colors.grey.withOpacity(0.5),
                        ),
                      ]),
                  child: CircleAvatar(
                    backgroundImage: AssetImage(
                      widget.showchatimage,
                    ),
                  ),
                ),
                SizedBox(
                  width: 5,
                ),
                Text(
                  widget.showchatname,
                  style: TextStyle(fontWeight: FontWeight.w500),
                ),
                Spacer(),
                IconButton(
                  icon: Icon(Icons.call_outlined),
                  onPressed: () {
                    Get.to(CallScreen(
                      showcallimage: widget.showchatimage,
                      showcallname: widget.showchatname,
                      showcallonline: widget.showchatstory,
                    ));
                  },
                ),
                IconButton(
                  icon: Icon(Icons.video_call_outlined),
                  onPressed: () {},
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Column(children: [
              userchats(
                chat: messages()[0],
              ),
              userchats(
                chat: messages()[1],
              ),
              userchats(
                chat: messages()[2],
              ),
            ]),
            ListView.builder(
              itemCount: chatwidget.length,
              shrinkWrap: true,
              itemBuilder: (BuildContext context, int index) {
                return chatwidget[index];
              },
            ),
          ],
        ),
      )),
    );
  }

  Widget chatcontainer() {
    DateTime now = DateTime.now();
    return Column(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        Padding(
          padding: EdgeInsets.only(left: 60.0, right: 10),
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(40),
              color: Colors.purple[700],
            ),
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 15),
              child: Text(
                chattext.text,
                style: TextStyle(color: Colors.white),
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
            "${now.hour.toString()} : ${now.minute.toString()}",
            style: TextStyle(fontSize: 10),
          ),
        ),
      ],
    );
  }
}
