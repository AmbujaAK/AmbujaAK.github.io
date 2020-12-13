import 'package:flutter/material.dart';
import 'package:my_personal_website/about/about_page.dart';
import 'package:my_personal_website/blog/app.dart';
import 'package:my_personal_website/contact/app.dart';
import 'package:my_personal_website/home/home_page.dart';
import 'package:my_personal_website/portfolio/app.dart';

Map<String, Widget Function(BuildContext)> kRoutes = {
  HomePage.id: (context) => HomePage(),
  AboutPage.id: (context) => AboutPage(),
  PortfolioPage.id: (context) => PortfolioPage(),
  Blog.id: (context) => Blog(),
  Contact.id: (context) => Contact(),
};
