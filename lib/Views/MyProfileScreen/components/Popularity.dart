import 'package:flutter/material.dart';
class Popularity extends StatelessWidget {
  const Popularity({
    Key key,
    this.detail,
    this.categories,
  }) : super(key: key);
  final detail;
  final categories;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Column(
          children: [
            Text(
              detail,
              style: TextStyle(fontWeight: FontWeight.w600),
            ),
            Text(
              categories,
              style: TextStyle(fontWeight: FontWeight.w300),
            ),
          ],
        ),
      ],
    );
  }
}
