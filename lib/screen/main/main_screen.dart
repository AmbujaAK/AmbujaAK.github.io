import 'package:flutter/material.dart';
import 'package:my_personal_website/providers/navigation_provider.dart';
import 'package:my_personal_website/screen/about/about_page.dart';
import 'package:my_personal_website/screen/blog/blog_screen.dart';
import 'package:my_personal_website/screen/contact/contact_page.dart';
import 'package:my_personal_website/screen/home/home_page.dart';
import 'package:my_personal_website/screen/journey/journey_page.dart';
import 'package:my_personal_website/screen/portfolio/portfolio_page.dart';
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
                header: state.getMenuItems[state.getPageIndex]['header'],
                pageTitle: state.getMenuItems[state.getPageIndex]['pageTitle'],
                pageDescrption: state.getMenuItems[state.getPageIndex]
                    ['pageDescription'],
                hasMore: state.getMenuItems[state.getPageIndex]['link'] != '',
              ),
              Container(
                padding: EdgeInsets.all(kDefaultPadding),
                constraints: BoxConstraints(maxWidth: kMaxWidth),
                child: SafeArea(child: LayoutBuilder(
                  builder: (context, constraints) {
                    if (state.getPageIndex == 0) {
                      return HomePage();
                    } else if (state.getPageIndex == 1) {
                      return AboutPage();
                    } else if (state.getPageIndex == 2) {
                      return PortfolioPage();
                    } else if (state.getPageIndex == 3) {
                      return JourneyPage();
                    } else if (state.getPageIndex == 4) {
                      return BlogScreen();
                    } else if (state.getPageIndex == 5) {
                      return ContactPage();
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
