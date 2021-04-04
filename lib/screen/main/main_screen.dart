import 'package:flutter/material.dart';
import 'package:my_personal_website/providers/navigation_provider.dart';
import 'package:my_personal_website/screen/blog/blog_screen.dart';
import 'package:my_personal_website/utils/constants.dart';
import 'package:provider/provider.dart';
import 'components/header.dart';
import 'components/side_menu.dart';

class MainScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer<NavigationProvider>(
      builder: (_, state, __) => Scaffold(
        key: state.scaffoldkey,
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
                child: SafeArea(child: LayoutBuilder(
                  builder: (context, constraints) {
                    if (state.getPageIndex == 0)
                      return BlogScreen();
                    else if (state.getPageIndex == 1) {
                      return Container(
                        height: 400,
                        width: double.infinity,
                        color: Colors.yellow,
                      );
                    } else if (state.getPageIndex == 2) {
                      return Container(
                        height: 400,
                        width: double.infinity,
                        color: Colors.yellow,
                      );
                    } else if (state.getPageIndex == 3) {
                      return Container(
                        height: 400,
                        width: double.infinity,
                        color: Colors.yellow,
                      );
                    } else if (state.getPageIndex == 4) {
                      return Container(
                        height: 400,
                        width: double.infinity,
                        color: Colors.yellow,
                      );
                    } else if (state.getPageIndex == 5) {
                      return Container(
                        height: 400,
                        width: double.infinity,
                        color: Colors.yellow,
                      );
                    } else {
                      return Container(color: Colors.red);
                    }
                  },
                )),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
