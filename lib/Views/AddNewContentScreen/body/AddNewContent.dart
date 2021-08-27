import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:scoialmedia/Views/AddNewContentScreen/NewContentBody.dart';

class AddNewContent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
            icon: SvgPicture.asset('assets/Icons/back_arrow.svg'), onPressed: (){
              Navigator.pop(context);
            }),
      ),
      body: NewContentBody(),
    );
  }
}
