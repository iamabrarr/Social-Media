import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:scoialmedia/Views/SignInScreen/SignIn.dart';
import 'package:scoialmedia/models/MyProfile.dart';
import 'components/PrivacyPolicy.dart';
import 'components/SavedPosts.dart';
class MainDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SafeArea(
      child: Drawer(
        child: Row(
          children: [
            SizedBox(
              width: 20,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 50,
                ),
                SizedBox(
                  height: 60,
                  width: 60,
                  child: ClipOval(
                    child: Image.asset(
                      profile1.image,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  profile1.name,
                  style: TextStyle(fontWeight: FontWeight.w600),
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  height: 1,
                  width: size.width * 0.70,
                  color: Colors.grey,
                ),
                SizedBox(
                  height: 30,
                ),
                Row(
                  children: [
                    Icon(Icons.email_outlined),
                    SizedBox(
                      width: 10,
                    ),
                    Text(profile1.email)
                  ],
                ),
                SizedBox(
                  height: 30,
                ),
                Row(
                  children: [
                    Icon(Icons.call_outlined),
                    SizedBox(
                      width: 10,
                    ),
                    Text(profile1.num),
                  ],
                ),
                SizedBox(
                  height: 30,
                ),
                GestureDetector(
                  onTap: () {
                    Get.to(SavedPost());
                  },
                  child: Container(
                    child: Row(
                      children: [
                        Icon(Icons.bookmark_add_outlined),
                        SizedBox(
                          width: 10,
                        ),
                        Text('Saved Posts'),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                Row(
                  children: [
                    Icon(Icons.settings_outlined),
                    SizedBox(
                      width: 10,
                    ),
                    Text('Settings'),
                  ],
                ),
                SizedBox(
                  height: 30,
                ),
                GestureDetector(
                  onTap: () {
                    Get.to(Privacy());
                  },
                  child: Container(
                    child: Row(
                      children: [
                        Icon(Icons.privacy_tip_outlined),
                        SizedBox(
                          width: 10,
                        ),
                        Text('Privacy Policy'),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => SignIn()));
                  },
                  child: Row(
                    children: [
                      Icon(Icons.logout_outlined),
                      SizedBox(
                        width: 10,
                      ),
                      Text('Logout'),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
