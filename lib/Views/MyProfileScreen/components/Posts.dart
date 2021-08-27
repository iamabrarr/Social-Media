import 'package:flutter/material.dart';
import 'package:scoialmedia/models/MyProfile.dart';

class Posts extends StatelessWidget {
  const Posts({
    Key key,
    @required this.size,
    this.gridposts,
  }) : super(key: key);
  final Size size;
  final MyProfile gridposts;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 3, vertical: 3),
      child: Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            image: DecorationImage(
                image: AssetImage(gridposts.posts), fit: BoxFit.cover)),
      ),
    );
  }
}
