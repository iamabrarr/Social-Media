import 'package:flutter/material.dart';

class detailsWithContainer extends StatelessWidget {
  const detailsWithContainer({
    Key key,
    @required this.size,
    this.title,
    this.titledetails,
  }) : super(key: key);
  final String title;
  final String titledetails;
  final Size size;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: TextStyle(color: Colors.grey[600]),
        ),
        SizedBox(
          height: 10,
        ),
        Text(
          titledetails,
          style: TextStyle(fontWeight: FontWeight.w400),
        ),
        SizedBox(
          height: 10,
        ),
        Container(
          height: 1,
          width: size.width * 0.90,
          color: Colors.black12,
        ),
        SizedBox(
          height: 20,
        ),
      ],
    );
  }
}
