import 'package:flutter/material.dart';
import 'package:my_personal_website/utils/constants.dart';
import 'package:my_personal_website/utils/responsive.dart';

class HomeAvatar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(kDefaultPadding),
      width: Responsive.getMinDimen(context),
      height: Responsive.getMinDimen(context),
      decoration: BoxDecoration(
        // color: Colors.yellow,
        image: DecorationImage(
            fit: BoxFit.contain,
            image: new AssetImage('assets/images/home-right.png')),
      ),
    );
  }
}
