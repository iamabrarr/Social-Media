import 'package:flutter/material.dart';
import 'package:scoialmedia/models/MyProfile.dart';

class EditProfileImage extends StatelessWidget {
  const EditProfileImage({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Stack(
          children: [
            Container(
              height: 120,
              width: 120,
              child: ClipOval(
                child: Image.asset(
                  profile1.image,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Positioned(
                bottom: 0,
                right: 0,
                child: Container(
                  height: 35,
                  width: 35,
                  decoration: BoxDecoration(
                      shape: BoxShape.circle, color: Colors.purple[700]),
                  child: Icon(
                    Icons.camera_alt,
                    color: Colors.white,
                    size: 17,
                  ),
                ))
          ],
        ),
      ],
    );
  }
}
