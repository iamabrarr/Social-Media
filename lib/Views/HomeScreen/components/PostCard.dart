import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:scoialmedia/Views/CommentScreen/CommentsScreen.dart';
import 'package:scoialmedia/models/users.dart';

import 'PostView.dart';
class PostCard extends StatefulWidget {
  const PostCard({
    Key key,
    @required this.size,
    this.users,
    this.index,
  }) : super(key: key);
  final Users users;
  final Size size;
  final int index;
  @override
  _PostCardState createState() => _PostCardState();
}

class _PostCardState extends State<PostCard> {
  bool liked = false;
  bool saved = false;
  _pressed() {
    setState(() {
      liked = !liked;
    });
  }
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
          height: widget.size.height * 0.40,
          width: widget.size.width,
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SizedBox(
                    width: 20,
                  ),
                  Container(
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
                        widget.users.image,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Text(widget.users.name,
                      style: TextStyle(fontWeight: FontWeight.w600)),
                  SizedBox(
                    width: 5,
                  ),
                  Text(
                    widget.users.posttime,
                    style: TextStyle(
                        fontSize: 12,
                        color: Colors.grey,
                        fontWeight: FontWeight.w400),
                  ),
                  Spacer(),
                  IconButton(icon: Icon(Icons.more_vert), onPressed: () {}),
                ],
              ),
              SizedBox(
                height: 5,
              ),
              GestureDetector(
                onTap: () {
                  Get.to(PostView(
                    showpost: widget.users.post,
                  ));
                },
                child: Container(
                  height: widget.size.height * 0.26,
                  width: widget.size.width * 0.90,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      image: DecorationImage(
                          image: AssetImage(
                            widget.users.post,
                          ),
                          fit: BoxFit.cover)),
                ),
              ),
              SizedBox(
                height: 5,
              ),
              Row(
                children: [
                  SizedBox(
                    width: 8,
                  ),
                  IconButton(
                      icon: Icon(
                        liked ? Icons.favorite : Icons.favorite_outline,
                        color: liked ? Colors.red : Colors.black,
                      ),
                      onPressed: () => _pressed()),
                  IconButton(
                      icon: Icon(
                        MdiIcons.chatOutline,
                      ),
                      onPressed: () {
                        Get.to(CommentsScreen());
                      }),
                  IconButton(
                      icon: Icon(
                        Icons.share_outlined,
                      ),
                      onPressed: () {}),
                  Spacer(),
                  IconButton(
                      icon: Icon(
                        saved ? MdiIcons.bookmark : MdiIcons.bookmarkOutline,
                        color: saved ? Colors.black : Colors.black,
                      ),
                      onPressed: () {
                        setState(() {
                          saved = !saved;
                        });
                      }),
                ],
              )
            ],
          )),
    );
  }
}
