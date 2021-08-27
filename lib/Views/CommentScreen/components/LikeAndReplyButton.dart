import 'package:flutter/material.dart';
import 'package:fluttericon/entypo_icons.dart';
import 'package:fluttericon/typicons_icons.dart';
class LikeAndRepleButton extends StatefulWidget {
  const LikeAndRepleButton({
    Key key,
  }) : super(key: key);

  @override
  _LikeAndRepleButtonState createState() => _LikeAndRepleButtonState();
}

class _LikeAndRepleButtonState extends State<LikeAndRepleButton> {
  bool shows = false;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(
          width: 20,
        ),
        IconButton(
          icon: Icon(
            shows ? Icons.favorite : Icons.favorite_border_outlined,
            color: shows ? Colors.red : Colors.black,
          ),
          onPressed: () {
            setState(() {
              shows = !shows;
            });
          },
        ),
        Text('Like'),
        IconButton(
            icon: Icon(Entypo.direction,),
            onPressed: () {}),
        Text('Reply'),
      ],
    );
  }
}
