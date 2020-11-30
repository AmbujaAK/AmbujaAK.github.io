import 'package:flutter/material.dart';
import 'package:my_personal_website/appbar/custom_app_bar.dart';
import 'package:my_personal_website/home/home_avatar.dart';
import 'package:my_personal_website/home/home_intro.dart';

class HomePage extends StatefulWidget {
  static const String id = 'home';

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(preferredSize: Size(double.infinity, 64.0)),
      body: Container(
        padding: EdgeInsets.all(64),
        child: Row(
          children: [
            HomeIntro(),
            HomeAvatar(),
          ],
        ),
      ),
    );
  }
}
