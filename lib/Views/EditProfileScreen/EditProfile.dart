import 'package:flutter/material.dart';
import 'package:fluttericon/typicons_icons.dart';
import 'package:get/get.dart';
import 'package:scoialmedia/models/MyProfile.dart';

import 'components/DetailsWithContainer.dart';
import 'components/EditProfileImage.dart';

class EditProfile extends StatelessWidget {
  const EditProfile({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
            onPressed: () {
              Get.back();
            },
            icon: Icon(
              Typicons.cancel_outline,
              color: Colors.black,
            )),
        title: Text(
          'Edit Profile',
          style: TextStyle(fontWeight: FontWeight.w600, color: Colors.black),
        ),
        actions: [
          IconButton(
              onPressed: () {
                Get.back();
              },
              icon: Icon(
                Icons.check,
                color: Colors.black,
                size: 30,
              )),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 20,
            ),
            EditProfileImage(),
            SizedBox(
              height: 20,
            ),
            Center(
              child: Text(
                "Change profile photo",
                style: TextStyle(
                    color: Colors.purple[700], fontWeight: FontWeight.w600),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            detailsWithContainer(
                title: 'Name', titledetails: profile1.name, size: size),
            detailsWithContainer(
                title: 'Email', titledetails: profile1.email, size: size),
            detailsWithContainer(
                title: 'Phone Number', titledetails: profile1.num, size: size),
            detailsWithContainer(
                title: 'Bio', titledetails: profile1.bio, size: size),
            Container(
              height: 0.5,
              width: size.width * 0.90,
              color: Colors.black12,
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              'Personal Information Settings',
              style: TextStyle(color: Colors.blue, fontSize: 20),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              height: 0.5,
              width: size.width * 0.90,
              color: Colors.black12,
            )
          ],
        ),
      ),
    );
  }
}
