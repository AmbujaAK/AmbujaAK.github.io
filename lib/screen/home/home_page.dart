import 'package:flutter/material.dart';
import 'package:my_personal_website/screen/about/about_page.dart';
import 'package:my_personal_website/utils/constants.dart';
import 'package:my_personal_website/utils/responsive.dart';

import 'home_avatar.dart';
import 'home_intro.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: LayoutBuilder(
        builder: (context, constraints) {
          if (!Responsive.isMobile(context))
            return Column(
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Expanded(
                      child: HomeIntro(),
                    ),
                    if (!Responsive.isMobile(context))
                      SizedBox(width: kDefaultPadding),
                    Expanded(
                      child: HomeAvatar(),
                    ),
                  ],
                ),
                AboutPage(),
              ],
            );
          else
            return Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                HomeAvatar(),
                // SizedBox(height: kDefaultPadding),
                HomeIntro(),
              ],
            );
        },
      ),
    );
  }
}
