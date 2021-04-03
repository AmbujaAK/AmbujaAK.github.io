import 'package:flutter/material.dart';
import 'package:my_personal_website/screen/home/home_avatar.dart';
import 'package:my_personal_website/screen/home/home_intro.dart';

class HomeBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: [
        Flexible(
          fit: FlexFit.loose,
          child: Container(
            margin: EdgeInsets.fromLTRB(32, 0, 32, 32),
            color: Colors.transparent,
            padding: EdgeInsets.all(64),
            child: Row(
              children: [
                HomeIntro(),
                HomeAvatar(),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
