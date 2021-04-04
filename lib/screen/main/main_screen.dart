import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_personal_website/controllers/MenuController.dart';
import 'package:my_personal_website/utils/constants.dart';
import 'components/header.dart';
import 'components/side_menu.dart';

class MainScreen extends StatelessWidget {
  final MenuController _controller = Get.put(MenuController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _controller.scaffoldkey,
      drawer: SideMenu(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Header(
              pageTitle: "Welcome to Our Blog",
              pageDescrption:
                  "Stay updated with the newest design and development stories, case studies, \nand insights shared by DesignDK Team.",
            ),
            Container(
              padding: EdgeInsets.all(kDefaultPadding),
              constraints: BoxConstraints(maxWidth: kMaxWidth),
              child: SafeArea(
                child: LayoutBuilder(
                  builder: (context, constraints) {
                    return Container(
                      child: Text('data'),
                    );
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
