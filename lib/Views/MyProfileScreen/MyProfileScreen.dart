import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:get/get.dart';
import 'package:scoialmedia/Views/EditProfileScreen/EditProfile.dart';
import 'package:scoialmedia/models/MyProfile.dart';
import 'components/Popularity.dart';
import 'components/Posts.dart';

class Profile extends StatelessWidget {
  const Profile({Key key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        brightness: Brightness.dark,
        centerTitle: true,
        title: Text(
          'Your Profile',
          style: TextStyle(color: Colors.black),
        ),
        backgroundColor: Colors.white,
        actions: [
          IconButton(
              icon: Icon(
                Icons.more_vert,
                color: Colors.black,
              ),
              onPressed: () {}),
        ],
        elevation: 0,
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 10,
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  width: 15,
                ),
                Container(
                  height: size.height * 0.13,
                  width: size.width * 0.27,
                  decoration: BoxDecoration(
                      // shape: BoxShape.circle,
                      borderRadius: BorderRadius.circular(15),
                      image: DecorationImage(
                          image: AssetImage(
                            profile1.image,
                          ),
                          fit: BoxFit.cover)),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 10, left: 10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        profile1.name,
                        style: TextStyle(fontWeight: FontWeight.w700),
                      ),
                      SizedBox(height: 5),
                      Row(
                        children: [
                          Text(
                            profile1.city + ',',
                            style: TextStyle(fontWeight: FontWeight.w400),
                          ),
                          Text(
                            profile1.country,
                            style: TextStyle(fontWeight: FontWeight.w400),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 23,
                      ),
                      Row(
                        children: [
                          Popularity(
                            detail: profile1.followers,
                            categories: 'Followers',
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Container(
                            height: 20,
                            width: 0.5,
                            color: Colors.grey,
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Popularity(
                            detail: profile1.uploads,
                            categories: 'Uploads',
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Container(
                            height: 20,
                            width: 0.5,
                            color: Colors.grey,
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Popularity(
                            detail: profile1.following,
                            categories: 'Following',
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20.0, top: 30),
              child: Container(
                  height: 50,
                  width: size.width * 0.90,
                  child: Text(profile1.bio)),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 26.0),
              child: GestureDetector(
                onTap: () {
                  Get.to(EditProfile());
                },
                child: Container(
                  height: 40,
                  width: size.width * 0.87,
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.grey[300]),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Center(
                    child: Text(
                      'Edit Profile',
                      style: TextStyle(fontWeight: FontWeight.w500),
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 5,
            ),
            StaggeredGridView.countBuilder(
              physics: NeverScrollableScrollPhysics(),
              crossAxisCount: 2,
              shrinkWrap: true,
              itemCount: postsdetails.length,
              itemBuilder: (BuildContext context, int index) {
                return Posts(gridposts: postsdetails[index], size: size);
              },
              staggeredTileBuilder: (index) => StaggeredTile.count(
                (index % 1 == 0) ? 1 : 1,
                (index % 2 == 0) ? 1 : 2,
              ),
            ),

            //////
            SizedBox(
              height: 20,
            ),
            // Row(
            //   children: [
            //     SizedBox(
            //       width: 15,
            //     ),
            //     Column(
            //       crossAxisAlignment: CrossAxisAlignment.start,
            //       children: [
            //         Container(
            //           height: size.height * 0.18,
            //           width: size.width * 0.92,
            //           decoration: BoxDecoration(
            //               borderRadius: BorderRadius.circular(20),
            //               image: DecorationImage(
            //                   image: AssetImage(profile1.post1),
            //                   fit: BoxFit.cover)),
            //         ),
            //         SizedBox(
            //           height: 20,
            //         ),
            //         Row(
            //           children: [
            //             Container(
            //               height: size.height * 0.18,
            //               width: size.width * 0.48,
            //               decoration: BoxDecoration(
            //                   borderRadius: BorderRadius.circular(20),
            //                   image: DecorationImage(
            //                       image: AssetImage(profile1.post2),
            //                       fit: BoxFit.cover)),
            //             ),
            //             SizedBox(
            //               width: 15,
            //             ),
            //             Container(
            //               height: size.height * 0.18,
            //               width: size.width * 0.40,
            //               decoration: BoxDecoration(
            //                   borderRadius: BorderRadius.circular(20),
            //                   image: DecorationImage(
            //                       image: AssetImage(profile1.post3),
            //                       fit: BoxFit.cover)),
            //             ),
            //           ],
            //         ),
            //         SizedBox(
            //           height: 20,
            //         ),
            //         Row(
            //           children: [
            //             Container(
            //               height: size.height * 0.18,
            //               width: size.width * 0.40,
            //               decoration: BoxDecoration(
            //                   borderRadius: BorderRadius.circular(20),
            //                   image: DecorationImage(
            //                       image: AssetImage(profile1.post4),
            //                       fit: BoxFit.cover)),
            //             ),
            //             SizedBox(
            //               width: 15,
            //             ),
            //             Container(
            //               height: size.height * 0.18,
            //               width: size.width * 0.48,
            //               decoration: BoxDecoration(
            //                   borderRadius: BorderRadius.circular(20),
            //                   image: DecorationImage(
            //                       image: AssetImage(profile1.post5),
            //                       fit: BoxFit.cover)),
            //             ),
            //           ],
            //         )
            //       ],
            //     )
            //   ],
            // ),
          ],
        ),
      ),
    );
  }
}
