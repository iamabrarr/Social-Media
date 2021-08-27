import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class NewContentBody extends StatefulWidget {
  @override
  _NewContentBodyState createState() => _NewContentBodyState();
}

class _NewContentBodyState extends State<NewContentBody> {
  File file;
  void pickImage() async {
    PickedFile pickedFile =
        await ImagePicker().getImage(source: ImageSource.gallery);
    file = File(pickedFile.path);
  }

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      SizedBox(height: 250),
      Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            height: 50,
            width: 200,
            child: OutlineButton(
                child: RichText(
                  text: TextSpan(children: [
                    TextSpan(
                        text: 'Add a new photo',
                        style: TextStyle(
                            color: Colors.purple[700],
                            fontWeight: FontWeight.bold)),
                    WidgetSpan(
                        child: Padding(
                      padding: EdgeInsets.only(left: 20),
                      child: Icon(
                        Icons.add_a_photo,
                        color: Colors.lightGreen,
                      ),
                    ))
                  ]),
                ),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10)),
                onPressed: () {
                  pickImage();
                }),
          ),
        ],
      ),
      SizedBox(height: 20),
      Container(
        height: 50,
        width: 200,
        child: OutlineButton(
            child: RichText(
              text: TextSpan(children: [
                TextSpan(
                    text: 'Add a new video',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.purple[700])),
                WidgetSpan(
                    child: Padding(
                  padding: EdgeInsets.only(left: 20),
                  child: Icon(
                    Icons.video_library,
                    color: Colors.blueAccent,
                  ),
                ))
              ]),
            ),
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
            onPressed: () {}),
      ),
    ]);
  }
}
